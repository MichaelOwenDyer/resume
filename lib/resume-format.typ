#import "style.typ": *

#let render-project-entry(it) = [
  #header-row(strong[#it.title], it.dates)
  #if it.summary != none [#it.summary]
  #if it.bullets.len() > 0 [#bullet-list(it.bullets)]
  #keywords-line(it.keywords)
]

#let sidebar-width = 32%
#let column-gutter = 20pt

#let resume(data) = {
  set page(paper: "a4", margin: margin)
  set text(font: sans, size: body-size, tracking: body-tracking)
  show link: underline
  show link: set text(fill: link-blue)
  set par(leading: body-leading)

  show heading.where(level: 1): it => block(above: 24pt, below: 14pt, width: 100%)[
    #text(
      font: sans,
      size: body-size,
      weight: header-weight,
      tracking: header-tracking,
      fill: accent-green,
    )[#upper(it)]
  ]

  grid(
    columns: (sidebar-width, 1fr),
    column-gutter: column-gutter,
    [#image("/assets/photo.png", width: 93%, height: 60mm)],
    [
      #rule()
      #v(5pt)
      #block(below: 20pt)[
        #text(font: serif, size: 36pt, fill: accent-green)[#data.name]
        #v(25pt, weak: true)
        #text(font: serif, size: 17pt)[#data.tagline-full]
      ]
      #align(bottom, rule())
    ],
  )
  v(10pt)
  grid(
    columns: (sidebar-width, 1fr),
    column-gutter: column-gutter,
    [
      = #data.labels.contact
      #grid(
        columns: 2,
        gutter: 10pt,
        column-gutter: 1pt,
        ..(
          ("envelope", link(data.contact.email-href)[#data.contact.email]),
          ("phone", data.contact.phone.join(" ")),
          ("location-dot", [#data.contact.address.at(0) \ #data.contact.address.at(1)]),
          ("github", link(data.contact.github.url)[#data.contact.github.label]),
          ("linkedin", link(data.contact.linkedin.url)[#data.contact.linkedin.label]),
        ).map(it => (
          box(width: 16pt)[#fa-icon(it.at(0), solid: true)],
          [#v(1.5pt) #text(size: 11pt)[#it.at(1)]]
        ))
        .flatten()
      )
      #v(10pt)
      #rule()

      #set par(leading: 0.9em)
      = #data.labels.skills
      #data.skills.map(s => [
        #strong[#s.title] \
        #s.items.join(" • ")
      ]).join(v(5pt))

      = #data.labels.education
      #data.education.map(it => [
        #strong[#it.institution] \
        #it.degree \
        #it.dates
        #for d in it.details [ \ #d ]
      ]).join(v(10pt))
    ],
    [
      #set par(leading: 0.9em)
      = #data.labels.experience
      #data.experience.map(it => [
        #show link: emph
        #header-row([#strong[#it.org] \ #it.location], [#it.role \ #it.dates])
        #it.summary
        #v(1pt)
        #bullet-list(it.bullets)
        #keywords-line(it.keywords)
      ]).join(v(10pt))

      = #data.labels.projects
      #data.projects.map(it => render-project-entry(it)).join(v(10pt))
    ],
  )

  pagebreak()

  rule()
  grid(
    columns: (sidebar-width, 1fr),
    column-gutter: column-gutter,
    [
      #align(bottom + left, rule())
    ],
    [
      #text(font: serif, size: 30pt, fill: accent-green)[#data.name]
      #v(15pt, weak: true)
      #text(font: serif, size: 17pt)[#data.tagline-short]
      #align(bottom, rule())
    ],
  )
  grid(
    columns: (sidebar-width, 1fr),
    column-gutter: column-gutter,
    [
      = #data.labels.education-continued
      #data.education-continued.map(it => [
        #strong[#it.institution] \
        #if it.program != none [#link(it.program.url)[#it.program.label] \ ]
        #if it.dates != none [#it.dates]
        #bullet-list(it.bullets)
      ]).join(v(10pt))

      = #data.labels.languages
      #data.languages.map(it => [#it.name -- #it.level]).join([ \ ])

      = #data.labels.interests
      #data.interests.map(it => [
        #strong[#it.subject] \
        #if "dates" in it [#it.dates \ ]
        #bullet-list(it.entries)
      ]).join(v(5pt))
    ],
    [
      = #data.labels.projects-continued
      #data.projects-continued.map(it => render-project-entry(it)).join(v(10pt))

      = #data.labels.teaching
      #data.teaching.map(it => block(below: 11pt)[
        #header-row(strong(it.org), it.dates)
        #bullet-list(it.bullets)
        #keywords-line(it.keywords)
      ]).join(v(10pt))
    ],
  )
}
