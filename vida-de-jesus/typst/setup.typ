
// ┌──────────────┐
// │ My font face │
// └──────────────┘
#let my-font = ("Libertinus Serif", "STIX Two Text",
    "DejaVu Serif")

// ┌──────────────────────┐
// │ Formato de la página │
// └──────────────────────┘
#let conf(doc) = {
    set page(
        paper: "a4",
        margin: (x: 2.5cm, top: 3cm, bottom: 2.5cm),
        // Encabezado y pie de página dinámicos
        header: context {
            let page-num = counter(page).get().first()
            // No mostrar encabezado en la portada (página 1)
            if page-num > 1 [
                #text(9pt, fill: luma(120), style: "italic")[Vida de Jesús]
                #h(1fr)
                #text(9pt, fill: luma(120))[#page-num]
            ]
        },
        footer: context {
            let page-num = counter(page).get().first()
            if page-num > 1 [
                #align(center)[#page-num]
            ]
        }
    )

    // ┌───────────────────────────────────┐
    // │ Configuración de texto y párrafos │
    // └───────────────────────────────────┘
    set text(font: my-font, size: 12pt, lang: "es", hyphenate: true)
    set par(justify: true, leading: 0.7em, first-line-indent: 1.5em)
    set heading(numbering: "1.1")

    // ┌────────────────────────────────────────────────────────────────────────┐
    // │ Regla para que los Títulos de Nivel 1 (Capítulos) actúen como en LaTeX │
    // └────────────────────────────────────────────────────────────────────────┘
    show heading.where(level: 1): it => {
        // Forzar que cada capítulo empiece en página nueva de manera inteligente
        pagebreak(weak: true)

        v(3cm) // Espacio superior antes del título del capítulo
        align(left)[
            // #text(12pt, weight: "regular", fill: luma(100))[
            //     // Obtener y mostrar el número del capítulo
            //     = KAPÍTULO //#counter(heading).display()
            // ]
            // #v(0.5em)
            #text(20pt, weight: "bold")[#it.body]
        ]
        v(1cm) // Espacio antes del primer párrafo
    }

    // ┌───────────────────────────────────────────────────────────────────────────┐
    // │ Regla para que los Títulos de Nivel 2 (SubCapítulos) actúen como en LaTeX │
    // └───────────────────────────────────────────────────────────────────────────┘
    show heading.where(level: 2): it => {
        v(0.0cm) // Espacio superior antes del título del capítulo
        align(left)[
            // #text(12pt, weight: "regular", fill: luma(100))[
            //     // Obtener y mostrar el número del capítulo
            //     = KAPÍTULO //#counter(heading).display()
            // ]
            // #v(0.5em)
            #text(11pt, weight: "bold", style: "italic")[#smallcaps(it.body)]
        ]
        v(0.25cm) // Espacio antes del primer párrafo
    }

    // Reiniciar el contador de páginas para el contenido principal
    counter(page).update(1)

    // ┌──────────────────────────────┐
    // │ ÍNDICE (Tabla de contenidos) │
    // └──────────────────────────────┘
    show outline.entry.where(
        level: 1
    ): set block(above: 1.2em)

    // 2. ¡CRUCIAL! Retornar el documento recibido
    doc
}
