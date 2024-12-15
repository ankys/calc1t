
#let title = [微分積分学１]
#let author = [中安淳]
#let date = datetime.today()

#set text(lang: "ja")

#let mincho = ("Libertinus Serif", "Zen Old Mincho")
#let gothic = ("Zen Kaku Gothic New")
#set text(font: mincho)
#show emph: set text(font: gothic, weight: "bold")
#show strong: set text(font: gothic, weight: "bold")

#let maketitle(title: none, author: none, date: none) = {
	pagebreak(weak: true)
	align(center + horizon)[
		#text(2em)[*#title*]
		#v(3em, weak: true)
		#author
		#v(2em, weak: true)
		#date
	]
	pagebreak()
}

#set heading(numbering: "第1章")
#show heading.where(level: 2): set heading(numbering: "1.1.")

#show outline: set heading(numbering: none)
#show outline.entry.where(level: 1): it => strong(it)

#import "deps/autoeqnum.typ": autoeqnum
#show heading.where(level: 2): it => {
	counter(math.equation).update(0)
	it
}
#show: autoeqnum.with(mode: "ref", numbering: it => {
	let count = counter(heading).get()
	numbering("(1.1)", ..count, it)
})

#maketitle(
	title: title,
	author: author,
	date: date,
)

#include "00_preface.typ"

#outline()

#include "01_set.typ"
#include "02_number.typ"
#include "03_supinf.typ"
#include "04_limit.typ"
#include "05_functions1.typ"
