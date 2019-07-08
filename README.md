# Stargate Zitat der Woche

Gibt das Stargate Zitat der Woche aus

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

Entweder Docker-Container mithilfe des Dockerfiles selbst bauen oder aus dem DockerHub beziehen.

```sh
docker run thehandsome/sgquote:1.0
```
