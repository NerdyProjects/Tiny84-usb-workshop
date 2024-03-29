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
L MCU_Microchip_ATtiny:ATtiny84A-PU U2
U 1 1 5DBEEE65
P 4100 3700
F 0 "U2" H 3571 3746 50  0000 R CNN
F 1 "ATtiny84A-PU" H 3571 3655 50  0000 R CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4100 3700 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc8183.pdf" H 4100 3700 50  0001 C CNN
	1    4100 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5DBEF5E3
P 3350 1600
F 0 "C1" H 3442 1646 50  0000 L CNN
F 1 "100n" H 3442 1555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 3350 1600 50  0001 C CNN
F 3 "~" H 3350 1600 50  0001 C CNN
	1    3350 1600
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B J2
U 1 1 5DBEF904
P 900 3550
F 0 "J2" H 957 4017 50  0000 C CNN
F 1 "USB_B" H 957 3926 50  0000 C CNN
F 2 "Connector_USB:USB_B_OST_USB-B1HSxx_Horizontal" H 1050 3500 50  0001 C CNN
F 3 " ~" H 1050 3500 50  0001 C CNN
	1    900  3550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D7
U 1 1 5DBF004F
P 5350 3400
F 0 "D7" H 5350 3635 50  0000 C CNN
F 1 "LED1" H 5350 3544 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" V 5350 3400 50  0001 C CNN
F 3 "~" V 5350 3400 50  0001 C CNN
	1    5350 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5DBF17C6
P 5700 3400
F 0 "R7" V 5504 3400 50  0000 C CNN
F 1 "470" V 5595 3400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 5700 3400 50  0001 C CNN
F 3 "~" H 5700 3400 50  0001 C CNN
	1    5700 3400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5DBF40F8
P 3350 1800
F 0 "#PWR0101" H 3350 1550 50  0001 C CNN
F 1 "GND" H 3355 1627 50  0000 C CNN
F 2 "" H 3350 1800 50  0001 C CNN
F 3 "" H 3350 1800 50  0001 C CNN
	1    3350 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 1800 3350 1700
$Comp
L power:GND #PWR0102
U 1 1 5DBF4777
P 900 4100
F 0 "#PWR0102" H 900 3850 50  0001 C CNN
F 1 "GND" H 905 3927 50  0000 C CNN
F 2 "" H 900 4100 50  0001 C CNN
F 3 "" H 900 4100 50  0001 C CNN
	1    900  4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  3950 900  3950
Wire Wire Line
	900  3950 900  4100
Connection ~ 900  3950
$Comp
L power:GND #PWR0103
U 1 1 5DBF4F5C
P 4100 4650
F 0 "#PWR0103" H 4100 4400 50  0001 C CNN
F 1 "GND" H 4105 4477 50  0000 C CNN
F 2 "" H 4100 4650 50  0001 C CNN
F 3 "" H 4100 4650 50  0001 C CNN
	1    4100 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4650 4100 4600
Wire Wire Line
	3350 1450 3350 1500
Wire Wire Line
	4100 2750 4100 2800
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J1
U 1 1 5DBF737D
P 1750 5950
F 0 "J1" H 1800 6267 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 1800 6176 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 1750 5950 50  0001 C CNN
F 3 "~" H 1750 5950 50  0001 C CNN
	1    1750 5950
	1    0    0    -1  
$EndComp
Text GLabel 1350 5850 0    50   Input ~ 0
MISO
Text GLabel 1350 5950 0    50   Input ~ 0
SCK
Text GLabel 1350 6050 0    50   Input ~ 0
RESET
Text GLabel 2250 5950 2    50   Input ~ 0
MOSI
$Comp
L power:GND #PWR0104
U 1 1 5DBF8892
P 2050 6100
F 0 "#PWR0104" H 2050 5850 50  0001 C CNN
F 1 "GND" H 2055 5927 50  0000 C CNN
F 2 "" H 2050 6100 50  0001 C CNN
F 3 "" H 2050 6100 50  0001 C CNN
	1    2050 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 6100 2050 6050
Wire Wire Line
	2050 5850 2250 5850
Wire Wire Line
	2250 5950 2050 5950
Wire Wire Line
	1550 5850 1350 5850
Wire Wire Line
	1350 5950 1550 5950
Wire Wire Line
	1550 6050 1350 6050
Text GLabel 4800 4300 2    50   Input ~ 0
RESET
Wire Wire Line
	4700 4300 4750 4300
Text GLabel 4800 4100 2    50   Input ~ 0
USB_D+
Text GLabel 4800 4000 2    50   Input ~ 0
USB_D-
Wire Wire Line
	4800 4100 4700 4100
Wire Wire Line
	4700 4000 4800 4000
Wire Wire Line
	5600 3400 5450 3400
Wire Wire Line
	5250 3400 4700 3400
$Comp
L Device:Battery_Cell BT1
U 1 1 5DC00549
P 2350 1650
F 0 "BT1" H 2232 1654 50  0000 R CNN
F 1 "Battery_Cell" H 2232 1745 50  0000 R CNN
F 2 "Battery:BatteryHolder_Keystone_103_1x20mm" V 2350 1710 50  0001 C CNN
F 3 "~" V 2350 1710 50  0001 C CNN
	1    2350 1650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5DC0158F
P 2350 1450
F 0 "#PWR0105" H 2350 1200 50  0001 C CNN
F 1 "GND" H 2355 1277 50  0000 C CNN
F 2 "" H 2350 1450 50  0001 C CNN
F 3 "" H 2350 1450 50  0001 C CNN
	1    2350 1450
	-1   0    0    1   
$EndComp
$Comp
L Jumper:Jumper_3_Open JP1
U 1 1 5DC021CC
P 2350 2200
F 0 "JP1" V 2396 2287 50  0000 L CNN
F 1 "Jumper_3_Open" V 2305 2287 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2350 2200 50  0001 C CNN
F 3 "~" H 2350 2200 50  0001 C CNN
	1    2350 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2500 2150 2500 2200
Wire Wire Line
	2350 1450 2350 1550
Wire Wire Line
	2350 1850 2350 1950
$Comp
L Device:CP_Small C2
U 1 1 5DC0A52B
P 3800 1600
F 0 "C2" H 3888 1646 50  0000 L CNN
F 1 "4.7µ" H 3888 1555 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 3800 1600 50  0001 C CNN
F 3 "~" H 3800 1600 50  0001 C CNN
	1    3800 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1450 3800 1500
$Comp
L power:GND #PWR0106
U 1 1 5DC0AF36
P 3800 1800
F 0 "#PWR0106" H 3800 1550 50  0001 C CNN
F 1 "GND" H 3805 1627 50  0000 C CNN
F 2 "" H 3800 1800 50  0001 C CNN
F 3 "" H 3800 1800 50  0001 C CNN
	1    3800 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1800 3800 1700
$Comp
L Device:R_Small R1
U 1 1 5DC0D324
P 1650 3550
F 0 "R1" V 1454 3550 50  0000 C CNN
F 1 "68" V 1545 3550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 1650 3550 50  0001 C CNN
F 3 "~" H 1650 3550 50  0001 C CNN
	1    1650 3550
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5DC0DC91
P 1650 3850
F 0 "R2" V 1846 3850 50  0000 C CNN
F 1 "68" V 1755 3850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 1650 3850 50  0001 C CNN
F 3 "~" H 1650 3850 50  0001 C CNN
	1    1650 3850
	0    1    -1   0   
$EndComp
Wire Wire Line
	1200 3650 1200 3850
Wire Wire Line
	1200 3550 1250 3550
$Comp
L Device:D_Small D3
U 1 1 5DC12654
P 2350 2550
F 0 "D3" V 2304 2618 50  0000 L CNN
F 1 "1N4148" V 2395 2618 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" V 2350 2550 50  0001 C CNN
F 3 "~" V 2350 2550 50  0001 C CNN
	1    2350 2550
	0    1    1    0   
$EndComp
$Comp
L Device:D_Small D4
U 1 1 5DC12B63
P 2350 2750
F 0 "D4" V 2304 2818 50  0000 L CNN
F 1 "1N4148" V 2395 2818 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" V 2350 2750 50  0001 C CNN
F 3 "~" V 2350 2750 50  0001 C CNN
	1    2350 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 2850 2350 3000
Wire Wire Line
	1400 3350 1200 3350
$Comp
L Device:R_Small R3
U 1 1 5DC18851
P 1950 3700
F 0 "R3" H 1892 3654 50  0000 R CNN
F 1 "1k5" H 1892 3745 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 1950 3700 50  0001 C CNN
F 3 "~" H 1950 3700 50  0001 C CNN
	1    1950 3700
	1    0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR0107
U 1 1 5DC1A053
P 2500 2150
F 0 "#PWR0107" H 2500 2000 50  0001 C CNN
F 1 "+3V3" H 2515 2323 50  0000 C CNN
F 2 "" H 2500 2150 50  0001 C CNN
F 3 "" H 2500 2150 50  0001 C CNN
	1    2500 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0108
U 1 1 5DC1AC55
P 3350 1450
F 0 "#PWR0108" H 3350 1300 50  0001 C CNN
F 1 "+3V3" H 3365 1623 50  0000 C CNN
F 2 "" H 3350 1450 50  0001 C CNN
F 3 "" H 3350 1450 50  0001 C CNN
	1    3350 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0109
U 1 1 5DC1B022
P 3800 1450
F 0 "#PWR0109" H 3800 1300 50  0001 C CNN
F 1 "+3V3" H 3815 1623 50  0000 C CNN
F 2 "" H 3800 1450 50  0001 C CNN
F 3 "" H 3800 1450 50  0001 C CNN
	1    3800 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0110
U 1 1 5DC1B1FB
P 4100 2750
F 0 "#PWR0110" H 4100 2600 50  0001 C CNN
F 1 "+3V3" H 4115 2923 50  0000 C CNN
F 2 "" H 4100 2750 50  0001 C CNN
F 3 "" H 4100 2750 50  0001 C CNN
	1    4100 2750
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0111
U 1 1 5DC1C416
P 5950 3400
F 0 "#PWR0111" H 5950 3250 50  0001 C CNN
F 1 "+3V3" V 5965 3528 50  0000 L CNN
F 2 "" H 5950 3400 50  0001 C CNN
F 3 "" H 5950 3400 50  0001 C CNN
	1    5950 3400
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR0112
U 1 1 5DC1C7E4
P 1950 3400
F 0 "#PWR0112" H 1950 3250 50  0001 C CNN
F 1 "+3V3" H 1965 3573 50  0000 C CNN
F 2 "" H 1950 3400 50  0001 C CNN
F 3 "" H 1950 3400 50  0001 C CNN
	1    1950 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3600 1950 3400
Wire Wire Line
	1950 3800 1950 3850
Wire Wire Line
	1950 3850 1750 3850
Text GLabel 2050 3550 2    50   Input ~ 0
USB_D+
Wire Wire Line
	1750 3550 2050 3550
Text GLabel 2050 3850 2    50   Input ~ 0
USB_D-
Wire Wire Line
	2050 3850 1950 3850
Connection ~ 1950 3850
$Comp
L power:+3V3 #PWR0113
U 1 1 5DC21232
P 2250 5850
F 0 "#PWR0113" H 2250 5700 50  0001 C CNN
F 1 "+3V3" H 2265 6023 50  0000 C CNN
F 2 "" H 2250 5850 50  0001 C CNN
F 3 "" H 2250 5850 50  0001 C CNN
	1    2250 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:Buzzer BZ1
U 1 1 5DC25143
P 5550 3900
F 0 "BZ1" V 5601 3713 50  0000 R CNN
F 1 "Buzzer" V 5510 3713 50  0000 R CNN
F 2 "Buzzer_Beeper:Buzzer_15x7.5RM7.6" V 5525 4000 50  0001 C CNN
F 3 "~" V 5525 4000 50  0001 C CNN
	1    5550 3900
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR0114
U 1 1 5DC293E6
P 5750 3800
F 0 "#PWR0114" H 5750 3650 50  0001 C CNN
F 1 "+3V3" V 5765 3928 50  0000 L CNN
F 2 "" H 5750 3800 50  0001 C CNN
F 3 "" H 5750 3800 50  0001 C CNN
	1    5750 3800
	0    1    1    0   
$EndComp
$Comp
L Device:LED_Small D6
U 1 1 5DC2A46A
P 5350 3700
F 0 "D6" H 5350 3935 50  0000 C CNN
F 1 "LED2" H 5350 3844 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" V 5350 3700 50  0001 C CNN
F 3 "~" V 5350 3700 50  0001 C CNN
	1    5350 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5DC2A86C
P 5700 3700
F 0 "R6" V 5504 3700 50  0000 C CNN
F 1 "470" V 5595 3700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 5700 3700 50  0001 C CNN
F 3 "~" H 5700 3700 50  0001 C CNN
	1    5700 3700
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR0115
U 1 1 5DC2AE24
P 5950 3700
F 0 "#PWR0115" H 5950 3550 50  0001 C CNN
F 1 "+3V3" V 5965 3828 50  0000 L CNN
F 2 "" H 5950 3700 50  0001 C CNN
F 3 "" H 5950 3700 50  0001 C CNN
	1    5950 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 3400 5950 3400
Wire Wire Line
	5950 3700 5800 3700
Wire Wire Line
	5450 3700 5600 3700
$Comp
L Switch:SW_Push SW2
U 1 1 5DC35B0F
P 7500 3500
F 0 "SW2" V 7454 3648 50  0000 L CNN
F 1 "BTN2" V 7545 3648 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 7500 3700 50  0001 C CNN
F 3 "~" H 7500 3700 50  0001 C CNN
	1    7500 3500
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5DC36509
P 6750 4400
F 0 "SW1" V 6704 4548 50  0000 L CNN
F 1 "BTN1" V 6795 4548 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 6750 4600 50  0001 C CNN
F 3 "~" H 6750 4600 50  0001 C CNN
	1    6750 4400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5DC38D41
P 7500 3800
F 0 "#PWR0116" H 7500 3550 50  0001 C CNN
F 1 "GND" H 7505 3627 50  0000 C CNN
F 2 "" H 7500 3800 50  0001 C CNN
F 3 "" H 7500 3800 50  0001 C CNN
	1    7500 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5DC39087
P 6750 4700
F 0 "#PWR0117" H 6750 4450 50  0001 C CNN
F 1 "GND" H 6755 4527 50  0000 C CNN
F 2 "" H 6750 4700 50  0001 C CNN
F 3 "" H 6750 4700 50  0001 C CNN
	1    6750 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C5
U 1 1 5DC3A8F1
P 7950 3600
F 0 "C5" H 8038 3646 50  0000 L CNN
F 1 "4.7µ" H 8038 3555 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 7950 3600 50  0001 C CNN
F 3 "~" H 7950 3600 50  0001 C CNN
	1    7950 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C4
U 1 1 5DC3ECF9
P 7150 4500
F 0 "C4" H 7238 4546 50  0000 L CNN
F 1 "4.7µ" H 7238 4455 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 7150 4500 50  0001 C CNN
F 3 "~" H 7150 4500 50  0001 C CNN
	1    7150 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 3700 7950 3700
Wire Wire Line
	7500 3700 7500 3800
Connection ~ 7500 3700
Wire Wire Line
	6750 4700 6750 4600
Wire Wire Line
	6750 4600 7150 4600
Connection ~ 6750 4600
Wire Wire Line
	7150 4400 7150 4200
Wire Wire Line
	7150 4200 6750 4200
Wire Wire Line
	7950 3500 7950 3300
Text GLabel 5150 3650 1    50   Input ~ 0
MOSI
Text GLabel 4850 3600 2    50   Input ~ 0
MISO
Wire Wire Line
	4850 3600 4700 3600
Text GLabel 4850 3500 2    50   Input ~ 0
SCK
$Comp
L Device:C_Small C3
U 1 1 5DC4BE25
P 4900 3000
F 0 "C3" H 4992 3046 50  0000 L CNN
F 1 "100n" H 4992 2955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 4900 3000 50  0001 C CNN
F 3 "~" H 4900 3000 50  0001 C CNN
	1    4900 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5DC4C445
P 4900 2800
F 0 "#PWR0118" H 4900 2550 50  0001 C CNN
F 1 "GND" H 4905 2627 50  0000 C CNN
F 2 "" H 4900 2800 50  0001 C CNN
F 3 "" H 4900 2800 50  0001 C CNN
	1    4900 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	4900 2800 4900 2900
Wire Wire Line
	4900 3100 4700 3100
Connection ~ 6750 4200
Wire Wire Line
	4700 3300 7500 3300
Connection ~ 7500 3300
Wire Wire Line
	4700 3700 5150 3700
Wire Wire Line
	5150 3650 5150 3700
Connection ~ 5150 3700
Wire Wire Line
	5150 3700 5250 3700
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 5DC66F14
P 6100 2300
F 0 "J3" H 6180 2292 50  0000 L CNN
F 1 "I2C" H 6180 2201 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6100 2300 50  0001 C CNN
F 3 "~" H 6100 2300 50  0001 C CNN
	1    6100 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5DC69D45
P 5800 2400
F 0 "#PWR0119" H 5800 2150 50  0001 C CNN
F 1 "GND" H 5805 2227 50  0000 C CNN
F 2 "" H 5800 2400 50  0001 C CNN
F 3 "" H 5800 2400 50  0001 C CNN
	1    5800 2400
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR0120
U 1 1 5DC6A18E
P 5900 2600
F 0 "#PWR0120" H 5900 2450 50  0001 C CNN
F 1 "+3V3" H 5915 2773 50  0000 C CNN
F 2 "" H 5900 2600 50  0001 C CNN
F 3 "" H 5900 2600 50  0001 C CNN
	1    5900 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	5900 2600 5900 2500
Wire Wire Line
	5800 2400 5900 2400
Text GLabel 5800 2200 0    50   Input ~ 0
SDA
Wire Wire Line
	5800 2200 5900 2200
Text GLabel 5600 2300 0    50   Input ~ 0
SCL
Text GLabel 5250 3650 1    50   Input ~ 0
SDA
Wire Wire Line
	5250 3650 5250 3700
Connection ~ 5250 3700
$Comp
L Device:R_Small R8
U 1 1 5DC7437C
P 5900 2000
F 0 "R8" V 5704 2000 50  0000 C CNN
F 1 "10k" V 5795 2000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 5900 2000 50  0001 C CNN
F 3 "~" H 5900 2000 50  0001 C CNN
	1    5900 2000
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR0121
U 1 1 5DC74A08
P 5900 1850
F 0 "#PWR0121" H 5900 1700 50  0001 C CNN
F 1 "+3V3" V 5915 1978 50  0000 L CNN
F 2 "" H 5900 1850 50  0001 C CNN
F 3 "" H 5900 1850 50  0001 C CNN
	1    5900 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1850 5900 1900
$Comp
L Device:R_Small R4
U 1 1 5DC77698
P 5600 2000
F 0 "R4" V 5404 2000 50  0000 C CNN
F 1 "10k" V 5495 2000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 5600 2000 50  0001 C CNN
F 3 "~" H 5600 2000 50  0001 C CNN
	1    5600 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	5900 2100 5900 2200
Connection ~ 5900 2200
Wire Wire Line
	5600 2300 5600 2100
Wire Wire Line
	5600 2300 5900 2300
Wire Wire Line
	5600 1900 5900 1900
Connection ~ 5900 1900
Text GLabel 5450 3500 2    50   Input ~ 0
SCL
$Comp
L Device:LED_Small D5
U 1 1 5DC89451
P 5300 3200
F 0 "D5" H 5300 3435 50  0000 C CNN
F 1 "LED3" H 5300 3344 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" V 5300 3200 50  0001 C CNN
F 3 "~" V 5300 3200 50  0001 C CNN
	1    5300 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5DC8993A
P 5700 3200
F 0 "R5" V 5504 3200 50  0000 C CNN
F 1 "470" V 5595 3200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 5700 3200 50  0001 C CNN
F 3 "~" H 5700 3200 50  0001 C CNN
	1    5700 3200
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR0122
U 1 1 5DC89D7C
P 5900 3200
F 0 "#PWR0122" H 5900 3050 50  0001 C CNN
F 1 "+3V3" V 5915 3328 50  0000 L CNN
F 2 "" H 5900 3200 50  0001 C CNN
F 3 "" H 5900 3200 50  0001 C CNN
	1    5900 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	5900 3200 5800 3200
Wire Wire Line
	5600 3200 5400 3200
$Comp
L Regulator_Linear:LP2950-3.3_TO92 U1
U 1 1 5DC90CBA
P 1500 2550
F 0 "U1" H 1500 2792 50  0000 C CNN
F 1 "LP2950-3.3_TO92" H 1500 2701 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1500 2775 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lp2950-n.pdf" H 1500 2500 50  0001 C CNN
	1    1500 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Small D2
U 1 1 5DC94400
P 950 2650
F 0 "D2" V 904 2718 50  0000 L CNN
F 1 "1N4148" V 995 2718 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" V 950 2650 50  0001 C CNN
F 3 "~" V 950 2650 50  0001 C CNN
	1    950  2650
	0    1    1    0   
$EndComp
$Comp
L Device:D_Small D1
U 1 1 5DC950D8
P 950 2350
F 0 "D1" V 904 2418 50  0000 L CNN
F 1 "1N4148" V 995 2418 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" V 950 2350 50  0001 C CNN
F 3 "~" V 950 2350 50  0001 C CNN
	1    950  2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1200 2550 950  2550
Wire Wire Line
	950  2450 950  2550
Connection ~ 950  2550
Wire Wire Line
	950  3000 950  2750
Wire Wire Line
	1400 3000 1400 3350
$Comp
L power:GND #PWR0123
U 1 1 5DC9AA01
P 1500 2850
F 0 "#PWR0123" H 1500 2600 50  0001 C CNN
F 1 "GND" H 1505 2677 50  0000 C CNN
F 2 "" H 1500 2850 50  0001 C CNN
F 3 "" H 1500 2850 50  0001 C CNN
	1    1500 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2550 1900 2550
Wire Wire Line
	2150 2550 2150 2450
Wire Wire Line
	2150 2450 2350 2450
Connection ~ 2350 2450
Wire Wire Line
	950  2150 950  2250
$Comp
L power:VDC #PWR0124
U 1 1 5DCA2B52
P 950 2150
F 0 "#PWR0124" H 950 2050 50  0001 C CNN
F 1 "VDC" H 950 2425 50  0000 C CNN
F 2 "" H 950 2150 50  0001 C CNN
F 3 "" H 950 2150 50  0001 C CNN
	1    950  2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3800 5750 3800
$Comp
L Device:C_Small C6
U 1 1 5DCE9D73
P 4750 4400
F 0 "C6" H 4842 4446 50  0000 L CNN
F 1 "100n" H 4842 4355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 4750 4400 50  0001 C CNN
F 3 "~" H 4750 4400 50  0001 C CNN
	1    4750 4400
	1    0    0    -1  
$EndComp
Connection ~ 4750 4300
Wire Wire Line
	4750 4300 4800 4300
$Comp
L power:GND #PWR0125
U 1 1 5DCEA2F8
P 4750 4550
F 0 "#PWR0125" H 4750 4300 50  0001 C CNN
F 1 "GND" H 4755 4377 50  0000 C CNN
F 2 "" H 4750 4550 50  0001 C CNN
F 3 "" H 4750 4550 50  0001 C CNN
	1    4750 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4550 4750 4500
$Comp
L power:VDC #PWR0126
U 1 1 5DCF47E3
P 8750 2050
F 0 "#PWR0126" H 8750 1950 50  0001 C CNN
F 1 "VDC" H 8750 2325 50  0000 C CNN
F 2 "" H 8750 2050 50  0001 C CNN
F 3 "" H 8750 2050 50  0001 C CNN
	1    8750 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 2050 8950 2050
$Comp
L power:+3V3 #PWR0127
U 1 1 5DCF87C4
P 8500 1950
F 0 "#PWR0127" H 8500 1800 50  0001 C CNN
F 1 "+3V3" H 8515 2123 50  0000 C CNN
F 2 "" H 8500 1950 50  0001 C CNN
F 3 "" H 8500 1950 50  0001 C CNN
	1    8500 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 2150 8950 2150
Wire Wire Line
	8500 1950 8500 2150
Text GLabel 8850 2250 0    50   Input ~ 0
USB_D-
Wire Wire Line
	8850 2250 8950 2250
Text GLabel 8850 2350 0    50   Input ~ 0
USB_D+
Wire Wire Line
	8850 2350 8950 2350
Text GLabel 8850 2450 0    50   Input ~ 0
RESET
Wire Wire Line
	8850 2450 8950 2450
Text GLabel 6000 4200 1    50   Input ~ 0
PB2
Text GLabel 8850 2550 0    50   Input ~ 0
PB2
Wire Wire Line
	8850 2550 8950 2550
Text GLabel 4900 3800 3    50   Input ~ 0
PA7
Text GLabel 8850 2650 0    50   Input ~ 0
PA7
Wire Wire Line
	8850 2650 8950 2650
Text GLabel 8850 2750 0    50   Input ~ 0
MOSI
Wire Wire Line
	8850 2750 8950 2750
$Comp
L power:GND #PWR0128
U 1 1 5DD19D90
P 8800 2850
F 0 "#PWR0128" H 8800 2600 50  0001 C CNN
F 1 "GND" H 8805 2677 50  0000 C CNN
F 2 "" H 8800 2850 50  0001 C CNN
F 3 "" H 8800 2850 50  0001 C CNN
	1    8800 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 2850 8950 2850
$Comp
L Connector_Generic:Conn_01x09 J4
U 1 1 5DD1D6F9
P 9150 2450
F 0 "J4" H 9230 2492 50  0000 L CNN
F 1 "Conn_01x09" H 9230 2401 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x09_P2.54mm_Vertical" H 9150 2450 50  0001 C CNN
F 3 "~" H 9150 2450 50  0001 C CNN
	1    9150 2450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J5
U 1 1 5DD1EB0C
P 9150 3700
F 0 "J5" H 9230 3692 50  0000 L CNN
F 1 "Conn_01x08" H 9230 3601 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 9150 3700 50  0001 C CNN
F 3 "~" H 9150 3700 50  0001 C CNN
	1    9150 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0129
U 1 1 5DD1F5E9
P 8850 4100
F 0 "#PWR0129" H 8850 3850 50  0001 C CNN
F 1 "GND" H 8855 3927 50  0000 C CNN
F 2 "" H 8850 4100 50  0001 C CNN
F 3 "" H 8850 4100 50  0001 C CNN
	1    8850 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 4100 8950 4100
Text GLabel 8850 4000 0    50   Input ~ 0
MISO
Wire Wire Line
	8850 4000 8950 4000
Text GLabel 8850 3900 0    50   Input ~ 0
SCK
Wire Wire Line
	8850 3900 8950 3900
Text GLabel 5000 3400 1    50   Input ~ 0
PA3
Text GLabel 6450 3300 1    50   Input ~ 0
PA2
Text GLabel 8850 3800 0    50   Input ~ 0
PA3
Wire Wire Line
	8850 3800 8950 3800
Wire Wire Line
	4700 4200 6450 4200
Wire Wire Line
	4700 3500 5450 3500
Wire Wire Line
	4700 3800 5450 3800
Text GLabel 8850 3700 0    50   Input ~ 0
PA2
Wire Wire Line
	8850 3700 8950 3700
Text GLabel 4750 3200 1    50   Input ~ 0
PA1
Text GLabel 4900 3100 2    50   Input ~ 0
PA0
Text GLabel 8850 3500 0    50   Input ~ 0
PA0
Wire Wire Line
	8850 3500 8950 3500
Wire Wire Line
	4700 3200 5200 3200
Text GLabel 8850 3600 0    50   Input ~ 0
PA1
Wire Wire Line
	8850 3600 8950 3600
$Comp
L power:+3V3 #PWR0130
U 1 1 5DD3B012
P 8950 3300
F 0 "#PWR0130" H 8950 3150 50  0001 C CNN
F 1 "+3V3" H 8965 3473 50  0000 C CNN
F 2 "" H 8950 3300 50  0001 C CNN
F 3 "" H 8950 3300 50  0001 C CNN
	1    8950 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 3300 8950 3400
$Comp
L Switch:SW_Push SW3
U 1 1 5DC01581
P 6450 4400
F 0 "SW3" V 6404 4548 50  0000 L CNN
F 1 "SW_Push" V 6495 4548 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 6450 4600 50  0001 C CNN
F 3 "~" H 6450 4600 50  0001 C CNN
	1    6450 4400
	0    1    1    0   
$EndComp
Connection ~ 6450 4200
Wire Wire Line
	6450 4200 6750 4200
Wire Wire Line
	6450 4600 6750 4600
$Comp
L Switch:SW_Push SW4
U 1 1 5DC05DED
P 8200 3500
F 0 "SW4" V 8154 3648 50  0000 L CNN
F 1 "SW_Push" V 8245 3648 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 8200 3700 50  0001 C CNN
F 3 "~" H 8200 3700 50  0001 C CNN
	1    8200 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	7500 3300 7950 3300
Connection ~ 7950 3300
Wire Wire Line
	7950 3300 8200 3300
Wire Wire Line
	7950 3700 8200 3700
Connection ~ 7950 3700
$Comp
L Device:D_Zener_Small D8
U 1 1 5DC2F521
P 1250 3650
F 0 "D8" V 1204 3718 50  0000 L CNN
F 1 "ZF 3,3" V 1295 3718 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" V 1250 3650 50  0001 C CNN
F 3 "~" V 1250 3650 50  0001 C CNN
	1    1250 3650
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener_Small D9
U 1 1 5DC30026
P 1550 3950
F 0 "D9" V 1504 4018 50  0000 L CNN
F 1 "ZF 3,3" V 1595 4018 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" V 1550 3950 50  0001 C CNN
F 3 "~" V 1550 3950 50  0001 C CNN
	1    1550 3950
	0    1    1    0   
$EndComp
Connection ~ 1400 3000
Wire Wire Line
	1400 3000 950  3000
Wire Wire Line
	1250 3750 1250 3850
Wire Wire Line
	1250 3950 900  3950
Wire Wire Line
	1250 3850 1250 3950
Connection ~ 1550 3850
Wire Wire Line
	1200 3850 1550 3850
Wire Wire Line
	1550 4050 1250 4050
Wire Wire Line
	1250 4050 1250 3950
Connection ~ 1250 3950
Wire Wire Line
	1250 3550 1550 3550
Connection ~ 1250 3550
$Comp
L Device:C_Small C8
U 1 1 5DD0E70C
P 1900 2750
F 0 "C8" H 1992 2796 50  0000 L CNN
F 1 "100n" H 1992 2705 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 1900 2750 50  0001 C CNN
F 3 "~" H 1900 2750 50  0001 C CNN
	1    1900 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2650 1900 2550
Connection ~ 1900 2550
Wire Wire Line
	1900 2550 2150 2550
$Comp
L Device:CP_Small C7
U 1 1 5DD1937A
P 650 2650
F 0 "C7" H 738 2696 50  0000 L CNN
F 1 "4.7µ" H 738 2605 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 650 2650 50  0001 C CNN
F 3 "~" H 650 2650 50  0001 C CNN
	1    650  2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 3000 2350 3000
Wire Wire Line
	1500 2850 1900 2850
Connection ~ 1500 2850
Wire Wire Line
	950  2550 650  2550
Wire Wire Line
	650  2750 650  2850
Wire Wire Line
	650  2850 1500 2850
$Comp
L Transistor_BJT:BC547 Q1
U 1 1 5DCCA501
P 4100 5700
F 0 "Q1" H 4291 5746 50  0000 L CNN
F 1 "BC547" H 4291 5655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4300 5625 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 4100 5700 50  0001 L CNN
	1    4100 5700
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q2
U 1 1 5DCCA96D
P 4600 5700
F 0 "Q2" H 4791 5746 50  0000 L CNN
F 1 "BC547" H 4791 5655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4800 5625 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 4600 5700 50  0001 L CNN
	1    4600 5700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
