# NEON5 — Die fünf Elemente

Ein Kunstprojekt. Ein schwarzer Planet in einem dunklen Universum — und ein Finger,
der Welten erschafft: **Erde, Feuer, Wasser, Wind** und **Liebe**, das fünfte Element,
das alles verbindet.

Die Bildsprache stammt aus einer Automotive-HUD-Designstudie: schwarzer Grund,
Linien aus exakt 1&nbsp;px leuchtender Volltonfarbe mit 1&nbsp;px weißem Kern.
Alles ist ruhig gehalten — nichts blitzt, nichts drängt. Animationen bleiben unter
~0,3&nbsp;Hz, Übergänge dauern Sekunden (epilepsiefreundlich, `prefers-reduced-motion`
wird zusätzlich respektiert).

## Erleben

**[index.html](index.html)** — im Browser öffnen, tippen, erschaffen.

- Unten ein Element wählen (oder Tasten `1`–`5`), dann den Planeten berühren.
- **Erde** pflanzt Bäume und Gräser — und die Welt sät sich mit der Zeit selbst weiter.
- **Feuer** entzündet ruhige Feuerstellen mit aufsteigenden Gluten.
- **Wasser** lässt Quellen sprudeln und Ringe über die Oberfläche wandern.
- **Wind** legt Strömungsbänder um den Planeten (auch über der Oberfläche tippen).
- **Liebe** setzt wandernde Lichter frei, die Fäden zu den Geschöpfen spinnen —
  erst mit ihr blühen die Bäume, und der Planet bekommt seinen Schein.
- `M` Ton an/aus · `G` Glow/pur · `×` (oder `C`) die Welt sanft loslassen.
- Die Welt wird lokal im Browser gespeichert und wartet beim nächsten Besuch.

Der Klang ist vollständig prozedural (WebAudio): ein leiser Teppich, dazu für jedes
Element eine eigene, weiche Stimme. Kein Asset, kein Build, keine Abhängigkeiten —
eine einzige HTML-Datei.

## Historie

- **[neongarten.html](neongarten.html)** — v0.2, der generative Garten: 24 schöne
  Begriffe (Mondblume, Schneestille, Eisfarn, Nachtlotus, Nordlicht …), aus denen
  dieses Projekt gewachsen ist.
- v0.1 war ein Neonlinien-Rennspiel-Prototyp — die Ruhe hat gewonnen.

## Deployment

Statisches Hosting genügt (z.&nbsp;B. Dokploy als Static Site, Zieldomain
`neon5.alphagalactica.space`): Repo-Root ausliefern, `index.html` ist der Einstieg.
Kein Build-Schritt.
