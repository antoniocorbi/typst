
// ┌──────────────────┐
// │ Import the setup │
// └──────────────────┘
#import "setup.typ": conf

#show: conf

// ┌───────────────────────────────────────┐
// │ PORTADA (Portada limpia estilo libro) │
// └───────────────────────────────────────┘
#align(center + horizon)[
  #text(32pt, weight: "bold")[VIDA DE JESÚS]

  #v(1cm)
  #text(16pt, style: "italic")[HISTORIA DE LOS ORÍGENES DEL CRISTIANISMO \ LIBRO
  PRIMERO]

  #v(4cm)
  #text(16pt)[Ernesto Renán]

  #v(1em)
  #text(9pt, fill: luma(100))[MADRID\ LIBRERÍA DE ALFONSO DURÁN\ CARRERA DE S. GERÓNIMO, 2\ 1869]
]

// Salto de página tras la portada
#pagebreak()

//#outline()
//#outline(title: [Índice General], indent: 1.0em)
#outline(title: "Índice General", indent: .25em)

// Salto de página tras el indice
//#pagebreak()

// ┌─────────────────────┐
// │ CONTENIDO DEL LIBRO │
// └─────────────────────┘

#include "chapters/prolog.typ"
#include "chapters/intro.typ"
#include "chapters/chap01.typ"
#include "chapters/chap02.typ"
#include "chapters/chap03.typ"
#include "chapters/chap04.typ"
#include "chapters/chap05.typ"
#include "chapters/chap06.typ"
#include "chapters/chap07.typ"
#include "chapters/chap08.typ"
#include "chapters/chap09.typ"
#include "chapters/chap10.typ"
#include "chapters/chap11.typ"
#include "chapters/chap12.typ"
#include "chapters/chap13.typ"
#include "chapters/chap14.typ"
#include "chapters/chap15.typ"
#include "chapters/chap16.typ"
#include "chapters/chap17.typ"
#include "chapters/chap18.typ"
#include "chapters/chap19.typ"
#include "chapters/chap20.typ"
#include "chapters/chap21.typ"
#include "chapters/chap22.typ"
#include "chapters/chap23.typ"
#include "chapters/chap24.typ"
#include "chapters/chap25.typ"
#include "chapters/chap26.typ"
#include "chapters/chap27.typ"
#include "chapters/chap28.typ"
#include "chapters/notes.typ"
