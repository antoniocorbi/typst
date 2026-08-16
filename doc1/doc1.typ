#import "@preview/touying:0.7.4": *

#import themes.simple: *
//#show: simple-theme.with(aspect-ratio: "16-9")


#set heading(numbering: "1.1")
#show heading: set text(purple)
#show heading: set text(font: "Inria Serif")
#show heading: set align(center)
#show heading: it => block[
    \~
    #emph(it.body)
    #counter(heading).display()
    \~
]
#show heading: set block(above: 1em, below: 1em)

#set text(
    font: "Libertinus Serif Display",
    fill: black,
    lang: "es",
    size: 10pt,
    hyphenate: auto,
)

#set par(
    justify: true,
    spacing: 1.25em,  // Between paragraphs
    leading: 0.6em,   // Spacing inside paragraphs
    first-line-indent: 1.25em,
)

#set page(
    fill: gray.lighten(80%),
    paper: "a4",
    //flipped: true,
    margin: 1in,
    //header: align(center)[#smallcaps[the header]],
    header: context {
        let num = here().page()
        let color-titulo = if calc.even(num) { red } else { blue }

        align(center)[
            #text(fill: color-titulo, weight: "bold")[#titulo-documento]
        ]
    },
    numbering: "1 de 1",
    number-align: right,
)


= Preamble

== See me typsting
#rect(width: 20%,
    //height: 1cm,
    stroke: red,
    fill: aqua )[Anda!, esto no lo sabía]

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
      image("glacier.png", width: 35%),
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
    image("window.png", width: 35%),
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
