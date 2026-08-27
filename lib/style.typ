#import "@preview/fontawesome:0.6.2": fa-icon

#let accent-green = rgb("#0d4c15")
#let link-blue = rgb("#005eb0")

#let serif = "EB Garamond"
#let sans = "Roboto"

#let margin = 12mm
#let body-size = 10pt
#let small-size = 10pt

#let spacing = 0.9em
#let header-weight = 900
#let header-tracking = 0.09em
#let body-tracking = -0.01em
#let body-leading = 0.7em

#let rule(width: 100%) = line(length: width, stroke: 0.5pt + accent-green)

#let header-row(left-content, right-content) = grid(
  columns: (1fr, auto),
  align(left)[#left-content], align(right)[#right-content],
)

#let bullet-list(items) = list(
  ..items,
  marker: [•],
  indent: 0pt,
  body-indent: 8pt,
  tight: true,
)

#let keywords-line(items) = text(size: small-size)[
  #v(1pt)
  #strong[Keywords: #items.join(" • ")]
]
