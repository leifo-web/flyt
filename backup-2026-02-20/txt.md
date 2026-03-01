
1. Kart over malene dine nå

layouts/_default/baseof.html
Rammeverket: <html>, <head>, header, footer og <main class="page"> med {{ block "main" . }}. Her bestemmes global bredde og luft.

layouts/_default/single.html
Felles artikkelside for nesten alt: tittel, brødtekst og forrige/neste‑navigasjon for både tekst‑ og bilde‑artikler (så lenge de ikke har egen spesialmal).

layouts/index.html
Forside som bare sier «define "main" { .Content }» og dermed bruker samme <main class="page">‑ramme som alt annet.

layouts/arkiv/single.html
Egen arkiv‑spesialmal: tittel «Arkiv», grupperer alle andre sider etter år, norsk dato, listeoppsett.

Ingen egne tekst‑ eller bilde‑single‑maler lenger; de arver _default/single.html.

