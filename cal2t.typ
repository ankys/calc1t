
#let title = [微分積分学２]
#let author = "中安淳"
// #let date = datetime.today()
#let date = [2025年12月23日]

#import "@preview/js:0.1.3": *
#show: js.with(
	paper: "a4",
	book: true,
	lang: "ja",
	// seriffont: "New Computer Modern",
	// seriffont-cjk: "Harano Aji Mincho",
	// sansfont: "Source Sans Pro",
	// sansfont-cjk: "Harano Aji Gothic",
)
#set par(first-line-indent: 1em) // why
#show math.equation.where(block: true): block.with(width: 100%)

#import "@preview/ctheorems:1.1.3": thmrules
#show: thmrules.with()

#import "deps/autoeqnum.typ": autoeqnum
#show heading.where(level: 2): it => {
	counter(math.equation).update(0)
	it
}
#show: autoeqnum.with(mode: "ref", numbering: it => {
	let count = counter(heading).get()
	numbering("(1.1)", ..count, it)
})

// #import "deps/outputtools.typ": output_outline
// #output_outline()

#maketitle(
	title: title,
	authors: author,
	date: date,
)

#include "00_preface.typ"

#outline()

#include "01_differential.typ"
#include "02_integral.typ"
#include "03_series.typ"
#include "04_functions.typ"

#bibliography("99_ref.yml")
