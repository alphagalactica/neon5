# Mitmachen bei NEON5

Danke, dass du den Garten größer machen willst! NEON5 ist ein ruhiges, digitales
Kunstwerk — Beiträge sind ausdrücklich willkommen, besonders **neue Erscheinungen**
für die fünf Elemente. *(English? Scroll down for a short summary.)*

## Schnellstart

Kein Build, keine Abhängigkeiten:

```bash
git clone https://github.com/alphagalactica/neon5
cd neon5
# einfach index.html im Browser öffnen — oder:
python3 -m http.server 8000   # http://localhost:8000
```

## Der einfachste Beitrag: eine neue Erscheinung

Die gesamte Bibliothek lebt in **[`variants.js`](variants.js)** — eine Variante pro
Zeile, damit Diffs lesbar bleiben. Das Schema mit allen Formtypen, Parametern und
Grenzen steht als Kommentar direkt am Dateikopf. Kurzfassung:

```js
{ n: 'MONDDISTEL', c: ['#9FD8B8', '#C8F0D8', '#FFD8E8'], f: 'gras',
  p: { blades: 18, height: 1.3, lean: 0.2 } },
```

1. Eintrag ans Ende des passenden Elements anhängen (Name muss einzigartig sein).
2. Im Browser prüfen — Konsole öffnen:
   - `NF.gallery('erde', 2)` zeigt Seite 2 (je 8 Erscheinungen) deines Elements,
   - `NF.plant('erde', 0.1)` pflanzt gezielt, `NF.warp(20)` spult 20 s Zeit vor.
3. Screenshot machen und mit in den Pull Request packen.

## Die Ruhe-Regeln (nicht verhandelbar)

NEON5 ist bewusst epilepsiefreundlich und beruhigend:

- **Nichts blitzt.** Keine Helligkeits-Oszillation schneller als ~0,3 Hz.
- **Pastell-Neon:** je Farbe mindestens ein Kanal ≥ `0x9F`, nie alle drei < `0x60`,
  keine reinen Grautöne — der weiße 1px-Kern kommt automatisch.
- **Linien-Ästhetik:** 1 px Vollton | 1 px Weiß | 1 px Vollton auf Schwarz.
  Keine Flächenfüllungen, keine Texturen, keine Assets.
- **Klang bleibt konsonant:** alle Töne stammen aus der Session-Pentatonik und
  rasten aufs 16tel-Raster — bitte keine eigenen Frequenzen an der Tonleiter vorbei.

## Projektaufbau

| Datei | Inhalt |
| --- | --- |
| `index.html` | Engine: Planet, Renderer der Formtypen, Spieluhr-Sequencer (WebAudio), UI |
| `variants.js` | **Die Bibliothek der Erscheinungen — hier passiert Community-Magie** |
| `neongarten.html` | v0.2-Vorstufe (eigenständig, bleibt unangetastet) |
| `Dockerfile`, `docker-compose.yml` | Deployment (Nginx, Dokploy-kompatibel) |

Neue **Formtypen** (Renderer) sind auch willkommen — sie leben in `index.html`
(`drawErde`, `drawFeuer`, `drawWasser`, `drawWindEnt`, `drawLove`). Bitte vorher
ein Issue eröffnen, damit wir Form und Parameter-Schema abstimmen.

## Pull Requests

- Klein und fokussiert: eine Erscheinung (oder wenige verwandte) pro PR.
- Screenshot(s) im PR — wir kuratieren nach Auge.
- Namen: deutsch, poetisch, einzigartig, 3–18 Zeichen, keine Ziffern.
- Mit dem PR stellst du deinen Beitrag wie das Gesamtwerk unter
  [CC0](LICENSE) — frei für alle.

## English summary

NEON5 is a calm generative art piece (neon lines on black, epilepsy-friendly,
procedural music-box audio). The easiest contribution: add one line to
`variants.js` (schema documented at the top of that file), test it in your
browser via the `NF.*` console helpers, attach a screenshot to your PR.
German poetic names please — it's part of the artwork. Everything is CC0.
