# NEON5 — Die fünf Elemente

Ein digitales Kunstwerk. Frei für alle.

Ein schwarzer Planet in einem dunklen Universum — und ein Finger, der Welten erschafft:
**Erde, Feuer, Wasser, Wind** und **Liebe**, das fünfte Element, das alles verbindet.

Die Bildsprache stammt aus einer Automotive-HUD-Designstudie: schwarzer Grund, Linien
aus exakt 1&nbsp;px leuchtender Volltonfarbe mit 1&nbsp;px weißem Kern. Alles ist ruhig
gehalten — nichts blitzt, nichts drängt. Animationen bleiben unter ~0,3&nbsp;Hz,
Übergänge dauern Sekunden (epilepsiefreundlich, `prefers-reduced-motion` wird
zusätzlich respektiert).

## Der Planet ist eine Spieluhr

Im Hintergrund erklingt eine harmonische, beruhigende Symphonie — und die Welt selbst
ist ihre Partitur. Ein Taktlicht umkreist den Planeten; jede Schöpfung ist eine Note:

- **Wo** du pflanzt (der Winkel), bestimmt ihren Platz im Takt.
- **Links oder rechts** wird zum Stereo-Panorama.
- **Das Element** bestimmt die Stimme: Erde zupft, Wasser klingt wie Glas,
  Feuer schlägt einen weichen Puls, Wind atmet, Liebe singt Zweiklänge.
- **Die Erscheinung** (Variante) bestimmt die Tonhöhe.

Alle Töne rasten auf ein 16tel-Raster und stammen aus der Pentatonik über einer
konsonanten Akkordfolge — die Symphonie gerät nie aus dem Takt und kennt keine
Dissonanz. Tonart, Tempo und Akkordfolge werden bei jedem Besuch neu ausgelost:
**jede Session ist eine einmalige Aufführung deiner Welt.**

## 120 Erscheinungen

Jedes Element trägt eine Bibliothek von 24 Farb- und Formvarianten mit eigenen Namen —
Bäume, Blumen, Farne, Kakteen, Pilze, Kristalle; Kerzen, Lagerfeuer, Vulkane,
Irrlichter; Quellen, Geysire, Nebel, Eisquellen; Bänder, Wirbel, Federn, Fahnen,
Schleier; Sterne, Ringe, Herzen, Kometen. Jeder Fingertipp zieht eine neue Erscheinung —
ihr Name leuchtet kurz auf.

## Erleben

**[index.html](index.html)** — im Browser öffnen, eintreten, erschaffen.

- Unten ein Element wählen (oder Tasten `1`–`5`), dann den Planeten berühren.
- Erde sät sich mit der Zeit selbst weiter; erst mit Liebe blüht die Welt.
- `M` Ton · `G` Glow/pur · `i` Vernissage-Seite · `×`/`C` die Welt sanft loslassen.
- Die Welt wird lokal im Browser gespeichert und wartet beim nächsten Besuch —
  die nächste Session spielt sie neu.

Kein Asset, kein Build, keine Abhängigkeiten — eine einzige HTML-Datei.
Klang vollständig prozedural (WebAudio).

## Historie

- **[neongarten.html](neongarten.html)** — v0.2, der generative Garten
  (24 schöne Begriffe), aus dem dieses Projekt gewachsen ist.
- v0.1 war ein Neonlinien-Rennspiel-Prototyp — die Ruhe hat gewonnen.

## Deployment

Das Repo bringt alles mit: [`docker-compose.yml`](docker-compose.yml) definiert den
Service **`neon5`** (Nginx, Container-Port 80, angebunden ans externe
`dokploy-network`), das [`Dockerfile`](Dockerfile) kopiert die beiden HTML-Seiten
hinein. In Dokploy: Compose-Dienst mit Compose-Pfad `./docker-compose.yml`,
deployen, dann unter *Domains* den Service `neon5` wählen (Container-Port 80,
Pfad `/`, HTTPS mit Let's Encrypt nach Wunsch) — die Domain muss per DNS auf den
Dokploy-Server zeigen.

Alternativ genügt jedes statische Hosting: `index.html` ausliefern, kein Build-Schritt.

## Lizenz

Frei für alle: [CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/deed.de)
— siehe [LICENSE](LICENSE).
