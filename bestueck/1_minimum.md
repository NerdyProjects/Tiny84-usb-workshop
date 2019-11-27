# Minimalbestückung

Die Minimalbestückung ermöglicht dir, das Löten kennenzulernen. Du benötigst lediglich eine handvoll Bauteile und hast nach Abschluss deiner Arbeiten eine Schaltung zusammengebaut, welche mehrere LEDs blinken lässt und von dir ein und ausgeschaltet werden kann.

## Bauteilliste
* BT1: Batteriehalter für CR2032 Knopfzelle, Reichelt KZH 20-1
* Eine CR2032 Knopfzelle (3V)
* C1, C6: 100 nF Kondensator (RM2.5), Reichelt KERKO 100N
* C2: 4.7µF Elektrolytkondensator (RM2.5), Reichelt RAD 104 4,7/100. Einbaurichtung beachten.
* U2: 14 poliger IC Sockel, Reichelt GS 14. Kann weggelassen werden, wird aber dringend empfohlen.
* U2: ATTiny84A-PU Mikrocontroller, Reichelt: ATTINY 84A-PU. Hinweis: Sollte vorprogrammiert sein, damit deine Schaltung etwas tut.
* D5/D6/D7: 3mm LEDs gelb/grün/rot oder beliebige Farben. Einbaurichtung beachten.
* R5/R6/R7: 470 ohm Widerstand (gelb-violett-braun--gold), Reichelt 1/4W 470
* JP1: Stiftleiste 2 oder 3 polig + Steckbrücke, um die Pins 2-3 zum Einschalten zu verbinden

## Bestücken

![Bestückungsplan](1_minimum.svg)

Die Position der Bauteile kannst du vom Bestückungsdruck und/oder diesen Bestückungsplan ablesen.
Fange am besten mit den Widerständen an, da dies die unempfindlichsten Bauteile sind.

* Lege den Widerstand an seine Position und merke dir, wo die Beinchen geknickt werden müssen, damit er passend und schön sitzt
* Biege die Beinchen mit einer Spitzzange im 90 Grad Winkel
* Stecke den Widerstand an seine Position. Damit er beim Löten nicht herausfällt, kannst du die Beinchen an der Unterseite etwas auseinanderbiegen
* Erwärme die Lötstelle für 1-2 Sekunden mit dem Lötkolben. Achte dabei darauf, die Lötspitze möglichst flächig aufzulegen, um einen guten Wärmeübergang von der Lötspitze zum Pad auf der Platine aber auch zum Beinchen des Widerstands zu bekommen
* Führe etwas Lötzinn hinzu. Soviel, dass die Lötstelle sich ein kleines bisschen wölbt, aber keine richtige Kugel wird.
* Entferne den Lötkolben wieder und prüfe dein Ergebnis

Anschließend kannst du die Kondensatoren einlöten. Achte bei C2, dem Elektrolytkondensator, darauf, dass dieser richtig herum eingebaut werden muss. Auf der Platine ist die "+" Seite mit einem kleinen Plus-Zeichen markiert, die "-" Seite dick schwarz ausgemalt. Der Kondensator selbst hat eine Markierung an der "-" Seite.
Die Keramikkondensatoren C1 und C6 musst du eventuell noch passend biegen. Nutze dazu wieder eine Spitzzange.

Löte dann die LEDs ein. Auch hier ist die Richtung wieder relevant: Eine Seite der LED ist am Gehäuse leicht abgeflacht, gleichzeitig ist dieses Beinchen etwas kürzer. Im Bestückungsplan ist diese Seite der LED als Linie statt Kreisbogen markiert, es ist die Seite, welche zum Mikrocontroller U2 hinzeigt.

Als letztes lötest du eine 2- oder 3-polige Stiftleiste für JP1, den Batteriehalter BT1 und den IC Sockel U2 ein.

Prüfe abschließend deine Platine:
* Sehen alle Lötstellen gleichmäßig und ähnlich aus?
* Sind Lötbrücken entstanden, die Kurzschlüsse erzeugen?
* Sind alle Bauteile am richtigen Ort?
* Sind alle Bauteile richtigherum (Elko, LEDs, Batteriehalter)?

Nun kannst du den Mikrocontroller U2 in den Sockel einsetzen. Sei dabei vorsichtig, keine Pins zu verbiegen. Eine Seite ist mit einer Kerbe markiert, diese findest du im Sockel sowie auf der Platine wieder. Setze den IC richtig herum ein!

Als letzten Schritt sezt du die Batterie BT1 ein. Achte darauf, sie richtig herum einzusetzen, die Schaltung verfügt über keinen Verpolschutz und geht dann kaputt.

Wenn du bei der Stiftleiste die beiden rechten Pins, 2+3, mit einem Jumper verbindest, sollten die LEDs anfangen zu blinken.

Herzlichen Glückwunsch! Du hast deine ersten Löterfahrungen gemacht. Lust auf mehr? In weiteren Teilen dieses Workshops kannst du weitere Teile hinzufügen, um mit deiner Schaltung zu interagieren, statt einer Batterie den USB Port als Stromversorgung zu benutzen oder gar eigene Anwendungen auf den Mikrocontroller zu spielen - quasi deinen eigenen Arduino zu bauen.

Auch wenn das Blinken der LED so wunderschön anzusehen ist, solltest du den Jumper oder die Batterie entfernen, wenn du es nicht sehen möchtest. Die Batterielaufzeit beträgt ungefähr 80 Stunden LED-leuchten, bei dem vorprogrammierten Blinkmuster aller 3 LEDs also etwa 5 Tage. Tu der Umwelt also etwas gutes und schalte das Gerät aus, wenn du es nicht benötigst.
