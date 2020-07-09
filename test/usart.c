/*
 * This file is part of the libopencm3 project.
 *
 * Copyright (C) 2009 Uwe Hermann <uwe@hermann-uwe.de>,
 * Copyright (C) 2011 Piotr Esden-Tempski <piotr@esden.net>
 *
 * This library is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this library.  If not, see <http://www.gnu.org/licenses/>.
 */

#include "stm32-slcan.h"
#include <libopencm3/stm32/dma.h>


int _write(int file, char *ptr, int len);
static void dma_read(void);

static void ring_init(struct ring *ring, uint8_t * buf, ring_size_t size) {
	ring->data = buf;
	ring->size = size;
	ring->begin = 0;
	ring->end = 0;
}

int32_t ring_write_ch(struct ring *ring, uint8_t ch) {
	if (((ring->end + 1) % ring->size) != ring->begin) {
		ring->data[ring->end++] = ch;
		ring->end %= ring->size;
		return (uint32_t) ch;
	}
	return -1;
}

int32_t ring_write(struct ring *ring, uint8_t * data, ring_size_t size) {
	int32_t i;

	for (i = 0; i < size; i++) {
		if (ring_write_ch(ring, data[i]) < 0)
			return -i;
	}
	return i;
}

int32_t ring_read_ch(struct ring *ring, uint8_t * ch) {
	int32_t ret = -1;

	if (ring->begin != ring->end) {
		ret = ring->data[ring->begin++];
		ring->begin %= ring->size;
		if (ch)
			*ch = ret;
	}
	return ret;
}

int32_t ring_bytes_free(const struct ring *rb)
{
    if (rb->end >= rb->begin)
        return BUFFER_SIZE - (rb->end - rb->begin);
    else
        return rb->begin - rb->end - 1;
}

struct ring output_ring;
struct ring input_ring;
uint8_t output_ring_buffer[BUFFER_SIZE];
uint8_t input_ring_buffer[BUFFER_SIZE];

void usart_setup(struct Usart* priv, uint32_t ) {
	/* Initialize output ring buffer. */
	ring_init(&output_ring, output_ring_buffer, BUFFER_SIZE);
	ring_init(&input_ring, input_ring_buffer, BUFFER_SIZE);

	/* Enable the USART2 interrupt. */
	nvic_enable_irq(NVIC_USART2_IRQ);

	/* Setup GPIO pin GPIO_USART2_TX on GPIO port A for transmit. */
	gpio_set_mode(GPIOA, GPIO_MODE_OUTPUT_50_MHZ,
			GPIO_CNF_OUTPUT_ALTFN_PUSHPULL, GPIO_USART2_TX);

	/* Setup GPIO pin GPIO_USART2_RX on GPIO port A for receive. */
	gpio_set_mode(GPIOA, GPIO_MODE_INPUT, GPIO_CNF_INPUT_FLOAT, GPIO_USART2_RX);

	/* Setup UART parameters. */
	usart_set_baudrate(priv->usart, USART2_SPEED);
	usart_set_databits(priv->usart, 8);
	usart_set_stopbits(priv->usart, USART_STOPBITS_1);
	usart_set_parity(priv->usart, USART_PARITY_NONE);
	/* TODO use hardware handshaking */
	usart_set_flow_control(priv->usart, USART_FLOWCONTROL_NONE);
	usart_set_mode(priv->usart, USART_MODE_TX_RX);

	/* Enable USART2 Receive interrupt. */
	USART_CR1(priv->usart) |= USART_CR1_RXNEIE;

	/* Finally enable the USART. */
	usart_enable(priv->usart);

	dma_read();
}

uint8_t dma_rx_buf[1024];
volatile uint32_t dma_last_rx_poll = 0;

void dma_rx_poll(void) {
	uint32_t n = sizeof(dma_rx_buf) - dma_get_number_of_data(DMA1, DMA_CHANNEL6);
	int to_read = (n-dma_last_rx_poll);
	if(to_read < 0) {
		for(int i = dma_last_rx_poll; i < sizeof(dma_rx_buf); i++) {
			ring_write_ch(&input_ring, dma_rx_buf[i % sizeof(dma_rx_buf)]);
		}
		to_read = 0;
		n = 0;

	}
	if(to_read) {
		for(int i = dma_last_rx_poll; i < dma_last_rx_poll+to_read; i++) {
			ring_write_ch(&input_ring, dma_rx_buf[i % sizeof(dma_rx_buf)]);
		}
	}
	dma_last_rx_poll = n;
}



static void dma_rx_init(struct Usart* priv)
{
	/* Reset DMA channel*/
	dma_channel_reset(priv->dma, priv->dma_rx_channel);

	dma_set_peripheral_address(priv->dma, priv->dma_rx_channel, (uint32_t)USART_DR(priv->usart));
	dma_set_memory_address(priv->dma, priv->dma_rx_channel, (uint32_t)priv->dma_rx_buf);
	dma_set_number_of_data(priv->dma, priv->dma_rx_channel, sizeof(priv->dma_rx_buf));
	dma_set_read_from_peripheral(priv->dma, priv->dma_rx_channel);
	dma_enable_memory_increment_mode(priv->dma, priv->dma_rx_channel);
	dma_enable_circular_mode(priv->dma, priv->dma_rx_channel);
	dma_set_peripheral_size(priv->dma, priv->dma_rx_channel, DMA_CCR_PSIZE_8BIT);
	dma_set_memory_size(priv->dma, priv->dma_rx_channel, DMA_CCR_MSIZE_8BIT);
	dma_set_priority(priv->dma, priv->dma_rx_channel, DMA_CCR_PL_HIGH);

	//dma_enable_transfer_complete_interrupt(DMA1, priv->dma_rx_channel);

	dma_enable_channel(priv->dma, priv->dma_rx_channel);

    usart_enable_rx_dma(priv->usart);
}


static void usart_isr(struct Usart* priv) {
	uint8_t c;

	volatile uint32_t sr = USART_SR(priv->usart);
	volatile uint32_t cr1 = USART_CR1(priv->usart);


	/* Check if we were called because of TXE. */
	if (((sr & USART_SR_TXE) != 0)) {

		volatile int32_t data;

		//data = ring_read_ch(&output_ring, NULL);

		if (data == -1) {
			/* Disable the TXE interrupt, it's no longer needed. */
			USART_CR1(priv->usart) &= ~USART_CR1_TXEIE;
		} else {
			/* Put data into the transmit register. */
			usart_send(priv->usart, data);
		}
	}
}

int _write(int file, char *ptr, int len) {
	int ret;

	if (file == 1) {
		ret = ring_write(&output_ring, (uint8_t *) ptr, len);
		if (ret < 0)
			ret = -ret;
		USART_CR1(USART2) |= USART_CR1_TXEIE;
		return ret;
	}
	errno = EIO;
	return -1;
}

uint8_t uart_read_blocking() {
	int32_t ret;
	uint8_t c;
	do {
		dma_rx_poll();
		ret = ring_read_ch(&input_ring, &c);
	} while(ret == -1);
	return c;
}
