= Preamble
In this report, we will explore the
various factors that influence _fluid
dynamics_ in glaciers and how they
contribute to the formation and
behaviour of these natural structures.

+ The climate
+ The topography
+ The geology

#figure(
  image("glacier.png", width: 35%),
  caption: [
    _Glaciers_ form an important part
    of the earth's climate system.
  ],
)

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

Performance through Incrementality: All Typst language features must
accommodate for incremental compilation. Luckily we have comemo, a
system for incremental compilation which does most of the hard work in
the background.
