EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "2019-11-28"
Rev "1.3"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:USB_A J1
U 1 1 5B913995
P 1950 2550
F 0 "J1" H 2005 3017 50  0000 C CNN
F 1 "USB_A_Plug" H 2005 2926 50  0000 C CNN
F 2 "Connector_USB:USB_A_CNCTech_1001-011-01101_Horizontal" H 2100 2500 50  0001 C CNN
F 3 "https://www.aliexpress.com/item/32661919556.html?spm=2114.12010615.8148356.1.5ee53258ygxLhO" H 2100 2500 50  0001 C CNN
F 4 "~" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "black G49 USB A plug" H 0   0   50  0001 C CNN "Short Description"
	1    1950 2550
	1    0    0    -1  
$EndComp
$Comp
L MCU_ST_STM32F0:STM32F072C8Tx U3
U 1 1 5B914EA3
P 6800 3850
F 0 "U3" H 6750 2264 50  0000 C CNN
F 1 "STM32F072C8Tx" H 6750 2173 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 6200 2450 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00090510.pdf" H 6800 3850 50  0001 C CNN
F 4 "STMicroelectronics" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "ARM cortex M0 microcontroller" H 0   0   50  0001 C CNN "Short Description"
	1    6800 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5B929F95
P 5400 3000
F 0 "Y1" V 5354 2869 50  0000 R CNN
F 1 "8MHz" V 5445 2869 50  0000 R CNN
F 2 "Crystal:Crystal_SMD_5032-2Pin_5.0x3.2mm" H 5400 3000 50  0001 C CNN
F 3 "https://www.ndk.com/images/products/catalog/c_NX5032GA_e.pdf" H 5400 3000 50  0001 C CNN
F 4 "Nihon Dempa Kogyo" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "NX5032GA-8MHZ(STD-CSK-7) crystal resonator" H 0   0   50  0001 C CNN "Short Description"
	1    5400 3000
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 5B92A19D
P 5150 3250
F 0 "C5" V 5310 3250 50  0000 C CNN
F 1 "18pF" V 5401 3250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5188 3100 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/mlcc_commercial_general_en.pdf" H 5150 3250 50  0001 C CNN
F 4 "TDK" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "C0G 5% 50V     eg. C1608C0G1H180J" H 0   0   50  0001 C CNN "Short Description"
	1    5150 3250
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 5B92A2F2
P 5150 2750
F 0 "C4" V 4898 2750 50  0000 C CNN
F 1 "18pF" V 4989 2750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5188 2600 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/mlcc_commercial_general_en.pdf" H 5150 2750 50  0001 C CNN
F 4 "TDK" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "C0G 5% 50V     eg. C1608C0G1H180J" H 0   0   50  0001 C CNN "Short Description"
	1    5150 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	5300 3250 5400 3250
Wire Wire Line
	5400 3250 5400 3150
Wire Wire Line
	5400 2850 5400 2750
Wire Wire Line
	5400 2750 5300 2750
$Comp
L power:GND #PWR08
U 1 1 5B92A418
P 4950 3250
F 0 "#PWR08" H 4950 3000 50  0001 C CNN
F 1 "GND" V 4955 3122 50  0000 R CNN
F 2 "" H 4950 3250 50  0001 C CNN
F 3 "" H 4950 3250 50  0001 C CNN
	1    4950 3250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5B92A43C
P 4950 2750
F 0 "#PWR07" H 4950 2500 50  0001 C CNN
F 1 "GND" V 4955 2622 50  0000 R CNN
F 2 "" H 4950 2750 50  0001 C CNN
F 3 "" H 4950 2750 50  0001 C CNN
	1    4950 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 2750 5000 2750
Wire Wire Line
	5000 3250 4950 3250
Wire Wire Line
	5400 3250 5600 3250
Wire Wire Line
	5600 3250 5600 3050
Wire Wire Line
	5600 3050 6100 3050
Connection ~ 5400 3250
Wire Wire Line
	6100 2950 5600 2950
Wire Wire Line
	5600 2950 5600 2750
Wire Wire Line
	5600 2750 5400 2750
Connection ~ 5400 2750
$Comp
L Device:C C7
U 1 1 5B92A6B8
P 6450 2200
F 0 "C7" H 6565 2246 50  0000 L CNN
F 1 "100nF" H 6565 2155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6488 2050 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/mlcc_commercial_general_en.pdf" H 6450 2200 50  0001 C CNN
F 4 "TDK" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "X7R 10% 50V   eg. C1608X7R1H104K" H 0   0   50  0001 C CNN "Short Description"
	1    6450 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5B92A7BF
P 5950 2200
F 0 "C6" H 6065 2246 50  0000 L CNN
F 1 "100nF" H 6065 2155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5988 2050 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/mlcc_commercial_general_en.pdf" H 5950 2200 50  0001 C CNN
F 4 "TDK" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "X7R 10% 50V   eg. C1608X7R1H104K" H 0   0   50  0001 C CNN "Short Description"
	1    5950 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5B92A7ED
P 5450 2200
F 0 "C3" H 5565 2246 50  0000 L CNN
F 1 "100nF" H 5565 2155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5488 2050 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/mlcc_commercial_general_en.pdf" H 5450 2200 50  0001 C CNN
F 4 "TDK" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "X7R 10% 50V   eg. C1608X7R1H104K" H 0   0   50  0001 C CNN "Short Description"
	1    5450 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2350 5950 2350
Wire Wire Line
	5950 2350 6450 2350
Connection ~ 5950 2350
Wire Wire Line
	6450 2350 6600 2350
Connection ~ 6450 2350
Wire Wire Line
	6600 2350 6700 2350
Connection ~ 6600 2350
Wire Wire Line
	6700 2350 6800 2350
Connection ~ 6700 2350
Wire Wire Line
	6800 2350 6900 2350
Connection ~ 6800 2350
Wire Wire Line
	6900 2350 7000 2350
Connection ~ 6900 2350
$Comp
L Regulator_Linear:MCP1700-3302E_SOT23 U2
U 1 1 5B92B686
P 3900 2350
F 0 "U2" H 3900 2592 50  0000 C CNN
F 1 "MCP1700-3302E/TT" H 3900 2501 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3900 2575 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001826C.pdf" H 3900 2350 50  0001 C CNN
F 4 "Microchip Technology" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "3.3V LDO linear voltage regulator" H 3900 2350 50  0001 C CNN "Short Description"
	1    3900 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5B92B7C4
P 5450 2050
F 0 "#PWR09" H 5450 1800 50  0001 C CNN
F 1 "GND" H 5455 1877 50  0000 C CNN
F 2 "" H 5450 2050 50  0001 C CNN
F 3 "" H 5450 2050 50  0001 C CNN
	1    5450 2050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5B92B826
P 5950 2050
F 0 "#PWR010" H 5950 1800 50  0001 C CNN
F 1 "GND" H 5955 1877 50  0000 C CNN
F 2 "" H 5950 2050 50  0001 C CNN
F 3 "" H 5950 2050 50  0001 C CNN
	1    5950 2050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5B92B845
P 6450 2050
F 0 "#PWR011" H 6450 1800 50  0001 C CNN
F 1 "GND" H 6455 1877 50  0000 C CNN
F 2 "" H 6450 2050 50  0001 C CNN
F 3 "" H 6450 2050 50  0001 C CNN
	1    6450 2050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5B92BDCE
P 3900 2650
F 0 "#PWR05" H 3900 2400 50  0001 C CNN
F 1 "GND" H 3905 2477 50  0000 C CNN
F 2 "" H 3900 2650 50  0001 C CNN
F 3 "" H 3900 2650 50  0001 C CNN
	1    3900 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2350 4350 2350
Connection ~ 5450 2350
Text GLabel 5300 2350 0    50   Input ~ 0
3.3V
Text GLabel 2950 2350 0    50   Input ~ 0
5V
$Comp
L Device:C C2
U 1 1 5B92C8A7
P 4350 2500
F 0 "C2" H 4468 2546 50  0000 L CNN
F 1 "10uF" H 4468 2455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4388 2350 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/mlcc_commercial_general_en.pdf" H 4350 2500 50  0001 C CNN
F 4 "TDK" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "X5R 10% 16V   eg. C2012X5R1C106K" H 0   0   50  0001 C CNN "Short Description"
	1    4350 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5B92CC88
P 3450 2500
F 0 "C1" H 3333 2546 50  0000 R CNN
F 1 "10uF" H 3333 2455 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3488 2350 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/mlcc_commercial_general_en.pdf" H 3450 2500 50  0001 C CNN
F 4 "TDK" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "X5R 10% 16V   eg. C2012X5R1C106K" H 0   0   50  0001 C CNN "Short Description"
	1    3450 2500
	1    0    0    -1  
$EndComp
Connection ~ 3450 2350
Wire Wire Line
	3450 2350 3600 2350
$Comp
L power:GND #PWR04
U 1 1 5B92CD24
P 3450 2650
F 0 "#PWR04" H 3450 2400 50  0001 C CNN
F 1 "GND" H 3455 2477 50  0000 C CNN
F 2 "" H 3450 2650 50  0001 C CNN
F 3 "" H 3450 2650 50  0001 C CNN
	1    3450 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5B92CD47
P 4350 2650
F 0 "#PWR06" H 4350 2400 50  0001 C CNN
F 1 "GND" H 4355 2477 50  0000 C CNN
F 2 "" H 4350 2650 50  0001 C CNN
F 3 "" H 4350 2650 50  0001 C CNN
	1    4350 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5B92CE42
P 6450 5350
F 0 "#PWR012" H 6450 5100 50  0001 C CNN
F 1 "GND" V 6455 5222 50  0000 R CNN
F 2 "" H 6450 5350 50  0001 C CNN
F 3 "" H 6450 5350 50  0001 C CNN
	1    6450 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	6450 5350 6600 5350
Wire Wire Line
	6600 5350 6700 5350
Connection ~ 6600 5350
Wire Wire Line
	6700 5350 6800 5350
Connection ~ 6700 5350
Wire Wire Line
	6800 5350 6900 5350
Connection ~ 6800 5350
Text GLabel 7450 4850 2    50   Input ~ 0
d+
Text GLabel 7650 4750 2    50   Input ~ 0
d-
Wire Wire Line
	7650 4750 7400 4750
Wire Wire Line
	7450 4850 7400 4850
Text GLabel 2500 2650 0    50   Input ~ 0
d-
Text GLabel 2700 2550 0    50   Input ~ 0
d+
Wire Wire Line
	3000 2650 2250 2650
Wire Wire Line
	2250 2550 3100 2550
$Comp
L power:GND #PWR01
U 1 1 5B94A75B
P 1750 2950
F 0 "#PWR01" H 1750 2700 50  0001 C CNN
F 1 "GND" V 1750 2750 50  0000 C CNN
F 2 "" H 1750 2950 50  0001 C CNN
F 3 "" H 1750 2950 50  0001 C CNN
	1    1750 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	1950 2950 1850 2950
Wire Wire Line
	1850 2950 1750 2950
Connection ~ 1850 2950
$Comp
L PocketAdmin:ST-LINK_V2 CON1
U 1 1 5B94CFC5
P 1700 3450
F 0 "CON1" H 1520 3496 50  0000 R CNN
F 1 "ST-LINK_V2" H 1520 3405 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" V 950 3500 50  0001 C CNN
F 3 "~" H 1900 3450 50  0000 C CNN
F 4 "~" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "plated holes in PCB, to plug a cable in" H 0   0   50  0001 C CNN "Short Description"
	1    1700 3450
	1    0    0    -1  
$EndComp
$Comp
L PocketAdmin:IP4220CZ6 U1
U 1 1 5B9436C1
P 2900 3750
F 0 "U1" H 3228 3803 60  0000 L CNN
F 1 "IP4220CZ6" H 3228 3697 60  0000 L CNN
F 2 "Package_SO:TSOP-6_1.65x3.05mm_P0.95mm" H 2900 3650 60  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/IP4220CZ6.pdf" H 2900 3650 60  0001 C CNN
F 4 "Nexperia" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "ESD protection diode for USB" H 0   0   50  0001 C CNN "Short Description"
	1    2900 3750
	1    0    0    -1  
$EndComp
Text GLabel 8300 5050 2    50   Input ~ 0
swclk
Text GLabel 8500 4950 2    50   Input ~ 0
swdio
Wire Wire Line
	7800 5050 7400 5050
Wire Wire Line
	8050 4950 7400 4950
Text GLabel 2200 3350 2    50   Input ~ 0
swdio
Text GLabel 2500 3250 2    50   Input ~ 0
swclk
$Comp
L power:GND #PWR03
U 1 1 5B948D34
P 2900 4050
F 0 "#PWR03" H 2900 3800 50  0001 C CNN
F 1 "GND" H 2905 3877 50  0000 C CNN
F 2 "" H 2900 4050 50  0001 C CNN
F 3 "" H 2900 4050 50  0001 C CNN
	1    2900 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3450 3000 2650
Wire Wire Line
	3100 2550 3100 3450
Wire Wire Line
	2700 3450 2700 3350
Wire Wire Line
	2800 3450 2800 3250
$Comp
L power:GND #PWR02
U 1 1 5B95E88F
P 2050 3450
F 0 "#PWR02" H 2050 3200 50  0001 C CNN
F 1 "GND" V 2050 3300 50  0000 R CNN
F 2 "" H 2050 3450 50  0001 C CNN
F 3 "" H 2050 3450 50  0001 C CNN
	1    2050 3450
	0    -1   1    0   
$EndComp
Wire Wire Line
	2800 3250 1900 3250
Wire Wire Line
	2700 3350 1900 3350
Text GLabel 2300 3550 2    50   Input ~ 0
3.3V
NoConn ~ 6100 3650
NoConn ~ 6100 3850
NoConn ~ 6100 4050
NoConn ~ 6100 4250
NoConn ~ 6100 4450
NoConn ~ 6100 4850
NoConn ~ 6100 5050
NoConn ~ 7400 4450
NoConn ~ 7400 3750
NoConn ~ 7400 3650
Wire Wire Line
	8350 4950 8500 4950
Wire Wire Line
	8100 5050 8300 5050
$Comp
L Device:R R1
U 1 1 5B95EA51
P 7950 5050
F 0 "R1" V 8050 5050 50  0000 C CNN
F 1 "33" V 7950 5050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7880 5050 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1811151223_LIZ-Elec-CR0603JA0102G_C101253.pdf" H 7950 5050 50  0001 C CNN
F 4 "LIZ Electronics" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "5% 50V  eg. CR0603JA0330G" H 0   0   50  0001 C CNN "Short Description"
	1    7950 5050
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5B9602EF
P 8200 4950
F 0 "R2" V 8100 4950 50  0000 C CNN
F 1 "33" V 8200 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8130 4950 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1811151223_LIZ-Elec-CR0603JA0102G_C101253.pdf" H 8200 4950 50  0001 C CNN
F 4 "LIZ Electronics" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "5% 50V  eg. CR0603JA0330G" H 0   0   50  0001 C CNN "Short Description"
	1    8200 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 2350 3450 2350
Text GLabel 2900 3400 1    50   Input ~ 0
5V
Wire Wire Line
	2900 3400 2900 3450
NoConn ~ 7400 4650
$Comp
L Device:C C8
U 1 1 5BB94C3A
P 2250 3750
F 0 "C8" H 2368 3796 50  0000 L CNN
F 1 "10uF" H 2368 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2288 3600 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/mlcc_commercial_general_en.pdf" H 2250 3750 50  0001 C CNN
F 4 "TDK" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "X5R 10% 16V   eg. C2012X5R1C106K" H 0   0   50  0001 C CNN "Short Description"
	1    2250 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5BB96481
P 2250 3950
F 0 "#PWR013" H 2250 3700 50  0001 C CNN
F 1 "GND" H 2255 3777 50  0000 C CNN
F 2 "" H 2250 3950 50  0001 C CNN
F 3 "" H 2250 3950 50  0001 C CNN
	1    2250 3950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1900 3550 2250 3550
Wire Wire Line
	2250 3600 2250 3550
Connection ~ 2250 3550
Wire Wire Line
	2250 3550 2300 3550
$Comp
L power:GND #PWR0101
U 1 1 5C140D50
P 8900 4700
F 0 "#PWR0101" H 8900 4450 50  0001 C CNN
F 1 "GND" V 8905 4572 50  0000 R CNN
F 2 "" H 8900 4700 50  0001 C CNN
F 3 "" H 8900 4700 50  0001 C CNN
	1    8900 4700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7400 4150 8450 4150
Wire Wire Line
	8450 4250 7400 4250
Wire Wire Line
	7400 4350 8450 4350
Wire Wire Line
	8900 3900 9000 3900
$Comp
L Device:C C9
U 1 1 5C145C83
P 9000 3750
F 0 "C9" H 9115 3796 50  0000 L CNN
F 1 "100nF" H 9115 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9038 3600 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/mlcc_commercial_general_en.pdf" H 9000 3750 50  0001 C CNN
F 4 "TDK" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "X7R 10% 50V   eg. C1608X7R1H104K" H 0   0   50  0001 C CNN "Short Description"
	1    9000 3750
	-1   0    0    1   
$EndComp
Text GLabel 9100 3900 2    50   Input ~ 0
3.3V
$Comp
L power:GND #PWR0102
U 1 1 5C145E19
P 9000 3600
F 0 "#PWR0102" H 9000 3350 50  0001 C CNN
F 1 "GND" V 9005 3472 50  0000 R CNN
F 2 "" H 9000 3600 50  0001 C CNN
F 3 "" H 9000 3600 50  0001 C CNN
	1    9000 3600
	1    0    0    1   
$EndComp
Connection ~ 9000 3900
Text GLabel 8250 4150 0    50   Input ~ 0
sck
Text GLabel 8000 4250 0    50   Input ~ 0
miso
Text GLabel 7700 4350 0    50   Input ~ 0
mosi
Text GLabel 8400 4450 0    50   Input ~ 0
cs
Text GLabel 6100 3750 0    50   Input ~ 0
cs
Wire Wire Line
	8400 4450 8450 4450
$Comp
L Switch:SW_Push SW1
U 1 1 5C14E49D
P 8000 3850
F 0 "SW1" H 8000 3650 50  0000 C CNN
F 1 "TL3342" H 8000 3750 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 8000 4050 50  0001 C CNN
F 3 "https://www.aliexpress.com/item/32996664072.html?spm=a2g0s.9042311.0.0.320a4c4dCBT2OS" H 8000 4050 50  0001 C CNN
F 4 "~" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "1.5mm height momentary pushbutton" H 0   0   50  0001 C CNN "Short Description"
	1    8000 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5C14E661
P 8300 3850
F 0 "#PWR0103" H 8300 3600 50  0001 C CNN
F 1 "GND" V 8305 3722 50  0000 R CNN
F 2 "" H 8300 3850 50  0001 C CNN
F 3 "" H 8300 3850 50  0001 C CNN
	1    8300 3850
	0    -1   1    0   
$EndComp
Wire Wire Line
	8300 3850 8200 3850
Wire Wire Line
	7550 3850 7400 3850
$Comp
L Device:C C10
U 1 1 5C151DA3
P 7550 3700
F 0 "C10" H 7665 3746 50  0000 L CNN
F 1 "100nF" H 7665 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7588 3550 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/mlcc_commercial_general_en.pdf" H 7550 3700 50  0001 C CNN
F 4 "TDK" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "X7R 10% 50V   eg. C1608X7R1H104K" H 0   0   50  0001 C CNN "Short Description"
	1    7550 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5C1564E4
P 7550 3550
F 0 "#PWR0104" H 7550 3300 50  0001 C CNN
F 1 "GND" V 7555 3422 50  0000 R CNN
F 2 "" H 7550 3550 50  0001 C CNN
F 3 "" H 7550 3550 50  0001 C CNN
	1    7550 3550
	1    0    0    1   
$EndComp
Connection ~ 7550 3850
Wire Wire Line
	7550 3850 7800 3850
Text GLabel 6100 4950 0    50   Input ~ 0
nc1
Text GLabel 7550 5050 2    50   Input ~ 0
nc1
Connection ~ 4350 2350
Wire Wire Line
	4350 2350 5450 2350
Text GLabel 6100 2550 0    50   Input ~ 0
nrst
Text GLabel 6000 3450 0    50   Input ~ 0
nrst
$Comp
L power:GND #PWR0107
U 1 1 5CEFA800
P 6100 3250
F 0 "#PWR0107" H 6100 3000 50  0001 C CNN
F 1 "GND" V 6105 3122 50  0000 R CNN
F 2 "" H 6100 3250 50  0001 C CNN
F 3 "" H 6100 3250 50  0001 C CNN
	1    6100 3250
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5CEFA926
P 6100 3950
F 0 "#PWR0108" H 6100 3700 50  0001 C CNN
F 1 "GND" V 6105 3822 50  0000 R CNN
F 2 "" H 6100 3950 50  0001 C CNN
F 3 "" H 6100 3950 50  0001 C CNN
	1    6100 3950
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5CEFA970
P 6100 4150
F 0 "#PWR0109" H 6100 3900 50  0001 C CNN
F 1 "GND" V 6105 4022 50  0000 R CNN
F 2 "" H 6100 4150 50  0001 C CNN
F 3 "" H 6100 4150 50  0001 C CNN
	1    6100 4150
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5CEFA9BA
P 7400 4550
F 0 "#PWR0110" H 7400 4300 50  0001 C CNN
F 1 "GND" V 7405 4422 50  0000 R CNN
F 2 "" H 7400 4550 50  0001 C CNN
F 3 "" H 7400 4550 50  0001 C CNN
	1    7400 4550
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5CEFAA04
P 6100 5150
F 0 "#PWR0111" H 6100 4900 50  0001 C CNN
F 1 "GND" V 6105 5022 50  0000 R CNN
F 2 "" H 6100 5150 50  0001 C CNN
F 3 "" H 6100 5150 50  0001 C CNN
	1    6100 5150
	0    1    -1   0   
$EndComp
$Comp
L PocketAdmin:W25N01GVZEIG U4
U 1 1 5D9951AC
P 8900 4300
F 0 "U4" H 9300 3900 50  0000 C CNN
F 1 "W25N01GVZEIG" H 9350 3800 50  0000 C CNN
F 2 "PocketAdmin:WSON-8_8x6mm" H 8900 4250 50  0001 C CNN
F 3 "https://www.winbond.com/resource-files/w25n01gv revg 032116.pdf" H 8900 4250 50  0001 C CNN
F 4 "Winbond Electronics" H 8900 4300 50  0001 C CNN "Manufacturer"
F 5 "128MiB serial NAND flash memory" H 0   0   50  0001 C CNN "Short Description"
	1    8900 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5D99CBCC
P 5700 3750
F 0 "#PWR0106" H 5700 3500 50  0001 C CNN
F 1 "GND" H 5705 3577 50  0000 C CNN
F 2 "" H 5700 3750 50  0001 C CNN
F 3 "" H 5700 3750 50  0001 C CNN
	1    5700 3750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5700 3450 6100 3450
Wire Wire Line
	9000 3900 9100 3900
Text GLabel 6100 4650 0    50   Input ~ 0
miso
Text GLabel 9400 4350 2    50   Input ~ 0
wp
Wire Wire Line
	9400 4350 9350 4350
Text GLabel 5850 4750 0    50   Input ~ 0
wp
Text GLabel 9600 4250 2    50   Input ~ 0
hold
Wire Wire Line
	9600 4250 9350 4250
Text GLabel 7400 3950 2    50   Input ~ 0
hold
NoConn ~ 7400 5150
NoConn ~ 7400 4050
$Comp
L Device:R R3
U 1 1 5D9ACBCB
P 2050 4150
F 0 "R3" V 1950 4150 50  0000 C CNN
F 1 "4.7k" V 2050 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1980 4150 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1811151223_LIZ-Elec-CR0603JA0102G_C101253.pdf" H 2050 4150 50  0001 C CNN
F 4 "LIZ Electronics" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "5% 50V  eg. CR0603JA0472G" H 0   0   50  0001 C CNN "Short Description"
	1    2050 4150
	1    0    0    1   
$EndComp
Wire Wire Line
	6100 2750 6050 2750
$Comp
L Device:R R4
U 1 1 5D9B81AE
P 5500 4700
F 0 "R4" V 5400 4700 50  0000 C CNN
F 1 "4.7k" V 5500 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5430 4700 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1811151223_LIZ-Elec-CR0603JA0102G_C101253.pdf" H 5500 4700 50  0001 C CNN
F 4 "LIZ Electronics" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "5% 50V  eg. CR0603JA0472G" H 0   0   50  0001 C CNN "Short Description"
	1    5500 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D1
U 1 1 5D9B8288
P 5850 4350
F 0 "D1" H 5850 4450 50  0000 C CNN
F 1 "GREEN" H 5850 4550 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 5850 4350 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1912191206_Foshan-NationStar-Optoelectronics-NCD0603G2_C87326.pdf" H 5850 4350 50  0001 C CNN
F 4 "Foshan NationStar" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "eg. NCD0603G2" H 0   0   50  0001 C CNN "Short Description"
	1    5850 4350
	1    0    0    1   
$EndComp
Wire Wire Line
	5500 4550 5500 4350
Wire Wire Line
	5500 4350 5700 4350
$Comp
L power:GND #PWR0105
U 1 1 5D9D175A
P 5500 4950
F 0 "#PWR0105" H 5500 4700 50  0001 C CNN
F 1 "GND" H 5505 4777 50  0000 C CNN
F 2 "" H 5500 4950 50  0001 C CNN
F 3 "" H 5500 4950 50  0001 C CNN
	1    5500 4950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5500 4950 5500 4850
Wire Wire Line
	6000 4350 6100 4350
Wire Wire Line
	5850 4750 6100 4750
NoConn ~ 6100 4550
Text GLabel 6050 2750 0    50   Input ~ 0
boot0
$Comp
L power:GND #PWR0112
U 1 1 5D9F74C7
P 2050 4350
F 0 "#PWR0112" H 2050 4100 50  0001 C CNN
F 1 "GND" H 2055 4177 50  0000 C CNN
F 2 "" H 2050 4350 50  0001 C CNN
F 3 "" H 2050 4350 50  0001 C CNN
	1    2050 4350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2050 4350 2050 4300
Text GLabel 1650 3950 0    50   Input ~ 0
boot0
Wire Wire Line
	2050 3450 1900 3450
NoConn ~ 6100 3350
$Comp
L Device:C C12
U 1 1 5D9B9E56
P 1750 4150
F 0 "C12" H 1864 4104 50  0000 L CNN
F 1 "100nF" H 1864 4195 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1788 4000 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/mlcc_commercial_general_en.pdf" H 1750 4150 50  0001 C CNN
F 4 "TDK" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "X7R 10% 50V   eg. C1608X7R1H104K" H 0   0   50  0001 C CNN "Short Description"
	1    1750 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	2050 4000 2050 3950
Wire Wire Line
	2050 3950 1900 3950
Wire Wire Line
	1750 3950 1750 4000
Wire Wire Line
	1750 3950 1650 3950
Connection ~ 1750 3950
Wire Wire Line
	1900 3650 1900 3950
Connection ~ 1900 3950
Wire Wire Line
	1900 3950 1750 3950
$Comp
L power:GND #PWR0113
U 1 1 5D9C2820
P 1750 4350
F 0 "#PWR0113" H 1750 4100 50  0001 C CNN
F 1 "GND" H 1755 4177 50  0000 C CNN
F 2 "" H 1750 4350 50  0001 C CNN
F 3 "" H 1750 4350 50  0001 C CNN
	1    1750 4350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1750 4350 1750 4300
Wire Wire Line
	2250 3950 2250 3900
Text Notes 3900 4300 0    50   ~ 0
PC15, PB13, PB10 pins are connected\n to netnames only to ease PCB layout \n     and are not used by the MCU 
$Comp
L Device:C C11
U 1 1 5FBAACB3
P 5700 3600
F 0 "C11" H 5400 3650 50  0000 L CNN
F 1 "100nF" H 5350 3550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5738 3450 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/mlcc_commercial_general_en.pdf" H 5700 3600 50  0001 C CNN
F 4 "TDK" H -1850 -100 50  0001 C CNN "Manufacturer"
F 5 "X7R 10% 50V   eg. C1608X7R1H104K" H -1850 -100 50  0001 C CNN "Short Description"
	1    5700 3600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
