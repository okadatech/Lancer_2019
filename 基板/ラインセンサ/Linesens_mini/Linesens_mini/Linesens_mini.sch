EESchema Schematic File Version 4
LIBS:lineses-cache
EELAYER 29 0
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
L Sensor_Proximity:CNY70 U1
U 1 1 5C640B09
P 1050 1200
F 0 "U1" H 1050 1517 50  0000 C CNN
F 1 "CNY70" H 1050 1426 50  0000 C CNN
F 2 "ビットマップエクスポート:TPR-105F" H 1050 1000 50  0001 C CNN
F 3 "https://www.vishay.com/docs/83751/cny70.pdf" H 1050 1300 50  0001 C CNN
	1    1050 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5C6411DE
P 600 900
F 0 "R1" H 670 946 50  0000 L CNN
F 1 "100" H 670 855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 530 900 50  0001 C CNN
F 3 "~" H 600 900 50  0001 C CNN
	1    600  900 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5C641630
P 1450 1450
F 0 "R2" H 1520 1496 50  0000 L CNN
F 1 "1M" H 1520 1405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1380 1450 50  0001 C CNN
F 3 "~" H 1450 1450 50  0001 C CNN
	1    1450 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1300 1450 1300
Wire Wire Line
	750  1100 600  1100
Wire Wire Line
	600  1100 600  1050
$Comp
L power:+5V #PWR01
U 1 1 5C641BAF
P 600 700
F 0 "#PWR01" H 600 550 50  0001 C CNN
F 1 "+5V" H 615 873 50  0000 C CNN
F 2 "" H 600 700 50  0001 C CNN
F 3 "" H 600 700 50  0001 C CNN
	1    600  700 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR03
U 1 1 5C64207C
P 1350 750
F 0 "#PWR03" H 1350 600 50  0001 C CNN
F 1 "+3.3V" H 1365 923 50  0000 C CNN
F 2 "" H 1350 750 50  0001 C CNN
F 3 "" H 1350 750 50  0001 C CNN
	1    1350 750 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5C642587
P 700 1650
F 0 "#PWR02" H 700 1400 50  0001 C CNN
F 1 "GND" H 705 1477 50  0000 C CNN
F 2 "" H 700 1650 50  0001 C CNN
F 3 "" H 700 1650 50  0001 C CNN
	1    700  1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1100 1350 750 
Wire Wire Line
	1450 1600 750  1600
Wire Wire Line
	700  1600 700  1650
Wire Wire Line
	750  1300 750  1600
Connection ~ 750  1600
Wire Wire Line
	750  1600 700  1600
Wire Wire Line
	600  750  600  700 
Text Label 1950 1300 2    50   ~ 0
Line_out_1
Connection ~ 1450 1300
Wire Wire Line
	1450 1300 1950 1300
$Comp
L Sensor_Proximity:CNY70 U2
U 1 1 5C647F6A
P 2550 1200
F 0 "U2" H 2550 1517 50  0000 C CNN
F 1 "CNY70" H 2550 1426 50  0000 C CNN
F 2 "ビットマップエクスポート:TPR-105F" H 2550 1000 50  0001 C CNN
F 3 "https://www.vishay.com/docs/83751/cny70.pdf" H 2550 1300 50  0001 C CNN
	1    2550 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5C647F70
P 2100 900
F 0 "R3" H 2170 946 50  0000 L CNN
F 1 "100" H 2170 855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2030 900 50  0001 C CNN
F 3 "~" H 2100 900 50  0001 C CNN
	1    2100 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5C647F76
P 2950 1450
F 0 "R4" H 3020 1496 50  0000 L CNN
F 1 "1M" H 3020 1405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2880 1450 50  0001 C CNN
F 3 "~" H 2950 1450 50  0001 C CNN
	1    2950 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1300 2950 1300
Wire Wire Line
	2250 1100 2100 1100
Wire Wire Line
	2100 1100 2100 1050
$Comp
L power:+5V #PWR04
U 1 1 5C647F7F
P 2100 700
F 0 "#PWR04" H 2100 550 50  0001 C CNN
F 1 "+5V" H 2115 873 50  0000 C CNN
F 2 "" H 2100 700 50  0001 C CNN
F 3 "" H 2100 700 50  0001 C CNN
	1    2100 700 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR08
U 1 1 5C647F85
P 2850 750
F 0 "#PWR08" H 2850 600 50  0001 C CNN
F 1 "+3.3V" H 2865 923 50  0000 C CNN
F 2 "" H 2850 750 50  0001 C CNN
F 3 "" H 2850 750 50  0001 C CNN
	1    2850 750 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5C647F8B
P 2200 1650
F 0 "#PWR05" H 2200 1400 50  0001 C CNN
F 1 "GND" H 2205 1477 50  0000 C CNN
F 2 "" H 2200 1650 50  0001 C CNN
F 3 "" H 2200 1650 50  0001 C CNN
	1    2200 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1100 2850 750 
Wire Wire Line
	2950 1600 2250 1600
Wire Wire Line
	2200 1600 2200 1650
Wire Wire Line
	2250 1300 2250 1600
Connection ~ 2250 1600
Wire Wire Line
	2250 1600 2200 1600
Wire Wire Line
	2100 750  2100 700 
Text Label 3450 1300 2    50   ~ 0
Line_out_2
Connection ~ 2950 1300
Wire Wire Line
	2950 1300 3450 1300
$Comp
L Sensor_Proximity:CNY70 U3
U 1 1 5C64F179
P 4000 1200
F 0 "U3" H 4000 1517 50  0000 C CNN
F 1 "CNY70" H 4000 1426 50  0000 C CNN
F 2 "ビットマップエクスポート:TPR-105F" H 4000 1000 50  0001 C CNN
F 3 "https://www.vishay.com/docs/83751/cny70.pdf" H 4000 1300 50  0001 C CNN
	1    4000 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5C64F17F
P 3550 900
F 0 "R5" H 3620 946 50  0000 L CNN
F 1 "100" H 3620 855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3480 900 50  0001 C CNN
F 3 "~" H 3550 900 50  0001 C CNN
	1    3550 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5C64F185
P 4400 1450
F 0 "R6" H 4470 1496 50  0000 L CNN
F 1 "1M" H 4470 1405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4330 1450 50  0001 C CNN
F 3 "~" H 4400 1450 50  0001 C CNN
	1    4400 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 1300 4400 1300
Wire Wire Line
	3700 1100 3550 1100
Wire Wire Line
	3550 1100 3550 1050
$Comp
L power:+5V #PWR010
U 1 1 5C64F18E
P 3550 700
F 0 "#PWR010" H 3550 550 50  0001 C CNN
F 1 "+5V" H 3565 873 50  0000 C CNN
F 2 "" H 3550 700 50  0001 C CNN
F 3 "" H 3550 700 50  0001 C CNN
	1    3550 700 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR012
U 1 1 5C64F194
P 4300 750
F 0 "#PWR012" H 4300 600 50  0001 C CNN
F 1 "+3.3V" H 4315 923 50  0000 C CNN
F 2 "" H 4300 750 50  0001 C CNN
F 3 "" H 4300 750 50  0001 C CNN
	1    4300 750 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5C64F19A
P 3650 1650
F 0 "#PWR011" H 3650 1400 50  0001 C CNN
F 1 "GND" H 3655 1477 50  0000 C CNN
F 2 "" H 3650 1650 50  0001 C CNN
F 3 "" H 3650 1650 50  0001 C CNN
	1    3650 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 1100 4300 750 
Wire Wire Line
	4400 1600 3700 1600
Wire Wire Line
	3650 1600 3650 1650
Wire Wire Line
	3700 1300 3700 1600
Connection ~ 3700 1600
Wire Wire Line
	3700 1600 3650 1600
Wire Wire Line
	3550 750  3550 700 
Text Label 4900 1300 2    50   ~ 0
Line_out_3
Connection ~ 4400 1300
Wire Wire Line
	4400 1300 4900 1300
$Comp
L Sensor_Proximity:CNY70 U4
U 1 1 5C6542F6
P 5450 1200
F 0 "U4" H 5450 1517 50  0000 C CNN
F 1 "CNY70" H 5450 1426 50  0000 C CNN
F 2 "ビットマップエクスポート:TPR-105F" H 5450 1000 50  0001 C CNN
F 3 "https://www.vishay.com/docs/83751/cny70.pdf" H 5450 1300 50  0001 C CNN
	1    5450 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5C6542FC
P 5000 900
F 0 "R7" H 5070 946 50  0000 L CNN
F 1 "100" H 5070 855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4930 900 50  0001 C CNN
F 3 "~" H 5000 900 50  0001 C CNN
	1    5000 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5C654302
P 5850 1450
F 0 "R8" H 5920 1496 50  0000 L CNN
F 1 "1M" H 5920 1405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5780 1450 50  0001 C CNN
F 3 "~" H 5850 1450 50  0001 C CNN
	1    5850 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1300 5850 1300
Wire Wire Line
	5150 1100 5000 1100
Wire Wire Line
	5000 1100 5000 1050
$Comp
L power:+5V #PWR016
U 1 1 5C65430B
P 5000 700
F 0 "#PWR016" H 5000 550 50  0001 C CNN
F 1 "+5V" H 5015 873 50  0000 C CNN
F 2 "" H 5000 700 50  0001 C CNN
F 3 "" H 5000 700 50  0001 C CNN
	1    5000 700 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR018
U 1 1 5C654311
P 5750 750
F 0 "#PWR018" H 5750 600 50  0001 C CNN
F 1 "+3.3V" H 5765 923 50  0000 C CNN
F 2 "" H 5750 750 50  0001 C CNN
F 3 "" H 5750 750 50  0001 C CNN
	1    5750 750 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5C654317
P 5100 1650
F 0 "#PWR017" H 5100 1400 50  0001 C CNN
F 1 "GND" H 5105 1477 50  0000 C CNN
F 2 "" H 5100 1650 50  0001 C CNN
F 3 "" H 5100 1650 50  0001 C CNN
	1    5100 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1100 5750 750 
Wire Wire Line
	5850 1600 5150 1600
Wire Wire Line
	5100 1600 5100 1650
Wire Wire Line
	5150 1300 5150 1600
Connection ~ 5150 1600
Wire Wire Line
	5150 1600 5100 1600
Wire Wire Line
	5000 750  5000 700 
Text Label 6350 1300 2    50   ~ 0
Line_out_4
Connection ~ 5850 1300
Wire Wire Line
	5850 1300 6350 1300
$Comp
L Sensor_Proximity:CNY70 U5
U 1 1 5C659A95
P 6850 1200
F 0 "U5" H 6850 1517 50  0000 C CNN
F 1 "CNY70" H 6850 1426 50  0000 C CNN
F 2 "ビットマップエクスポート:TPR-105F" H 6850 1000 50  0001 C CNN
F 3 "https://www.vishay.com/docs/83751/cny70.pdf" H 6850 1300 50  0001 C CNN
	1    6850 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5C659A9B
P 6400 900
F 0 "R9" H 6470 946 50  0000 L CNN
F 1 "100" H 6470 855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6330 900 50  0001 C CNN
F 3 "~" H 6400 900 50  0001 C CNN
	1    6400 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5C659AA1
P 7250 1450
F 0 "R10" H 7320 1496 50  0000 L CNN
F 1 "1M" H 7320 1405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7180 1450 50  0001 C CNN
F 3 "~" H 7250 1450 50  0001 C CNN
	1    7250 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1300 7250 1300
Wire Wire Line
	6550 1100 6400 1100
Wire Wire Line
	6400 1100 6400 1050
$Comp
L power:+5V #PWR019
U 1 1 5C659AAA
P 6400 700
F 0 "#PWR019" H 6400 550 50  0001 C CNN
F 1 "+5V" H 6415 873 50  0000 C CNN
F 2 "" H 6400 700 50  0001 C CNN
F 3 "" H 6400 700 50  0001 C CNN
	1    6400 700 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR021
U 1 1 5C659AB0
P 7150 750
F 0 "#PWR021" H 7150 600 50  0001 C CNN
F 1 "+3.3V" H 7165 923 50  0000 C CNN
F 2 "" H 7150 750 50  0001 C CNN
F 3 "" H 7150 750 50  0001 C CNN
	1    7150 750 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5C659AB6
P 6500 1650
F 0 "#PWR020" H 6500 1400 50  0001 C CNN
F 1 "GND" H 6505 1477 50  0000 C CNN
F 2 "" H 6500 1650 50  0001 C CNN
F 3 "" H 6500 1650 50  0001 C CNN
	1    6500 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1100 7150 750 
Wire Wire Line
	7250 1600 6550 1600
Wire Wire Line
	6500 1600 6500 1650
Wire Wire Line
	6550 1300 6550 1600
Connection ~ 6550 1600
Wire Wire Line
	6550 1600 6500 1600
Wire Wire Line
	6400 750  6400 700 
Text Label 7750 1300 2    50   ~ 0
Line_out_5
Connection ~ 7250 1300
Wire Wire Line
	7250 1300 7750 1300
$Comp
L Sensor_Proximity:CNY70 U6
U 1 1 5C6601ED
P 8500 1200
F 0 "U6" H 8500 1517 50  0000 C CNN
F 1 "CNY70" H 8500 1426 50  0000 C CNN
F 2 "ビットマップエクスポート:TPR-105F" H 8500 1000 50  0001 C CNN
F 3 "https://www.vishay.com/docs/83751/cny70.pdf" H 8500 1300 50  0001 C CNN
	1    8500 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5C6601F3
P 8050 900
F 0 "R11" H 8120 946 50  0000 L CNN
F 1 "100" H 8120 855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7980 900 50  0001 C CNN
F 3 "~" H 8050 900 50  0001 C CNN
	1    8050 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5C6601F9
P 8900 1450
F 0 "R12" H 8970 1496 50  0000 L CNN
F 1 "1M" H 8970 1405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8830 1450 50  0001 C CNN
F 3 "~" H 8900 1450 50  0001 C CNN
	1    8900 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 1300 8900 1300
Wire Wire Line
	8200 1100 8050 1100
Wire Wire Line
	8050 1100 8050 1050
$Comp
L power:+5V #PWR026
U 1 1 5C660202
P 8050 700
F 0 "#PWR026" H 8050 550 50  0001 C CNN
F 1 "+5V" H 8065 873 50  0000 C CNN
F 2 "" H 8050 700 50  0001 C CNN
F 3 "" H 8050 700 50  0001 C CNN
	1    8050 700 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR032
U 1 1 5C660208
P 8800 750
F 0 "#PWR032" H 8800 600 50  0001 C CNN
F 1 "+3.3V" H 8815 923 50  0000 C CNN
F 2 "" H 8800 750 50  0001 C CNN
F 3 "" H 8800 750 50  0001 C CNN
	1    8800 750 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 5C66020E
P 8150 1650
F 0 "#PWR029" H 8150 1400 50  0001 C CNN
F 1 "GND" H 8155 1477 50  0000 C CNN
F 2 "" H 8150 1650 50  0001 C CNN
F 3 "" H 8150 1650 50  0001 C CNN
	1    8150 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 1100 8800 750 
Wire Wire Line
	8900 1600 8200 1600
Wire Wire Line
	8150 1600 8150 1650
Wire Wire Line
	8200 1300 8200 1600
Connection ~ 8200 1600
Wire Wire Line
	8200 1600 8150 1600
Wire Wire Line
	8050 750  8050 700 
Text Label 9400 1300 2    50   ~ 0
Line_out_6
Connection ~ 8900 1300
Wire Wire Line
	8900 1300 9400 1300
$Comp
L Device:C C4
U 1 1 5CDAED7D
P 8450 4850
F 0 "C4" H 8565 4896 50  0000 L CNN
F 1 "10u" H 8565 4805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8488 4700 50  0001 C CNN
F 3 "~" H 8450 4850 50  0001 C CNN
	1    8450 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5CDAF2A7
P 8100 4850
F 0 "C3" H 8215 4896 50  0000 L CNN
F 1 "10u" H 8215 4805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8138 4700 50  0001 C CNN
F 3 "~" H 8100 4850 50  0001 C CNN
	1    8100 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5CDAF8DD
P 8100 5000
F 0 "#PWR028" H 8100 4750 50  0001 C CNN
F 1 "GND" H 8105 4827 50  0000 C CNN
F 2 "" H 8100 5000 50  0001 C CNN
F 3 "" H 8100 5000 50  0001 C CNN
	1    8100 5000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR030
U 1 1 5CDAFB06
P 8450 4700
F 0 "#PWR030" H 8450 4550 50  0001 C CNN
F 1 "+3V3" H 8465 4873 50  0000 C CNN
F 2 "" H 8450 4700 50  0001 C CNN
F 3 "" H 8450 4700 50  0001 C CNN
	1    8450 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5CDAFE23
P 8450 5000
F 0 "#PWR031" H 8450 4750 50  0001 C CNN
F 1 "GND" H 8455 4827 50  0000 C CNN
F 2 "" H 8450 5000 50  0001 C CNN
F 3 "" H 8450 5000 50  0001 C CNN
	1    8450 5000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR027
U 1 1 5CDB0190
P 8100 4700
F 0 "#PWR027" H 8100 4550 50  0001 C CNN
F 1 "+5V" H 8115 4873 50  0000 C CNN
F 2 "" H 8100 4700 50  0001 C CNN
F 3 "" H 8100 4700 50  0001 C CNN
	1    8100 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5C67A7E1
P 7600 4800
F 0 "C2" H 7715 4846 50  0000 L CNN
F 1 "10u" H 7715 4755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7638 4650 50  0001 C CNN
F 3 "~" H 7600 4800 50  0001 C CNN
	1    7600 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5C67A7E7
P 7250 4800
F 0 "C1" H 7365 4846 50  0000 L CNN
F 1 "10u" H 7365 4755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7288 4650 50  0001 C CNN
F 3 "~" H 7250 4800 50  0001 C CNN
	1    7250 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5C67A7ED
P 7250 4950
F 0 "#PWR023" H 7250 4700 50  0001 C CNN
F 1 "GND" H 7255 4777 50  0000 C CNN
F 2 "" H 7250 4950 50  0001 C CNN
F 3 "" H 7250 4950 50  0001 C CNN
	1    7250 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR024
U 1 1 5C67A7F3
P 7600 4650
F 0 "#PWR024" H 7600 4500 50  0001 C CNN
F 1 "+3V3" H 7615 4823 50  0000 C CNN
F 2 "" H 7600 4650 50  0001 C CNN
F 3 "" H 7600 4650 50  0001 C CNN
	1    7600 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 5C67A7F9
P 7600 4950
F 0 "#PWR025" H 7600 4700 50  0001 C CNN
F 1 "GND" H 7605 4777 50  0000 C CNN
F 2 "" H 7600 4950 50  0001 C CNN
F 3 "" H 7600 4950 50  0001 C CNN
	1    7600 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR022
U 1 1 5C67A7FF
P 7250 4650
F 0 "#PWR022" H 7250 4500 50  0001 C CNN
F 1 "+5V" H 7265 4823 50  0000 C CNN
F 2 "" H 7250 4650 50  0001 C CNN
F 3 "" H 7250 4650 50  0001 C CNN
	1    7250 4650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J1
U 1 1 5C67BD52
P 3400 3400
F 0 "J1" H 3480 3392 50  0000 L CNN
F 1 "Conn_01x06" H 3480 3301 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 3400 3400 50  0001 C CNN
F 3 "~" H 3400 3400 50  0001 C CNN
	1    3400 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J2
U 1 1 5C67CD66
P 5350 3350
F 0 "J2" H 5430 3342 50  0000 L CNN
F 1 "Conn_01x06" H 5430 3251 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 5350 3350 50  0001 C CNN
F 3 "~" H 5350 3350 50  0001 C CNN
	1    5350 3350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 5C67DC7E
P 2950 3200
F 0 "#PWR09" H 2950 3050 50  0001 C CNN
F 1 "+5V" H 2965 3373 50  0000 C CNN
F 2 "" H 2950 3200 50  0001 C CNN
F 3 "" H 2950 3200 50  0001 C CNN
	1    2950 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR014
U 1 1 5C67DC84
P 4700 3250
F 0 "#PWR014" H 4700 3100 50  0001 C CNN
F 1 "+3.3V" H 4715 3423 50  0000 C CNN
F 2 "" H 4700 3250 50  0001 C CNN
F 3 "" H 4700 3250 50  0001 C CNN
	1    4700 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR015
U 1 1 5C680227
P 4850 3150
F 0 "#PWR015" H 4850 3000 50  0001 C CNN
F 1 "+5V" H 4865 3323 50  0000 C CNN
F 2 "" H 4850 3150 50  0001 C CNN
F 3 "" H 4850 3150 50  0001 C CNN
	1    4850 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR07
U 1 1 5C680475
P 2700 3300
F 0 "#PWR07" H 2700 3150 50  0001 C CNN
F 1 "+3.3V" H 2715 3473 50  0000 C CNN
F 2 "" H 2700 3300 50  0001 C CNN
F 3 "" H 2700 3300 50  0001 C CNN
	1    2700 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3150 4850 3150
Wire Wire Line
	4700 3250 5150 3250
Wire Wire Line
	3200 3300 2700 3300
Wire Wire Line
	2950 3200 3200 3200
$Comp
L power:GND #PWR06
U 1 1 5C684C47
P 2400 3450
F 0 "#PWR06" H 2400 3200 50  0001 C CNN
F 1 "GND" H 2405 3277 50  0000 C CNN
F 2 "" H 2400 3450 50  0001 C CNN
F 3 "" H 2400 3450 50  0001 C CNN
	1    2400 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5C684E25
P 4450 3400
F 0 "#PWR013" H 4450 3150 50  0001 C CNN
F 1 "GND" H 4455 3227 50  0000 C CNN
F 2 "" H 4450 3400 50  0001 C CNN
F 3 "" H 4450 3400 50  0001 C CNN
	1    4450 3400
	1    0    0    -1  
$EndComp
Text Label 2700 3500 0    50   ~ 0
Line_out_1
Wire Wire Line
	3200 3500 2700 3500
Text Label 2700 3600 0    50   ~ 0
Line_out_2
Wire Wire Line
	3200 3600 2700 3600
Text Label 2700 3700 0    50   ~ 0
Line_out_3
Wire Wire Line
	3200 3700 2700 3700
Text Label 4650 3450 0    50   ~ 0
Line_out_4
Wire Wire Line
	5150 3450 4650 3450
Text Label 4650 3550 0    50   ~ 0
Line_out_5
Wire Wire Line
	5150 3550 4650 3550
Text Label 4650 3650 0    50   ~ 0
Line_out_6
Wire Wire Line
	5150 3650 4650 3650
Wire Wire Line
	4450 3350 4450 3400
Wire Wire Line
	4450 3350 5150 3350
Wire Wire Line
	2400 3400 2400 3450
Wire Wire Line
	2400 3400 3200 3400
$EndSCHEMATC
