EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L BLDC-driver-rescue:NCP81151-userdvc U1
U 1 1 5EE83B4A
P 8600 1850
F 0 "U1" H 8575 1865 50  0000 C CNN
F 1 "NCP81151" H 8575 1774 50  0000 C CNN
F 2 "Package_DFN_QFN:DFN-8-1EP_2x2mm_P0.5mm_EP0.9x1.5mm" H 8600 1850 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2355113.pdf" H 8600 1850 50  0001 C CNN
	1    8600 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5EE85449
P 8150 2500
F 0 "#PWR0101" H 8150 2250 50  0001 C CNN
F 1 "GND" H 8155 2327 50  0000 C CNN
F 2 "" H 8150 2500 50  0001 C CNN
F 3 "" H 8150 2500 50  0001 C CNN
	1    8150 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5EE8612C
P 9150 2000
F 0 "C1" V 8921 2000 50  0000 C CNN
F 1 "100nF" V 9012 2000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9150 2000 50  0001 C CNN
F 3 "~" H 9150 2000 50  0001 C CNN
	1    9150 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	9000 2100 9000 2000
Wire Wire Line
	9000 2000 9050 2000
Wire Wire Line
	9000 2350 9250 2350
Wire Wire Line
	9250 2350 9250 2000
Wire Wire Line
	9000 2200 9500 2200
Wire Wire Line
	9800 2600 9800 2500
Wire Wire Line
	9000 2500 9250 2500
Wire Wire Line
	9250 2500 9250 2800
Wire Wire Line
	9250 2800 9500 2800
Wire Wire Line
	9250 2350 9500 2350
Wire Wire Line
	9500 2350 9500 2500
Wire Wire Line
	9500 2500 9800 2500
Connection ~ 9250 2350
Connection ~ 9800 2500
Wire Wire Line
	9800 2500 9800 2400
$Comp
L power:GND #PWR0102
U 1 1 5EE8953F
P 9800 3150
F 0 "#PWR0102" H 9800 2900 50  0001 C CNN
F 1 "GND" H 9805 2977 50  0000 C CNN
F 2 "" H 9800 3150 50  0001 C CNN
F 3 "" H 9800 3150 50  0001 C CNN
	1    9800 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR0103
U 1 1 5EE89B23
P 9800 1450
F 0 "#PWR0103" H 9800 1300 50  0001 C CNN
F 1 "+24V" H 9815 1623 50  0000 C CNN
F 2 "" H 9800 1450 50  0001 C CNN
F 3 "" H 9800 1450 50  0001 C CNN
	1    9800 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 1450 9800 1500
Wire Wire Line
	9800 3150 9800 3000
$Comp
L power:+5V #PWR0104
U 1 1 5EE8B1BC
P 8000 1900
F 0 "#PWR0104" H 8000 1750 50  0001 C CNN
F 1 "+5V" H 8015 2073 50  0000 C CNN
F 2 "" H 8000 1900 50  0001 C CNN
F 3 "" H 8000 1900 50  0001 C CNN
	1    8000 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1900 8000 2100
Wire Wire Line
	8000 2100 8150 2100
$Comp
L Device:C_Small C2
U 1 1 5EE8BA1A
P 10150 1600
F 0 "C2" H 10350 1650 50  0000 R CNN
F 1 "4.7uF" H 10350 1500 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 10150 1600 50  0001 C CNN
F 3 "~" H 10150 1600 50  0001 C CNN
	1    10150 1600
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5EE8C1E2
P 10150 1700
F 0 "#PWR0105" H 10150 1450 50  0001 C CNN
F 1 "GND" H 10155 1527 50  0000 C CNN
F 2 "" H 10150 1700 50  0001 C CNN
F 3 "" H 10150 1700 50  0001 C CNN
	1    10150 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 1500 9800 1500
Connection ~ 9800 1500
$Comp
L power:GND #PWR0106
U 1 1 5EE8D549
P 10350 1700
F 0 "#PWR0106" H 10350 1450 50  0001 C CNN
F 1 "GND" H 10355 1527 50  0000 C CNN
F 2 "" H 10350 1700 50  0001 C CNN
F 3 "" H 10350 1700 50  0001 C CNN
	1    10350 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 1500 10150 1500
Connection ~ 10150 1500
Text Label 10000 2500 0    50   ~ 0
PH_A
$Comp
L Device:C_Small C4
U 1 1 5EE8DE22
P 7850 2100
F 0 "C4" V 7950 2200 50  0000 R CNN
F 1 "4.7uF" V 7950 2050 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7850 2100 50  0001 C CNN
F 3 "~" H 7850 2100 50  0001 C CNN
	1    7850 2100
	0    1    -1   0   
$EndComp
Wire Wire Line
	7950 2100 8000 2100
Connection ~ 8000 2100
$Comp
L power:GND #PWR0107
U 1 1 5EE8F89C
P 7700 2100
F 0 "#PWR0107" H 7700 1850 50  0001 C CNN
F 1 "GND" H 7705 1927 50  0000 C CNN
F 2 "" H 7700 2100 50  0001 C CNN
F 3 "" H 7700 2100 50  0001 C CNN
	1    7700 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 2100 7750 2100
Text Label 9050 2200 0    50   ~ 0
HG_A
Text Label 9050 2500 0    50   ~ 0
LG_A
$Comp
L BLDC-driver-rescue:NCP81151-userdvc U3
U 1 1 5EE90B06
P 8700 4650
F 0 "U3" H 8675 4665 50  0000 C CNN
F 1 "NCP81151" H 8675 4574 50  0000 C CNN
F 2 "Package_DFN_QFN:DFN-8-1EP_2x2mm_P0.5mm_EP0.9x1.5mm" H 8700 4650 50  0001 C CNN
F 3 "" H 8700 4650 50  0001 C CNN
	1    8700 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5EE90B10
P 8250 5300
F 0 "#PWR0109" H 8250 5050 50  0001 C CNN
F 1 "GND" H 8255 5127 50  0000 C CNN
F 2 "" H 8250 5300 50  0001 C CNN
F 3 "" H 8250 5300 50  0001 C CNN
	1    8250 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C10
U 1 1 5EE90B1A
P 9250 4800
F 0 "C10" V 9021 4800 50  0000 C CNN
F 1 "100nF" V 9112 4800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9250 4800 50  0001 C CNN
F 3 "~" H 9250 4800 50  0001 C CNN
	1    9250 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	9100 4900 9100 4800
Wire Wire Line
	9100 4800 9150 4800
Wire Wire Line
	9100 5150 9350 5150
Wire Wire Line
	9350 5150 9350 4800
Wire Wire Line
	9100 5000 9600 5000
Wire Wire Line
	9900 5400 9900 5300
Wire Wire Line
	9100 5300 9350 5300
Wire Wire Line
	9350 5300 9350 5600
Wire Wire Line
	9350 5600 9600 5600
Wire Wire Line
	9350 5150 9600 5150
Wire Wire Line
	9600 5150 9600 5300
Wire Wire Line
	9600 5300 9900 5300
Connection ~ 9350 5150
Connection ~ 9900 5300
Wire Wire Line
	9900 5300 9900 5200
$Comp
L power:GND #PWR0110
U 1 1 5EE90B3D
P 9900 5950
F 0 "#PWR0110" H 9900 5700 50  0001 C CNN
F 1 "GND" H 9905 5777 50  0000 C CNN
F 2 "" H 9900 5950 50  0001 C CNN
F 3 "" H 9900 5950 50  0001 C CNN
	1    9900 5950
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR0111
U 1 1 5EE90B47
P 9900 4250
F 0 "#PWR0111" H 9900 4100 50  0001 C CNN
F 1 "+24V" H 9915 4423 50  0000 C CNN
F 2 "" H 9900 4250 50  0001 C CNN
F 3 "" H 9900 4250 50  0001 C CNN
	1    9900 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 4250 9900 4300
Wire Wire Line
	9900 5950 9900 5800
$Comp
L power:+5V #PWR0112
U 1 1 5EE90B53
P 8100 4700
F 0 "#PWR0112" H 8100 4550 50  0001 C CNN
F 1 "+5V" H 8115 4873 50  0000 C CNN
F 2 "" H 8100 4700 50  0001 C CNN
F 3 "" H 8100 4700 50  0001 C CNN
	1    8100 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 4700 8100 4900
Wire Wire Line
	8100 4900 8250 4900
$Comp
L power:GND #PWR0113
U 1 1 5EE90B69
P 10250 4500
F 0 "#PWR0113" H 10250 4250 50  0001 C CNN
F 1 "GND" H 10255 4327 50  0000 C CNN
F 2 "" H 10250 4500 50  0001 C CNN
F 3 "" H 10250 4500 50  0001 C CNN
	1    10250 4500
	1    0    0    -1  
$EndComp
Connection ~ 9900 4300
$Comp
L power:GND #PWR0114
U 1 1 5EE90B7F
P 10450 4500
F 0 "#PWR0114" H 10450 4250 50  0001 C CNN
F 1 "GND" H 10455 4327 50  0000 C CNN
F 2 "" H 10450 4500 50  0001 C CNN
F 3 "" H 10450 4500 50  0001 C CNN
	1    10450 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 5EE90B8C
P 7950 4900
F 0 "C9" V 8050 5000 50  0000 R CNN
F 1 "4.7uF" V 8050 4850 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7950 4900 50  0001 C CNN
F 3 "~" H 7950 4900 50  0001 C CNN
	1    7950 4900
	0    1    -1   0   
$EndComp
Wire Wire Line
	8050 4900 8100 4900
Connection ~ 8100 4900
$Comp
L power:GND #PWR0115
U 1 1 5EE90B98
P 7800 4900
F 0 "#PWR0115" H 7800 4650 50  0001 C CNN
F 1 "GND" H 7805 4727 50  0000 C CNN
F 2 "" H 7800 4900 50  0001 C CNN
F 3 "" H 7800 4900 50  0001 C CNN
	1    7800 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 4900 7850 4900
Text Label 9150 5000 0    50   ~ 0
HG_B
Text Label 9150 5300 0    50   ~ 0
LG_B
$Comp
L BLDC-driver-rescue:NCP81151-userdvc U2
U 1 1 5EEA95DF
P 4500 5550
F 0 "U2" H 4475 5565 50  0000 C CNN
F 1 "NCP81151" H 4475 5474 50  0000 C CNN
F 2 "Package_DFN_QFN:DFN-8-1EP_2x2mm_P0.5mm_EP0.9x1.5mm" H 4500 5550 50  0001 C CNN
F 3 "" H 4500 5550 50  0001 C CNN
	1    4500 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5EEA95E9
P 4050 6200
F 0 "#PWR0117" H 4050 5950 50  0001 C CNN
F 1 "GND" H 4055 6027 50  0000 C CNN
F 2 "" H 4050 6200 50  0001 C CNN
F 3 "" H 4050 6200 50  0001 C CNN
	1    4050 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5EEA95F3
P 5050 5700
F 0 "C6" V 4821 5700 50  0000 C CNN
F 1 "100nF" V 4912 5700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5050 5700 50  0001 C CNN
F 3 "~" H 5050 5700 50  0001 C CNN
	1    5050 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 5800 4900 5700
Wire Wire Line
	4900 5700 4950 5700
Wire Wire Line
	4900 6050 5150 6050
Wire Wire Line
	5150 6050 5150 5700
Wire Wire Line
	4900 5900 5400 5900
Wire Wire Line
	5700 6300 5700 6200
Wire Wire Line
	4900 6200 5150 6200
Wire Wire Line
	5150 6200 5150 6500
Wire Wire Line
	5150 6500 5400 6500
Wire Wire Line
	5150 6050 5400 6050
Wire Wire Line
	5400 6050 5400 6200
Wire Wire Line
	5400 6200 5700 6200
Connection ~ 5150 6050
Connection ~ 5700 6200
Wire Wire Line
	5700 6200 5700 6100
$Comp
L power:GND #PWR0118
U 1 1 5EEA9616
P 5700 6850
F 0 "#PWR0118" H 5700 6600 50  0001 C CNN
F 1 "GND" H 5705 6677 50  0000 C CNN
F 2 "" H 5700 6850 50  0001 C CNN
F 3 "" H 5700 6850 50  0001 C CNN
	1    5700 6850
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR0119
U 1 1 5EEA9620
P 5700 5150
F 0 "#PWR0119" H 5700 5000 50  0001 C CNN
F 1 "+24V" H 5715 5323 50  0000 C CNN
F 2 "" H 5700 5150 50  0001 C CNN
F 3 "" H 5700 5150 50  0001 C CNN
	1    5700 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 5150 5700 5200
Wire Wire Line
	5700 6850 5700 6700
$Comp
L power:+5V #PWR0120
U 1 1 5EEA962C
P 3900 5600
F 0 "#PWR0120" H 3900 5450 50  0001 C CNN
F 1 "+5V" H 3915 5773 50  0000 C CNN
F 2 "" H 3900 5600 50  0001 C CNN
F 3 "" H 3900 5600 50  0001 C CNN
	1    3900 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 5600 3900 5800
Wire Wire Line
	3900 5800 4050 5800
$Comp
L power:GND #PWR0121
U 1 1 5EEA9642
P 6050 5400
F 0 "#PWR0121" H 6050 5150 50  0001 C CNN
F 1 "GND" H 6055 5227 50  0000 C CNN
F 2 "" H 6050 5400 50  0001 C CNN
F 3 "" H 6050 5400 50  0001 C CNN
	1    6050 5400
	1    0    0    -1  
$EndComp
Connection ~ 5700 5200
$Comp
L power:GND #PWR0122
U 1 1 5EEA9658
P 6250 5400
F 0 "#PWR0122" H 6250 5150 50  0001 C CNN
F 1 "GND" H 6255 5227 50  0000 C CNN
F 2 "" H 6250 5400 50  0001 C CNN
F 3 "" H 6250 5400 50  0001 C CNN
	1    6250 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5EEA9665
P 3750 5800
F 0 "C5" V 3850 5900 50  0000 R CNN
F 1 "4.7uF" V 3850 5750 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3750 5800 50  0001 C CNN
F 3 "~" H 3750 5800 50  0001 C CNN
	1    3750 5800
	0    1    -1   0   
$EndComp
Wire Wire Line
	3850 5800 3900 5800
Connection ~ 3900 5800
$Comp
L power:GND #PWR0123
U 1 1 5EEA9671
P 3600 5800
F 0 "#PWR0123" H 3600 5550 50  0001 C CNN
F 1 "GND" H 3605 5627 50  0000 C CNN
F 2 "" H 3600 5800 50  0001 C CNN
F 3 "" H 3600 5800 50  0001 C CNN
	1    3600 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 5800 3650 5800
Text Label 4950 5900 0    50   ~ 0
HG_C
Text Label 4950 6200 0    50   ~ 0
LG_C
Wire Wire Line
	9900 4300 9900 4800
$Comp
L Transistor_FET:FDMS86550 Q4
U 1 1 5EEF645D
P 9700 2800
F 0 "Q4" H 9904 2846 50  0000 L CNN
F 1 "FDMS86550" H 9904 2755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TDSON-8-1" H 9900 2725 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/FD/FDMS86550.pdf" V 9700 2800 50  0001 L CNN
	1    9700 2800
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:FDMS86550 Q3
U 1 1 5EEF96B3
P 9700 2200
F 0 "Q3" H 9904 2246 50  0000 L CNN
F 1 "FDMS86550" H 9904 2155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TDSON-8-1" H 9900 2125 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/FD/FDMS86550.pdf" V 9700 2200 50  0001 L CNN
	1    9700 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 1500 9800 2000
$Comp
L Transistor_FET:FDMS86550 Q5
U 1 1 5EEFB859
P 9800 5000
F 0 "Q5" H 10004 5046 50  0000 L CNN
F 1 "FDMS86550" H 10004 4955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TDSON-8-1" H 10000 4925 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/FD/FDMS86550.pdf" V 9800 5000 50  0001 L CNN
	1    9800 5000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:FDMS86550 Q6
U 1 1 5EEFF15D
P 9800 5600
F 0 "Q6" H 10004 5646 50  0000 L CNN
F 1 "FDMS86550" H 10004 5555 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TDSON-8-1" H 10000 5525 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/FD/FDMS86550.pdf" V 9800 5600 50  0001 L CNN
	1    9800 5600
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:FDMS86550 Q1
U 1 1 5EF01887
P 5600 5900
F 0 "Q1" H 5804 5946 50  0000 L CNN
F 1 "FDMS86550" H 5804 5855 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TDSON-8-1" H 5800 5825 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/FD/FDMS86550.pdf" V 5600 5900 50  0001 L CNN
	1    5600 5900
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:FDMS86550 Q2
U 1 1 5EF05BB8
P 5600 6500
F 0 "Q2" H 5804 6546 50  0000 L CNN
F 1 "FDMS86550" H 5804 6455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TDSON-8-1" H 5800 6425 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/FD/FDMS86550.pdf" V 5600 6500 50  0001 L CNN
	1    5600 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 5200 5700 5700
Text Label 10000 5300 0    50   ~ 0
PH_B
Wire Wire Line
	9900 5300 10000 5300
Text Label 5850 6200 0    50   ~ 0
PH_C
Wire Wire Line
	5700 6200 5850 6200
$Comp
L MCU_NXP_LPC:LPC1112FHN33-101 U4
U 1 1 5EF1C24F
P 3300 3150
F 0 "U4" H 3300 3000 50  0000 C CNN
F 1 "LPC1112FHN33-101" H 3200 2650 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-32-1EP_7x7mm_P0.65mm_EP4.7x4.7mm" H 4400 4250 50  0001 C CNN
F 3 "https://www.nxp.com/documents/data_sheet/LPC111X.pdf" H 3300 3150 50  0001 C CNN
	1    3300 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5EF1E2C7
P 3300 4250
F 0 "#PWR0108" H 3300 4000 50  0001 C CNN
F 1 "GND" H 3305 4077 50  0000 C CNN
F 2 "" H 3300 4250 50  0001 C CNN
F 3 "" H 3300 4250 50  0001 C CNN
	1    3300 4250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0116
U 1 1 5EF66B1A
P 3200 1650
F 0 "#PWR0116" H 3200 1500 50  0001 C CNN
F 1 "+3.3V" H 3215 1823 50  0000 C CNN
F 2 "" H 3200 1650 50  0001 C CNN
F 3 "" H 3200 1650 50  0001 C CNN
	1    3200 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1650 3200 1900
Wire Wire Line
	3200 1900 3400 1900
Wire Wire Line
	3400 1900 3400 2050
Connection ~ 3200 1900
Wire Wire Line
	3200 1900 3200 2050
Wire Wire Line
	10000 2500 9800 2500
Text Label 7350 5700 0    50   ~ 0
PH_A
Text Label 7850 5700 0    50   ~ 0
PH_B
Text Label 8350 5700 0    50   ~ 0
PH_C
$Comp
L Device:C_Small C13
U 1 1 5EEA9AF4
P 7350 6150
F 0 "C13" H 7258 6196 50  0000 R CNN
F 1 "2.7nF" H 7258 6105 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7350 6150 50  0001 C CNN
F 3 "~" H 7350 6150 50  0001 C CNN
	1    7350 6150
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5EEAA37D
P 7350 6250
F 0 "#PWR0124" H 7350 6000 50  0001 C CNN
F 1 "GND" H 7355 6077 50  0000 C CNN
F 2 "" H 7350 6250 50  0001 C CNN
F 3 "" H 7350 6250 50  0001 C CNN
	1    7350 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 5EEAAC84
P 7850 6250
F 0 "#PWR0125" H 7850 6000 50  0001 C CNN
F 1 "GND" H 7855 6077 50  0000 C CNN
F 2 "" H 7850 6250 50  0001 C CNN
F 3 "" H 7850 6250 50  0001 C CNN
	1    7850 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 5EEAD3E4
P 8350 6250
F 0 "#PWR0126" H 8350 6000 50  0001 C CNN
F 1 "GND" H 8355 6077 50  0000 C CNN
F 2 "" H 8350 6250 50  0001 C CNN
F 3 "" H 8350 6250 50  0001 C CNN
	1    8350 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5EEB061A
P 7350 5900
F 0 "R1" H 7409 5946 50  0000 L CNN
F 1 "2.2" H 7409 5855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7350 5900 50  0001 C CNN
F 3 "~" H 7350 5900 50  0001 C CNN
	1    7350 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 6050 7350 6000
Wire Wire Line
	7350 5800 7350 5700
$Comp
L Device:R_Small R2
U 1 1 5EEB57C9
P 7850 5900
F 0 "R2" H 7909 5946 50  0000 L CNN
F 1 "2.2" H 7909 5855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7850 5900 50  0001 C CNN
F 3 "~" H 7850 5900 50  0001 C CNN
	1    7850 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 6050 7850 6000
Wire Wire Line
	7850 5800 7850 5700
$Comp
L Device:R_Small R3
U 1 1 5EEBA4B4
P 8350 5900
F 0 "R3" H 8409 5946 50  0000 L CNN
F 1 "2.2" H 8409 5855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8350 5900 50  0001 C CNN
F 3 "~" H 8350 5900 50  0001 C CNN
	1    8350 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 6050 8350 6000
Wire Wire Line
	8350 5800 8350 5700
$Comp
L Device:C_Small C14
U 1 1 5EEC00B4
P 7850 6150
F 0 "C14" H 7758 6196 50  0000 R CNN
F 1 "2.7nF" H 7758 6105 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7850 6150 50  0001 C CNN
F 3 "~" H 7850 6150 50  0001 C CNN
	1    7850 6150
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C15
U 1 1 5EEC026C
P 8350 6150
F 0 "C15" H 8258 6196 50  0000 R CNN
F 1 "2.7nF" H 8258 6105 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8350 6150 50  0001 C CNN
F 3 "~" H 8350 6150 50  0001 C CNN
	1    8350 6150
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5EECB579
P 10350 1600
F 0 "C3" H 10550 1650 50  0000 R CNN
F 1 "4.7uF" H 10550 1500 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 10350 1600 50  0001 C CNN
F 3 "~" H 10350 1600 50  0001 C CNN
	1    10350 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9900 4300 10250 4300
$Comp
L Device:C_Small C7
U 1 1 5EECBC5F
P 10250 4400
F 0 "C7" H 10450 4450 50  0000 R CNN
F 1 "4.7uF" H 10450 4300 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 10250 4400 50  0001 C CNN
F 3 "~" H 10250 4400 50  0001 C CNN
	1    10250 4400
	-1   0    0    -1  
$EndComp
Connection ~ 10250 4300
Wire Wire Line
	10250 4300 10450 4300
$Comp
L Device:C_Small C8
U 1 1 5EECC475
P 10450 4400
F 0 "C8" H 10650 4450 50  0000 R CNN
F 1 "4.7uF" H 10650 4300 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 10450 4400 50  0001 C CNN
F 3 "~" H 10450 4400 50  0001 C CNN
	1    10450 4400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5700 5200 6050 5200
$Comp
L Device:C_Small C11
U 1 1 5EECC679
P 6050 5300
F 0 "C11" H 6250 5350 50  0000 R CNN
F 1 "4.7uF" H 6250 5200 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6050 5300 50  0001 C CNN
F 3 "~" H 6050 5300 50  0001 C CNN
	1    6050 5300
	-1   0    0    -1  
$EndComp
Connection ~ 6050 5200
Wire Wire Line
	6050 5200 6250 5200
$Comp
L Device:C_Small C12
U 1 1 5EECCA5B
P 6250 5300
F 0 "C12" H 6450 5350 50  0000 R CNN
F 1 "4.7uF" H 6450 5200 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6250 5300 50  0001 C CNN
F 3 "~" H 6250 5300 50  0001 C CNN
	1    6250 5300
	-1   0    0    -1  
$EndComp
Text Label 8250 5050 2    50   ~ 0
PWM_B
Text Label 4050 5950 2    50   ~ 0
PWM_C
Text Label 8150 2250 2    50   ~ 0
PWM_A
$Comp
L Device:C_Small C16
U 1 1 5EFD6E2B
P 10550 1600
F 0 "C16" H 10750 1650 50  0000 R CNN
F 1 "4.7uF" H 10750 1500 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 10550 1600 50  0001 C CNN
F 3 "~" H 10550 1600 50  0001 C CNN
	1    10550 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10550 1500 10350 1500
Connection ~ 10350 1500
$Comp
L power:GND #PWR0127
U 1 1 5EFD9771
P 10550 1700
F 0 "#PWR0127" H 10550 1450 50  0001 C CNN
F 1 "GND" H 10555 1527 50  0000 C CNN
F 2 "" H 10550 1700 50  0001 C CNN
F 3 "" H 10550 1700 50  0001 C CNN
	1    10550 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C17
U 1 1 5EFD98C2
P 10650 4400
F 0 "C17" H 10850 4450 50  0000 R CNN
F 1 "4.7uF" H 10850 4300 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 10650 4400 50  0001 C CNN
F 3 "~" H 10650 4400 50  0001 C CNN
	1    10650 4400
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 5EFD9ABC
P 10650 4500
F 0 "#PWR0128" H 10650 4250 50  0001 C CNN
F 1 "GND" H 10655 4327 50  0000 C CNN
F 2 "" H 10650 4500 50  0001 C CNN
F 3 "" H 10650 4500 50  0001 C CNN
	1    10650 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 4300 10650 4300
Connection ~ 10450 4300
$Comp
L Device:C_Small C18
U 1 1 5EFDC493
P 6450 5300
F 0 "C18" H 6650 5350 50  0000 R CNN
F 1 "4.7uF" H 6650 5200 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6450 5300 50  0001 C CNN
F 3 "~" H 6450 5300 50  0001 C CNN
	1    6450 5300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6250 5200 6450 5200
Connection ~ 6250 5200
$Comp
L power:GND #PWR0129
U 1 1 5EFDF07C
P 6450 5400
F 0 "#PWR0129" H 6450 5150 50  0001 C CNN
F 1 "GND" H 6455 5227 50  0000 C CNN
F 2 "" H 6450 5400 50  0001 C CNN
F 3 "" H 6450 5400 50  0001 C CNN
	1    6450 5400
	1    0    0    -1  
$EndComp
$Comp
L BLDC-driver-rescue:AS5600 U5
U 1 1 5EFF18B3
P 5450 3200
F 0 "U5" H 5625 3365 50  0000 C CNN
F 1 "AS5600" H 5625 3274 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5450 3200 50  0001 C CNN
F 3 "" H 5450 3200 50  0001 C CNN
	1    5450 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 5EFF1DB5
P 5100 3600
F 0 "#PWR0130" H 5100 3350 50  0001 C CNN
F 1 "GND" H 5105 3427 50  0000 C CNN
F 2 "" H 5100 3600 50  0001 C CNN
F 3 "" H 5100 3600 50  0001 C CNN
	1    5100 3600
	1    0    0    -1  
$EndComp
Text Label 2600 3250 2    50   ~ 0
PWM_C
Text Label 2600 3350 2    50   ~ 0
PWM_A
Text Label 2600 3450 2    50   ~ 0
PWM_B
Text Label 2600 3150 2    50   ~ 0
ENBL
$Comp
L power:+5V #PWR0131
U 1 1 5F04AA52
P 8250 5150
F 0 "#PWR0131" H 8250 5000 50  0001 C CNN
F 1 "+5V" V 8250 5350 50  0000 C CNN
F 2 "" H 8250 5150 50  0001 C CNN
F 3 "" H 8250 5150 50  0001 C CNN
	1    8250 5150
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0132
U 1 1 5F04C267
P 4050 6050
F 0 "#PWR0132" H 4050 5900 50  0001 C CNN
F 1 "+5V" V 4050 6250 50  0000 C CNN
F 2 "" H 4050 6050 50  0001 C CNN
F 3 "" H 4050 6050 50  0001 C CNN
	1    4050 6050
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0133
U 1 1 5F04E2F5
P 8150 2350
F 0 "#PWR0133" H 8150 2200 50  0001 C CNN
F 1 "+5V" V 8150 2550 50  0000 C CNN
F 2 "" H 8150 2350 50  0001 C CNN
F 3 "" H 8150 2350 50  0001 C CNN
	1    8150 2350
	0    -1   -1   0   
$EndComp
$Comp
L Device:Thermistor_NTC TH1
U 1 1 5F061A2D
P 5900 1350
F 0 "TH1" H 5997 1396 50  0000 L CNN
F 1 "10k" H 5997 1305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5900 1400 50  0001 C CNN
F 3 "~" H 5900 1400 50  0001 C CNN
	1    5900 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5F063CFE
P 5900 1800
F 0 "R4" H 5959 1846 50  0000 L CNN
F 1 "10k" H 5959 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5900 1800 50  0001 C CNN
F 3 "~" H 5900 1800 50  0001 C CNN
	1    5900 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1700 5900 1600
$Comp
L power:GND #PWR0134
U 1 1 5F0691FC
P 5900 1900
F 0 "#PWR0134" H 5900 1650 50  0001 C CNN
F 1 "GND" H 5905 1727 50  0000 C CNN
F 2 "" H 5900 1900 50  0001 C CNN
F 3 "" H 5900 1900 50  0001 C CNN
	1    5900 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0135
U 1 1 5F0694D0
P 5900 1200
F 0 "#PWR0135" H 5900 1050 50  0001 C CNN
F 1 "+3.3V" H 5915 1373 50  0000 C CNN
F 2 "" H 5900 1200 50  0001 C CNN
F 3 "" H 5900 1200 50  0001 C CNN
	1    5900 1200
	1    0    0    -1  
$EndComp
Text Label 6100 1600 0    50   ~ 0
FET_TEMP
Wire Wire Line
	6100 1600 5900 1600
Connection ~ 5900 1600
Wire Wire Line
	5900 1600 5900 1500
$EndSCHEMATC
