
#import "@preview/hydra:0.5.1": hydra
#let jbook(doc) = {
	let page-header = context{
		let page-num = here().page()
		if calc.odd(page-num) [
			#hydra(2)#h(1fr)*#page-num*
		] else [
			*#page-num*#h(1fr)#hydra(1)
		]
	}
	set page(paper: "a4", margin: (left: 15mm, right: 15mm, top: 30mm, bottom: 20mm), numbering: "1", header: page-header, footer: none)
	set text(size: 10pt)

	set text(lang: "ja")

	let mincho = ("Libertinus Serif", "Noto Serif CJK JP")
	let gothic = ("Libertinus Serif", "Noto Sans CJK JP")
	set text(font: mincho)
	show emph: set text(font: gothic, weight: "bold")
	show strong: set text(font: gothic, weight: "bold")

	set heading(numbering: "第1章")
	show heading.where(level: 2): set heading(numbering: "1.1")

	show heading.where(level: 1): it => {
		pagebreak(weak: true, to: "odd")
		v(5em)
		if (it.numbering != none) {
			text(1.5em)[*#numbering(it.numbering, counter(heading).get().first())*]
		}
		v(3em, weak: true)
		text(2em)[*#it.body*]
		v(5em, weak: true)
	}
	show heading.where(level: 2): it => {
		strong(it)
		par(text(size: 0pt, ""))
	}

	show outline: set heading(numbering: none)
	show outline.entry.where(level: 1): it => {
		[#v(0.5em)]
		[*#box(width: 5em)[#it.body.children.at(0)]#it.element.body#h(1fr)#box(width: 2em)[#align(right)[#it.page]]*]
	}
	show outline.entry.where(level: 2): it => {
		[#box(width: 5em)[#h(1em)#it.body.children.at(0)]#it.element.body#box(width: 1fr)[#repeat([#h(1em).])]#box(width: 2em)[#align(right)[#it.page]]]
	}

	set par(first-line-indent: 1em)
	doc
}

#let maketitle(title: none, author: none, date: none) = {
	pagebreak(weak: true)
	align(center + horizon)[
		#text(2em)[*#title*]
		#v(3em, weak: true)
		#author
		#v(2em, weak: true)
		#date
	]
	set page(header: none)
	pagebreak()
	set page(header: none)
}
