# (Solder) workshop: Building a tiny, USB capable microcontroller board

## Part list
Start with the absolute minimum and add all the parts you like. If you got this as a workshop kit, your microcontroller should be preprogrammed to do something with just the LED, so you don't need to care about anything else than soldering the components.

If you want to change the code or use a brand new microcontroller, you need some more parts or even a second arduino acting as a programmer. Read on later.
### Absolute minimum
* BT1: Coin cell battery holder, KZH 20-1
* A CR2032 (or similar) 3V Lithium battery to power the board. Put that in when you are done soldering.
* C1: 100 nF THT ceramic capacitor. Optionally, chose a 0805 or 0603 SMD capacitor.
* C2: 4.7µF (or a bit bigger) polarized capacitor (grid 2.5mm). Care: The part has the "-" side marked - that is the filled side on the pcb. The voltage of the capacitor does not matter.
* U2: 14 pin THT IC socket (PDIP-14). This is not necessary but strongly recommended to be able to easily exchange the microcontroller.
* U2: ATTiny84A microcontroller. Choose the one in a 14 pin DIP package.
* D7: 3mm LED: red, green or yellow. Blue/White likely don't work because they need more than 3V.
* R7: 470 ohms resistor - anything from 100-1000 ohms work. It is used to limit the LED current.
* JP1: Either solder a 2 or 3 pin header and use a jumper on pins 2-3 to switch the power on or permanently connect pins 2 and 3 with a piece of wire or tin.

### Some more LEDs
* D6: Another 3mm LED (2)
* R6: Another 470 ohms resistor for the other LED
* D5: Another 3mm LED (3)
* R5: Another 470 ohms resistor

### Some buttons
* SW1 and SW2: 6 or 12mm push buttons

### A buzzer
* A piezo buzzer (7.6mm grid) - SUMMER EPM 121

### Powering the board through USB instead
* JP1: Finally use a 3 pin header here - 1-2 choses USB power, 2-3 choses battery power
* J2: USB B socket - USB BW
* D3 and D4: Any normal diode like 1N4148 to lower the 5V USB voltage a bit.
  * if you don't want to go on and use USB data transfer or external parts, you can use a solder bridge instead, as the board is fine with 5V.

### Allround power supply: 3,5-30 V or USB or Battery
* Remove D3 and D4 and leave them open
* D1, D2: Use any normal diode like 1N4148 so the board uses either an external power or USB - depending on what's available
* U1: LP2950-3.3 a voltage regulator in TO92 package (any other 3.3 V regulator in that package is also fine - 100 mA is enough)

### Changing the microcontrollers software: Get creative!
* D3/D4 need to be in place, alternatively the all-round power supply.
* R1/R2: 68 ohms resistors in series with the USB data lines
* R3: 1.5 kilo ohms resistor that pulls up USB D- to signal the computer that we are a low speed USB device

### Connect some stuff: Pin headers
* Be aware of the voltage external components are compatible with! This board is designed to be operated with 3.3 V as soon as you use USB. Do not connect external 5V input signals!
* Put a 9 pin and a 8 pin header to reach all IO of the microcontroller and put some external hardware to it via jumper wires.
* Put a 4 pin header on the I2C header to connect for example a BME280 temperature sensor shield directly.
  * You likely need R4 and R8 I2C pullup resistors. 2.2 kOhms up to 10 kOhms are probably fine.

### Analog voltage inputs
* Optionally put C3 - another 100 nF ceramic capacitor. This allows better quality analog voltage readings configuring the ADC with external capacitor at Aref.

### Fucked up? 6 pin AVR in system program connector
* solder a 2x3 pin header on the ISP to be able to use a ISP adapter. Alternatively, you can use jumper wires and another Arduino as an ISP adapter, all the ISP pins are available at the other pin headers as well.
