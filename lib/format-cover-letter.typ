#import "style.typ": *

#let format-cover-letter(data) = {
  set page(paper: "a4", margin: 10mm)
  set text(font: sans, size: body-size)
  set par(leading: .8em)

  align(center)[
    #text(font: serif, weight: "thin", size: 32pt, fill: accent-green)[#data.sender.name]
    #v(20pt, weak: true)
    #text(weight: "light", tracking: 2pt)[
      #data.sender.phone.join("") \
      #data.sender.street, #data.sender.zip #data.sender.place
    ]
  ]
  v(4pt)
  align(center, rule(width: 75%))
  v(10pt)
  data.recipient.join([ \ ])
  align(right, [#data.sender.place, #data.date])
  strong[#data.subject]
  v(10pt)
  data.salutation
  v(10pt)
  data.body.join(v(10pt))
  v(10pt)
  place(image("/assets/signature.png", width: 50mm))
  data.closing
  v(52pt)
  data.sender.name
}
