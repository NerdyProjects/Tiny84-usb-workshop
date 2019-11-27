# Stromversorgung per USB
Schön, dass du weitermachen magst. In diesem Teil erweitern wir deine Schaltung mit einem USB Anschluss, um nicht ständig die Batterie tauschen zu müssen. Zusammen mit einem alten Handyladekabel eignet sich die Schaltung dann auch dazu, wochenlang eingeschaltet in der Ecke zu liegen.

An dieser Stelle ist es ratsam, dass du dich entscheidest:
Möchtest du eventuell noch weiter machen und bald deinen Mikrocontroller auch selbst programmieren? Dann gehe am besten zur "Luxusvariante" B.
Du bist dir sicher, dass es dann jetzt auch bald reicht? Dann löte entweder Variante A oder Variante B. Es spielt für dich keine Rolle, A ist etwas einfacher zu löten.

# Variante A: Dioden statt Spannungsregler

Diese Schaltung ist zum Betrieb mit einer Spannung von 2-3V vorgesehen und unterstützt damit später auch den Anschluss zur Datenübertragung per USB mit dem Computer.
Da der USB Port uns jedoch 5V liefert, müssen die restlichen 2V irgendwo hin. In dieser Variante verwenden wir die Dioden D3 und D4 hierzu:
Dioden sind sogenannte Halbleiter. Sie lassen den Strom nur in eine Richtung fließen. Leider kommt dies aber zu einem Preis: "normale" Siliziumdioden haben eine Flussspannung von etwa 0,7 V - sprich diese Spannung fällt an der Diode ab und steht für die Schaltung dahinter nicht zur Verfügung. Genau diesen Effekt machen wir uns hier zu nutze - Spannungsregelung "mal ganz einfach".

## Bauteile
* J2: USB B Buchse, Reichelt USB BW
* D3, D4: Standard Silizium Diode (z.B. 1N4148). Polung beachten

## Bestückung

![Bestückungsplan](3_usb_power.svg)

Fange am besten mit den Dioden an. Ein Strich auf dem Gehäuse markiert die negative Seite: "+" wird auf der anderen Seite angelegt und in die Seite des Strichs durchgeleitet. Schließt du den Strom andersherum an (oder vertauschst die Richtung der Diode), so sperrt die Diode. Die Schaltung bleibt aus. Wissensübertragung: LEDs, LeuchtDIODEN, sind ebenfalls Halbleiter und haben diese Eigenschaft einer Diode. Deswegen leuchtet eine LED auch nur, wenn der Strom "in die richtige Richtung fließt".

Abschließend lötest du die USB Buchse auf. Die großen Löcher mit den Metallclips dienen der zusätzlichen mechanischen Stabilität. Du kannst diese etwas umbiegen und mit einer größeren Menge Lötzinn verlöten, sodass die Buchse mechanisch belastbarer wird.


# Variante B: Ein richtiger Spannungsregler

In Variante A behelfen wir uns mittels zweier Dioden, um die benötigte Versorgungsspannung unserer Schaltung zu erzeugen. Wir haben gelernt: Eine Diode lässt etwa 0,7V abfallen. Was nun aber, wenn wir garnicht wissen, wie unsere Eingangsspannung ist? Wenn wir unsere Schaltung vielleicht von einer 12V Batterie versorgen wollen?

Glücklicherweise gibt es für diese häufige Anforderung eine Lösung - einen Spannungsregler. Als integriertes Bauteil enthält er in seinem Gehäuse ganz klein viele Transistoren, Widerstände und Kapazitäten. Diese "Magie" machen wir uns hier zu nutzen, um unsere Schaltung mit stabilen 3,3V versorgen zu können, wenn wir sie über USB versorgen.

Zum sicheren Betrieb benötigen viele Spannungsregler einen Kondensator am Ein- sowie Ausgang. Diese sorgen dafür, dass der Spannungsregler nicht anfängt zu schwingen.

## Bauteile
* J2: USB B Buchse, Reichelt USB BW
* D2: Standard Silizium Diode (z.B. 1N4148). Polung beachten
* U1: LP2950-3.3 Festspannungsregler 3,3V TO92, Reichelt LP 2950 ACZ3,3
* C7: Elektrolytkondensator 4,7µF RM2,5
* C8: Keramikkondensator 100 nF

## Bestückung
![Bestückungsplan](3_usb_power_regulated.svg)

Mit den meisten Bauteilen solltest du schon zurecht kommen. Der Spannungsregler U1 besitzt 3 Beinchen, die etwas dichter zusammen sind, als du das schon kennst. Sei hier besonders gründlich, dass nach dem Zusammenbau keine Beinchen vebrunden sind. Passiert dir das ausversehen doch, so kann es entgegen des Gefühlt sinnvoll sein, nocheinmal etwas Lötzinn hinzuzugeben: Im Lötzinn ist Flussmittel enthalten, welches das Lötzinn schön an die Stellen fließen lässt, wo es hin soll. Flussmittel geht leider beim längeren Erhitzen - also beim Löten - kaputt. Hilft das nicht, lass dir eine Entlötpumpe sowie gegebenenfalls Entlötlitze zeigen.
Achtung: Der Spannungsregler ist das erste Bauteil, was wirklich Hitzeempfindlich ist. Du solltest es nicht länger als 10 Sekunden mit dem Lötkolben erhitzen und dann eine Pause von mindestens einer halben Minute einlegen.

## weitere Optionen der Spannungsversorgung
Für weitere Optionen bietet dein Board die Stiftleisten links (J4) und rechts (J5). Auf J4 findest du ganz oben "Vext", was soviel wie externe Stromversorgung heißt. Wenn du die Diode D1 ebenfalls mit einer 1N4148 bestückst, so kannst du hier eine Spannung von bis zu 24V anlegen und deine Schaltung damit versorgen.
Die Dioden D1 und D2 sorgen dafür, dass du gleichzeitig USB und eine externe Versorgung anschließen kannst. Es wird die Versorgung mit der höheren Spannung verwendet.

# Betrieb
Nun bekommt der "Schalter" JP1 eine weitere Bedeutung:
* Verbindest du die beiden linken Pins, 1 und 2, so wird deine Schaltung per USB (oder optional externer Versorgung) versorgt.
* Verbindest du die beiden rechten Pins, 2 und 3, so wird deine Schaltung von der Batterie versorgt.
* Auch wenn das schwer möglich ist, achte bitte darauf, niemals alle 3 Pins (bzw. Pins 1 und 3) miteinander zu verbinden. Du würdest dann die Batterie "aufladen" - das nehmen Lithium Knopfzellen dir übel und werden auslaufen. Das ist weder gut für die Umwelt, noch für das Gemüt.

