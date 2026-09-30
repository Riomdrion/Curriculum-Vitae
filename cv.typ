// cv.typ: `typst watch cv.typ` voor live preview, `typst compile cv.typ` voor de pdf
// foto: zet "foto.jpg" naast dit bestand en verander onderstaande regel in: #let foto = "foto.jpg"
#let foto = "Rodin_van_den_Berg.jpg"

#let accent = rgb("#1f4e79")
#let muted = rgb("#5a5a5a")
#let side-bg = rgb("#eef2f7")

#set document(title: "CV Rodin van den Berg", author: "Rodin van den Berg")
#set page(
  paper: "a4",
  margin: (left: 0.9cm, right: 1.4cm, y: 1.2cm),
  background: place(left + top, rect(width: 5.7cm, height: 100%, fill: side-bg, stroke: none)),
)
#set text(font: ("Liberation Sans", "DejaVu Sans", "Libertinus Serif"), size: 9.5pt, lang: "nl")
#set par(leading: 0.6em)
#set list(indent: 0.2em, body-indent: 0.5em, spacing: 0.6em)

#let head(title) = {
  v(0.9em)
  text(weight: "bold", size: 10.5pt, fill: accent, tracking: 0.5pt, upper(title))
  v(-0.4em)
  line(length: 100%, stroke: 0.6pt + accent)
  v(0.1em)
}

#let job(role, org, dates) = {
  grid(
    columns: (1fr, auto),
    text(weight: "bold")[#role] + text(fill: muted)[ · #org],
    text(fill: muted, size: 9pt)[#dates],
  )
  v(-0.3em)
}

#let skill(title, body) = {
  text(weight: "bold", size: 9pt)[#title]
  v(-0.55em)
  text(size: 9pt)[#body]
  v(0.35em)
}

#let weblink(url, label) = link(url, text(fill: accent, underline(label)))

// ---------- foto ----------
#let photo = {
  let d = 3.6cm
  if foto == none {
    box(width: d, height: d, radius: 50%, fill: rgb("#cfd8e3"), align(center + horizon, text(fill: muted, size: 9pt)[foto]))
  } else {
    box(width: d, height: d, radius: 50%, clip: true, image(foto, width: d, height: d, fit: "cover"))
  }
}

#grid(
  columns: (4.1cm, 1fr),
  column-gutter: 1.4cm,

  // ===== zijbalk =====
  [
    #align(center, photo)
    #v(0.6em)

    #text(weight: "bold", fill: accent, size: 10pt)[CONTACT]
    #v(-0.3em)
    #text(size: 9pt)[
      Nuenen \
      +31 6 43801862 \
      rodin.0403\@gmail.com \
      #weblink("https://github.com/Riomdrion")[GitHub] \
      #weblink("https://www.linkedin.com/in/rodin-van-den-berg-289874226")[LinkedIn]
    ]

    #v(0.7em)
    #text(weight: "bold", fill: accent, size: 10pt)[VAARDIGHEDEN]
    #v(-0.2em)
    #skill("Development")[C\#, ASP.NET Core, Blazor, EF Core, PHP (Laravel, Symfony), Python, Java, React, Tailwind]
    #skill("Databases")[MS SQL Server, MySQL, MongoDB]
    #skill("Cloud en infra")[Azure, DigitalOcean, Proxmox, vSphere, Docker, Linux (Arch, Debian)]
    #skill("Tooling")[Git, GitLab, Traefik, Authentik, Tailscale]

    #v(0.4em)
    #text(weight: "bold", fill: accent, size: 10pt)[OVERIG]
    #v(-0.2em)
    #skill("Talen")[Nederlands (C1) \ Engels (B2)]
    #skill("Rijbewijs")[B en AM]
  ],

  // ===== hoofdkolom =====
  [
    #text(size: 22pt, weight: "bold", fill: accent)[Rodin van den Berg]
    #v(-0.6em)
    #text(size: 11pt, fill: muted)[Software Engineering-student · afstudeerstage vanaf feb 2027]

    #head("Profiel")
    HBO-ICT-student (Avans) met ruim vier jaar praktijkervaring bij een interne ICT-afdeling en een backend-rol bij SocialDeal. Sterk in .NET, Blazor en Azure, met interesse in security. Zoekt een afstudeerstage in de regio Eindhoven met een eigen project en veel autonomie.

    #head("Werkervaring")
    #job("Backend Developer", "SocialDeal", "feb 2026 – heden")
    - Lid van het team dat bugs oplost in de SocialDeal-API en -webapplicatie
    - Het team bouwt herbruikbare integraties met reserveringssystemen van partners
    - Stack: PHP (Symfony), MySQL
    #v(0.6em)

    #job("IT-medewerker", "Gemco Industries B.V.", "feb 2022 – heden")
    #text(fill: muted, size: 9pt)[Dienstverband onderbroken van feb tot jul 2023 voor een stage.]
    #v(-0.2em)
    - Migratie van on-premise naar Azure, oude servers uitgefaseerd
    - Helpdesksysteem herbouwd in C\# en gedeployed in Azure
    - Legacy Access/VBA-applicatie gemigreerd naar ASP.NET Core en Blazor
    - Onderzoek en implementatie van wachtwoordbeheer, wifi en bekabeling

    #head("Stages")
    #job("Stagiair", "SocialDeal", "sep 2025 – feb 2026")
    Onderzoek naar AI voor het vinden van dezelfde hotelkamers bij concurrenten.
    #v(0.5em)
    #job("Stagiair", "Gemco Industries B.V.", "feb 2023 – jul 2023")
    Servicedesk, back-ups, Azure-beheer en onderzoek naar open-source helpdesksoftware.
    #v(0.5em)
    #job("Stagiair", "Gemco Industries B.V.", "sep 2021 – feb 2022")
    Eerstelijns servicedesk en server-back-ups.

    #head("Opleiding")
    #job("HBO-ICT, Software Engineering", "Avans Hogeschool", "sep 2023 – 2027 (verwacht)")
    Minor Toegepaste Psychologie. Vakken onder meer security en functioneel programmeren.
    #v(0.5em)
    #job("MBO-4, Expert IT systems and devices", "Summa College", "sep 2020 – jun 2023")

    #head("Eigen projecten")
    - *Homelab:* Proxmox met self-hosted GitLab, Traefik, Authentik en Tailscale, plus een eigen streamingdienst die automatisch nieuwe releases van films en series zoekt. Mijn leeromgeving sinds 2020.
    - *#weblink("https://www.kerasjiek.nl")[kerasjiek.nl]:* Website voor een startend bedrijf, samen met een kennis gebouwd. Het bedrijf is soepel gestart en is nog steeds actief.
  ],
)
