
#let title = [微分積分学１]
#let author = [中安淳]
#let date = datetime.today()

#import "deps/template.typ": jbook, maketitle
#show: jbook.with()

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
#include "06_differential.typ"
#include "07_integral.typ"
