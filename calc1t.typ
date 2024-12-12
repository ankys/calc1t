
#let title = [微分積分学１]
#let author = "中安淳"
#let date = datetime.today()

#import "@preview/ilm:1.4.0": *
#set text(lang: "ja")
#show: ilm.with(
	title: title,
	author: author,
	date: date,
	table-of-contents: none,
)
#show emph: it => { text(it, weight: "bold") }

#include "00_preface.typ"

#outline()

#include "01_set.typ"
#include "02_number.typ"
#include "03_supinf.typ"
