#import "@preview/touying:0.7.4": *

#import themes.simple: *
//#show: simple-theme.with(aspect-ratio: "16-9")

#set page(
  paper: "a4",
  margin: (top: 2.54cm, bottom: 2.54cm, left: 2.54cm, right: 2.54cm),
  header: align(right)[
    #set text(8pt, fill: luma(120))
    // Opcional: cabecera personalizada
  ],
  footer: context {
    let page_number = counter(page).get().first()
    let total_pages = counter(page).final().first()
    align(center)[#text(9pt)[#page_number]]
  }
)

#set text(
  font: "New Computer Modern",
  size: 11pt,
  lang: "es"
)

#set par(
  justify: true,
  leading: 0.65em,
  first-line-indent: 1.5em
)

#show heading: set text(weight: "bold")
#show heading.where(level: 1): it => block(above: 1.5em, below: 1em, it)

// #set heading(numbering: "1.1")
// #show heading: set text(purple)
// #show heading: set text(font: "Inria Serif")
// //#show heading: set align(center)
// #show heading: it => block[
//     #underline([#emph(it.body) #counter(heading).display()])
// ]
// #show heading: set block(above: 1.4em, below: 1em)
// #show math.equation: set text(weight: "regular")
//
// #set text(
//     font: "New Computer Modern",
//     fill: black,
//     lang: "es",
//     size: 10pt,
//     hyphenate: auto,
// )
//
// #show raw: set text(font: "New Computer Modern Mono")
//
// #set par(leading: 0.55em, spacing: 0.55em, first-line-indent: 1.8em, justify: true)
//
// #set page(
//     fill: gray.lighten(80%),
//     paper: "a4",
//     //flipped: true,
//     margin: 1.75in,
//     //header: align(center)[#smallcaps[the header]],
//     header: context {
//         let num = here().page()
//         let color-titulo = if calc.even(num) { red } else { blue }
//
//         // 1. Buscar el encabezado de nivel 1 más cercano (anterior o actual)
//         // let capitulo-actual = query(
//         //     selector(heading.where(level: 1)).before(here())
//         // )
//         //
//         // // 2. Extraer el texto si existe
//         // let texto-titulo = if capitulo-actual.len() > 0 {
//         //     capitulo-actual.last().body
//         // } else {
//         //     [] // Si no hay ningún capítulo aún
//         // }
//         //
//         // align(right)[
//         //     #text(fill: color-titulo, weight: "bold")[#texto-titulo]
//         // ]
//
//         if calc.even(num) {
//             // Páginas pares: Título general a la izquierda (rojo)
//             align(left)[#text(fill: red, weight: "bold")[Typst: step
//             by step]]
//         } else {
//             // Páginas impares: Título del Capítulo I, II, etc. a la derecha (azul)
//             let caps = query(selector(heading.where(level: 1)).before(here()))
//             let titulo-cap = if caps.len() > 0 { caps.last().body } else { [] }
//
//             align(right)[#text(fill: blue, weight: "bold")[#titulo-cap]]
//         }
//     },
//     footer: context {
//         let num = here().page()
//         // 1. Página actual y Total
//         let actual = counter(page).get().first()
//         let total = counter(page).final().first()
//         let color-titulo = if calc.even(num) { red } else { blue }
//
//         align(center)[
//             #text(fill: color-titulo, weight: "bold")[Página: #num de #total]
//         ]
//     },
//     //numbering: "1 de 1",
//     //number-align: right,
// )

// ┌──────────┐
// │ Document │------------------------------------------------------------
// └──────────┘

// ┌────────────┐
// │ Title page │
// └────────────┘
#page(header: none, footer: none)[
    #align(center + horizon)[
        #title("Typst: step by step")
        #v(1em)
        #text(size: 1.2em)[Easy peasy]
    ]
]
#pagebreak(weak: true)

// ┌────────┐
// │ Indice │
// └────────┘
#outline(depth: 2)
#pagebreak(weak: true)

// ┌──────────┐
// │ Contents │
// └──────────┘
= Preamble

== See me typsting

You can use boxes to wrap anything into text:
#box(image("Imgs/tiger.svg", height: 2em)).

Blocks will always be "separate paragraphs". They will not fit into a
text: #align(center)[
    #v(1em)
    #block(image("Imgs/tiger.svg", width: 25%, scaling: "pixelated"))
    #v(1em)
]

#par(justify: false, first-line-indent: 2em, leading: 1em )[
By the way, at first line of this snippet I've reduced page size to
make justifying more visible, also increasing margins to add blank
space on left and right.

Of course, you can override a `set` rule. This rule just sets the
_default value_ of an argument of an element.
]

Before we continue with rules, we should talk about length. There are
several absolute length units in Typst:
#v(1cm)
#set rect(height: 1em)

#table(
  columns: 2,
  [Points], rect(width: 72pt),
  [Millimeters], rect(width: 25.4mm),
  [Centimeters], rect(width: 2.54cm),
  [Inches], rect(width: 1in),
  [Relative to font size], rect(width: 6.5em)
)

`1 em` = current font size. \
It is a very convenient unit,
so we are going to use it a lot


#rect(width: 20%,
    height: 1cm,
    stroke: red,
    fill: aqua )[Anda!, esto no lo sabía]

First, a rectangle:
#rect()

Let me show how to do
#underline([ _underlined_ text ])

We can also do some maths:
#calc.max(3, 2 * 4)

And finally a little loop:

#for x in range(3) [
  Hi #x.\
]


In this *report*, we will explore the various factors that influence
_fluid dynamics_ in glaciers and how they contribute to the formation
and behaviour of these natural structures.

I am starting out with small text.

#set text(14pt)

This is a bit #text(28pt)[larger,]
don't you think?

+ The climate
+ The topography
    + The geology

- Fast
    - but not faster
- Flexible
    - Enough
- Intuitive

  #figure(
      image("Imgs/glacier.png", width: 35%),
      caption: [
          _Glaciers_ form an important part
          of the earth's climate system.
      ],
  )

= Trying things

== The more the best

#import emoji: face
#face.grin


#let ipa = text(style: "italic",)[/taɪpst/]
#let ipa2 = text([/traɪpst/], style: "italic",)

The canonical way to
pronounce Typst is #ipa.

#table(
    columns: (1fr, 0.75fr),
    [Name], [Typst],
    [Pronunciation], ipa,
    [Pronunciation 2],box(fill: luma(230), inset: 3pt, radius: 6pt)[✨ termino ✨],
)

#let values = (1, 2, 3, 4)
#values.pop() \
#values.len() \

#{"a, b, c".split(", ").join[ --- ]}

#"abc".len() is the same as
#str.len("abc")

= Design Principles

All of Typst has been designed with three key goals in mind: Power,
simplicity, and performance. We think it's time for a system that
matches the power of LaTeX, is easy to learn and use, all while being
fast enough to realize instant preview. To achieve these goals, we
follow three core design principles:

Simplicity through Consistency: If you know how to do one thing in
Typst, you should be able to transfer that knowledge to other
things. If there are multiple ways to do the same thing, one of them
should be at a different level of abstraction than the
other. E.g. it's okay that.

= Introduction

Do the same thing because the former is just syntax sugar for the
latter.

Power through Composability: There are two ways to make something
flexible: Have a knob for everything or have a few knobs that you can
combine in many ways. Typst is designed with the second way in
mind. We provide systems that you can compose in ways we've never even
thought of. TeX is also in the second category, but it's a bit
low-level and therefore people use LaTeX instead. But there, we don't
really have that much composability. Instead, there's a package for
everything

#figure(
    image("Imgs/window.png", width: 35%),
    caption: [Application window],
)

Total displaced soil by glacial flow:

$ 7.32 beta + sum_(i=0)^nabla (Q_i (a_i - epsilon)) / 2 $

Performance $x y$ $->$, $!=$ `print(1)` through Incrementality:
All Typst language features must accommodate for incremental
compilation. Luckily we have comemo, a system for incremental
compilation which does most of the hard work in the background.

= More experiments

#let amazed(term, color: blue) = {
    text(color, box[✨ #term ✨])
}

You are #amazed[beautiful]! and I am #amazed(color: purple)[amazed]!

#let template(doc) = [
    #set text(font: "Inria Serif")
    #show "something cool": [*Typst*]
    #doc
]

#show: template
I am learning something cool today.
It's going great so far!

//#show: amazed.with(color: red)
Most of the time, a template is specified in a different file and then
imported into the document. This way, the main file you write in
is kept clutter free and your template is easily reused. Create a
new text file in the file panel by clicking the plus button and
name it conf.typ. Move the conf function definition inside of that
new file. Now you can access it from your main file by adding an
import before the show rule. Specify the path of the file between
the import keyword and a colon, then name the function that you
want to import.

#for x in (1, 2, 3, "a", "b", "c") [
    El _nuevo_ *valor es*: #x\
]
