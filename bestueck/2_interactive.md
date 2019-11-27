# Interaktivbestückung

So eine blinkende LED ist ja was feines, aber wäre es nicht schöner, mit der Schaltung zu kommunizieren?
Bauen wir doch einfach zwei Taster hinzu.

# Bauteilliste
* SW1, SW2: Taster 6mm oder Taster 12mm (z.B. Reichelt RND 210-00191)

# Bestücken

![Bestückungsplan](2_interactive.svg)

Vor dem Bestücken solltest du die Schaltung ausschalten und zusätzlich sicherheitshalber die Batterie entfernen.
Setze den Taster in die Mitte des jeweiligen Feldes auf - auf der Platine sind Löcher für 6mm und 12mm Taster vorgesehen, deswegen bleiben 4 Löcher frei.

# Spielen
Schaltest du die Schaltung wieder ein, so siehst du das gewohne Blinken.
Drückst du Schalter "SW1" etwas länger (knapp 1s), so schaltest du zwischen 3 Modi um:
* Modus 1 (nach Einschalten): Alle 3 LEDs blinken
* Modus 2: LED3 blinkt. LED1 wird durch kurzes Drücken von SW1 aktiviert, LED2 wird durch kurzes Drücken von SW2 aktiviert
* Modus 3: LED3 blinkt langsam. LED1 und 2 leuchten, lassen sich durch SW1/SW2 kurz ausschalten


Schau im nächsten Teil, um deine Schaltung per USB zu versorgen.
