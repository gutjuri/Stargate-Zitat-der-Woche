# Stargate Zitat der Woche

Gibt das Stargate Zitat der Woche von [stargate-wiki.de](http://stargate-wiki.de/wiki/Hauptseite) aus.

## Benutzung:

### Manuell

Einfach das Ruby-Skript ausführen.

```sh
$ ruby sgquote.rb
```

Gibt das Stargate Zitat der Woche für die aktuelle Kalenderwoche aus.

```sh
$ ruby sgquote.rb -n
```

Gibt das Stargate Zitat der Woche für die aktuelle Kalenderwoche aus und legt keinen Cache an, um das Laden von Zitaten zu beschleunigen.

```sh
$ ruby sgquote.rb -w 15
```

Gibt das Stargate Zitat der Woche für die Kalenderwoche 15 aus. 

### Per Docker

Wer Docker installiert hat aber keine passende Ruby Version kann das Programm in einem Container ausführen.
Passendes run-script wird mitgeliefert.

```sh
./rundocker.sh
```

Die Kommandozeilenoptionen funktionieren weiterhin, z.B:

```sh
./rundocker.sh -n -w 20
```
