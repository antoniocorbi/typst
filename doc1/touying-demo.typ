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
