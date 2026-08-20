#import "@preview/touying:0.7.4": *
#import themes.metropolis: *

#show: metropolis-theme.with(
  aspect-ratio: "16-9",
  config-info(
    title: [Mi Presentación en Typst],
    subtitle: [Reemplazando LaTeX Beamer],
    author: [Tu Nombre],
    date: datetime.today().display(),
  ),
)

= Primera Sección

#grid(columns: 2,
    rect(width: 100%, height: 30%, fill: red),
    rect(width: 100%, height: 30%, fill: green),
    rect(width: 100%, height: 30%, fill: blue),
    rect(width: 100%, height: 30%,  fill: yellow)
)

== Diapositiva de Introducción

Esta es una diapositiva sencilla escrita en Typst.

- Primer punto
#pause
- Segundo punto que aparece tras la pausa
- Tercer punto

== Bloques tipo Beamer

#focus-slide[
  ¡Página de énfasis / portada de sección!
]

== Diapositiva con Código

// ... tu configuración del show: metropolis-theme.with(...) ...

== Diapositiva con Bloque

No funciona nada
