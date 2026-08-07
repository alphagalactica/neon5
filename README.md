# NEON5 — Die fünf Elemente

Ein digitales Kunstwerk. Frei für alle.

> *English: a calm generative art piece — a black planet in a dark universe,
> five elemental forces at your fingertip, and a music-box symphony your world
> composes itself. No build, no assets, one HTML file. Contributions welcome,
> see [CONTRIBUTING.md](CONTRIBUTING.md). Everything is CC0.*

Ein schwarzer Planet in einem dunklen Universum — und ein Finger, der Welten erschafft:
**Erde, Feuer, Wasser, Wind** und **Liebe**, das fünfte Element, das alles verbindet.

Die Bildsprache stammt aus einer Automotive-HUD-Designstudie: schwarzer Grund, Linien
aus exakt 1&nbsp;px leuchtender Volltonfarbe mit 1&nbsp;px weißem Kern. Alles ist ruhig
gehalten — nichts blitzt, nichts drängt. Animationen bleiben unter ~0,3&nbsp;Hz,
Übergänge dauern Sekunden (epilepsiefreundlich, `prefers-reduced-motion` wird
zusätzlich respektiert).

## Der Planet ist eine Schallplatte

Kein Dauerklang, kein Teppich: **Musik entsteht nur, wo du erschaffen hast** —
dazwischen Stille und Echo. Eine sichtbare **Nadel mit Tonarm** wandert über die
Erdrundung und liest deine Geschöpfe wie eine Platte; wo sie liest, pulst sie.

- **Wo** du pflanzt (der Winkel), bestimmt den Platz im Takt.
- **Links oder rechts** wird zum Stereo-Panorama.
- **Das Element** bestimmt das Instrument: Erde ist eine **Handpan**, Wasser
  **Regenrohr** und Glastropfen, Feuer ein **Gong**, der nach dem Anschlag
  aufblüht, Wind ein **Atem**, Liebe ein **Cello**-Schwellklang im Zweiklang.
- **Die Erscheinung** (Variante) bestimmt die Tonhöhe.

Alle Klänge rasten auf ein 16tel-Raster und stammen aus der Pentatonik über einer
still weiterwandernden, konsonanten Akkordfolge — nichts gerät aus dem Takt, nichts
wird dissonant. Tonart und Tempo werden bei jedem Besuch neu ausgelost:
**jede Session ist eine einmalige Aufführung deiner Welt.**

## 120 Erscheinungen

Jedes Element trägt eine Bibliothek von 24 Farb- und Formvarianten mit eigenen Namen —
Bäume, Blumen, Farne, Kakteen, Pilze, Kristalle; Kerzen, Lagerfeuer, Vulkane,
Irrlichter; Quellen, Geysire, Nebel, Eisquellen; Bänder, Wirbel, Federn, Fahnen,
Schleier; Sterne, Ringe, Herzen, Kometen. Jeder Fingertipp zieht eine neue Erscheinung —
ihr Name leuchtet kurz auf.

## Erleben

**[index.html](index.html)** — im Browser öffnen, eintreten, erschaffen.
Auf Mobilgeräten spielt das Werk im **Querformat**; im Hochformat bittet ein
stilles Zeichen ums Drehen. Vom Home-Bildschirm aus startet es dank Manifest
als Vollbild-App direkt quer (wo das System es erlaubt).

- Unten ein Element wählen (oder Tasten `1`–`5`), dann den Planeten berühren.
- Erde sät sich mit der Zeit selbst weiter; erst mit Liebe blüht die Welt.
- Orbit-Tempo links oben (Taste `O`): **Stille · Gleiten · Flug** — vom stillen
  Schweben bis zum Satellitenflug über deine Welt, mit sanftem Beschleunigen.
- Das Universum lebt mit: je mehr Geschöpfe, desto mehr Sterne erwachen,
  Milchstraße und ferne Galaxien werden klarer — und bei jeder gespielten Note
  antwortet irgendwo ein Stern.
- `M` Ton · `G` Glow/pur · `i` Vernissage-Seite · `×`/`C` die Welt sanft loslassen.
- Die Welt wird lokal im Browser gespeichert und wartet beim nächsten Besuch —
  die nächste Session spielt sie neu.

Kein Asset, kein Build, keine Abhängigkeiten. Klang vollständig prozedural (WebAudio).

## Mitmachen

Die Bibliothek der Erscheinungen lebt in **[`variants.js`](variants.js)** — eine
Variante pro Zeile, das Schema steht als Kommentar am Dateikopf. Der einfachste
Beitrag ist eine neue Erscheinung: eine Zeile anhängen, im Browser prüfen
(Konsole: `NF.gallery('erde', 0)`), Screenshot in den Pull Request. Alles Weitere —
Ruhe-Regeln, Projektaufbau, PR-Checkliste — in **[CONTRIBUTING.md](CONTRIBUTING.md)**.

| Datei | Inhalt |
| --- | --- |
| [`index.html`](index.html) | Engine: Planet, Formen-Renderer, Spieluhr-Sequencer, UI |
| [`variants.js`](variants.js) | Bibliothek der 120 Erscheinungen — der Ort für Beiträge |
| [`neongarten.html`](neongarten.html) | v0.2-Vorstufe des Projekts |
| [`Dockerfile`](Dockerfile) · [`docker-compose.yml`](docker-compose.yml) | Deployment |

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
