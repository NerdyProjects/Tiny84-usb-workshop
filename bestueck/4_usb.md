# Kommunikation mit dem Computer

Diese Schaltung ist dafür vorbereitet, mit dem Computer verbunden zu werden. Einerseits, damit du deine eigenen Programme aufspielen kannst, andererseits kannst du sie auch als "USB Gadget" verwenden, beispielsweise eine USB Tastatur, die automatisch deine Visitenkarte eintippt, sobald sie angeschlossen wird. Hierzu benötigen wir noch ein paar Bauteile.

# Bauteilliste
* R1, R2: 68 Ohm Widerstand, Reichelt 1/4W 68: blau-grau-schwarz--gold
* R3: 1,5 kOhm Widerstand, Reichelt 1/4W 1k5: braun-grün-rot--gold (Im Kit eventuell 1,8 kOhm beiliegend: braun-grau-schwarz-braun--braun)

![Bestückungsplan](4_usb.svg)
# Benutzen

Dieser Abschnitt muss leider noch geschrieben werden... Kurz für die Erfahrenen:
Der ATTiny ist mit dem Micronucleus Bootloader vorprogrammiert. Der Bootloader wird durch Drücken von SW1 während des Einschaltens aktiviert.
Benutze ATTinyCore in der Arduino IDE um Programme für den ATTiny84 zu erstellen. Die Taktfrequenz beträgt 1 MHz - du kannst den Prescaler in der Software umstellen, um 8 MHz zu bekommen (Achtung: Im Batteriebetrieb könnte das zu Problemen führen). Das Programmieren kannst du mittels der micronucleus-CLI machen, ich möchte dir allerdings in naher Zukunft dafür eine eigene Arduino Integration über ein Board bieten.
