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

#define USART_BUFFER_SIZE 256

#define USART3_TX_DMA DMA1
#define USART3_TX_DMAC DMA_CHANNEL2
#define USART3_RX_DMAC DMA_CHANNEL3

#define USART1_DMA DMA1
#define USART1_TX_DMAC DMA_CHANNEL4
#define USART1_RX_DMAC DMA_CHANNEL5

#define USART2_DMA DMA1
#define USART2_TX_DMAC DMA_CHANNEL7
#define USART2_RX_DMAC DMA_CHANNEL6

#define UART4_DMA DMA1
#define UART4_TX_DMAC DMA_CHANNEL5
#define UART4_RX_DMAC DMA_CHANNEL3

struct UsartBuffer
{
       volatile uint16_t    m_get_idx;
       volatile uint16_t    m_put_idx;
                uint8_t     m_entry[ USART_BUFFER_SIZE ];

};

struct Usart {
    uint32_t usart;
    uint32_t dma;
    uint32_t dma_tx_channel;
    uint32_t dma_rx_channel;
    
    struct UsartBuffer tx_buffer;
    struct UsartBuffer rx_buffer;
    uint8_t dma_rx_buf[64];
    uint8_t dma_tx_buf[64];
    uint8_t dma_last_idx;
};

void usart_setup(struct Usart* priv, uint32_t baudrate);

int usart_write(struct Usart* priv, uint8_t* buffer, size_t n);
int usart_read(struct Usart* priv, uint8_t* buffer, size_t n);

int usart_rx_avail(struct Usart* priv);
int usart_tx_avail(struct Usart* priv);
