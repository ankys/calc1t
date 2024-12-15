= 一様分布論
<一様分布論>
== 一様分布定理
<一様分布定理>
この章では一様分布定理と呼ばれる今までとは少し趣の異なる極限に関する定理を紹介する。
内容的には高度なものになるので読み物としてみた方がよいかもしれない。

その一様分布定理を述べるために次の用語を定義する。

#block[
各$n$に対して$x_n in \[ 0 , 1 \)$を満たす数列$(x_n)_(n = 1)^oo$が$\[ 0 , 1 \)$で#emph[一様分布];するとは任意の$0 lt.eq a lt.eq b lt.eq 1$に対して
\$\$\\label{e\_equidist}
\\lim\_{N \\to \\infty}\\frac{1}{N}\\\#\\lrset{ n = 1, \\cdots, N \\mid a \\le x\_n \< b } = b-a\$\$
が成り立つことである。
ただし、有限集合$A$に対して、自然数として定まる元の個数を$\# A$と書く。

]
この条件は区間$\[ a , b \)$に入る$x_n$の割合が$b - a$であるとみなせる。
以降では$n = 1 , dots.h.c , N$をしばしば$n lt.eq N$と表現する。

#block[
$\[ 0 , 1 \)$上の数列$(x_n)_(n = 1)^oo$が一様分布することは、
各$n$に対して$0 lt.eq a_n lt.eq b_n lt.eq 1$である数列$(a_n)$,
$(b_n)$であって$n arrow.r oo$で$a_n arrow.r a$,
$b_n arrow.r b$となるものについて
\$\$\\lim\_{N \\to \\infty}\\frac{1}{N}\\\#\\lrset{ n \\le N \\mid a\_n \\le x\_n \< b\_n } = b-a\$\$
が成り立つことと同値である。
実際、こちらの方が強い条件になっていて、逆については任意の$epsilon > 0$に対して、ある$k = 1 , 2 , 3 , dots.h.c$が存在して任意の自然数$n gt.eq k$に対して$lr(|a_n - a|) < epsilon$,
$lr(|b_n - b|) < epsilon$が成り立つことから、$N = 1 , 2 , 3 , dots.h.c$に対して
\$\$\\begin{aligned}
&\\abs{\\\#\\lrset{ n \\le N \\mid a\_n \\le x\_n \< b\_n }-\\\#\\lrset{ n \\le N \\mid a \\le x\_n \< b }} \\\\
&\\quad \\le k+\\\#\\lrset{ k \< n \\le N \\mid a-\\varepsilon \\le x\_n \< a+\\varepsilon \\lor b-\\varepsilon \\le x\_n \< b+\\varepsilon } \\\\
&\\quad \\le k+\\\#\\lrset{ n \\le N \\mid a-\\varepsilon \\le x\_n \< a+\\varepsilon }+\\\#\\lrset{ n \\le N \\mid b-\\varepsilon \\le x\_n \< b+\\varepsilon }.
\\end{aligned}\$\$
よって、$N$で割って$N arrow.r oo$とすると右辺は$4 epsilon$に収束する。
$epsilon$は任意なので、逆がいえた。

]
$\[ 0 , 1 \)$という区間は実数$x$の床（整数部分）\$\\lrfloor{x}\$を引いた小数部分\$\\lrfrac{x}\$の属する集合として現れた。
そこで一般の実数列$(x_n)$に対しても小数部分の列\$(\\lrfrac{x})\$が一様分布するかどうかで一様分布列の概念を導入する。
なお、\$\\lrfrac{x}\$という記号は集合の記号と紛らわしいがよく使われるので本テキストでも採用し文脈によってどちらの意味か判断される。

#block[
小数部分の演算について任意の実数$x , y$に対して、\$\\lrfrac{x} \\ge \\lrfrac{y}\$である場合は\$\\lrfrac{x-y} = \\lrfrac{x}-\\lrfrac{y}\$であり、そうでない場合は\$\\lrfrac{x-y} = \\lrfrac{x}-\\lrfrac{y}+1\$であることに注意する。

]
以上の準備の下で一様分布定理は次のように表現される。

#block[
$alpha$を無理数で$beta$を実数とするとき、数列\$(\\lrfrac{\\alpha n+\\beta})\_{n = 1}^\\infty\$は一様分布する。

]
$\[ 0 , 1 \)$の$0$と$1$と引っ付けてわっかのように見なすと、\$(\\lrfrac{\\alpha n+\\beta})\_n\$というのはわっかをぐるぐるまわる感じになっており回転と呼ばれ$alpha$は角度のような役割を果たす。

この定理において$alpha$が無理数であることが非常に重要で、例えば$alpha$が有理数$1 / p$、$beta = 0$の場合は$n$が$p$増えるともとの位置に戻るため、\$\\lrfrac{\\alpha n+\\beta}\$の取りうる値は\$\\lrset{ \\frac{0}{p}, \\cdots \\frac{p-1}{p} }\$となり一様分布にはならない。
無理数の場合は表現が正確ではないが分母$p$が無限大のような状況になっていて、\$(\\lrfrac{\\alpha n+\\beta})\_n\$は$\[ 0 , 1 \)$上均等にまんべんなく分布するということを定理は主張している。

一様分布定理と関連の深い話題として次のクロネッカーの稠密定理がある。

#block[
$alpha$を無理数で$beta$を実数とするとき、数列\$(\\lrfrac{\\alpha n+\\beta})\_{n = 1}^\\infty\$は稠密である、つまり任意の$0 lt.eq a < b lt.eq 1$に対して\$a \\le \\lrfrac{\\alpha n+\\beta} \< b\$を満たす$n = 1 , dots.h.c$が存在する。

]
一様分布するならば自動的に稠密であるので、クロネッカーの稠密定理は一様分布定理より弱い内容を主張する定理である。
しかしながら、今回の一様分布定理の証明ではクロネッカーの稠密定理を利用するので証明を与える。

#block[
#emph[クロネッカーの稠密定理の証明.]
まず、\$N = \\lrceil{\\frac{2}{b-a}}\$とするとある$l = 0 , dots.h.c , N - 1$が存在して$a lt.eq l / N < frac(l + 1, N) lt.eq b$とできることに注意する。
この$N = 1 , 2 , 3 , dots.h.c$に対して次の議論をする。
つまり区間$\[ 0 , 1 \)$を$N$等分すると\$(\\lrfrac{\\alpha n})\_{n = 1}^{N+1}\$のうち$2$つは同じ小区間の中に入り$i < j$とおく。
このとき$alpha$が無理数であることから、\$0 \< |\\lrfrac{\\alpha j}-\\lrfrac{\\alpha i}| \< \\frac{1}{N}\$である。
よって、$k$を$j - i$とすると\$0 \< \\lrfrac{\\alpha k} \< \\frac{1}{N}\$または\$1-\\frac{1}{N} \< \\lrfrac{\\alpha k} \< 1\$であり、
これを何倍かすると\$a \\le \\frac{l}{N} \\le \\lrfrac{n\\alpha k+\\beta} \< \\frac{l+1}{N} \\le b\$となる$n$が存在するので稠密性が示された。~◻

]
一様分布定理の証明はワイルの証明が知られているがここでは別の証明を与える。
まず、次の補題を準備する。

#block[
$(x_n)_(n = 1)^oo$を実数列とする。
数列\$(\\lrfrac{x\_n})\$が一様分布することと任意の実数$a$に対して
\$\$\\lim\_{N \\to \\infty}\\qty(\\frac{1}{N}\\sum\_{n \\le N}\\lrfrac{x\_n}-\\frac{1}{N}\\sum\_{n \\le N}\\lrfrac{x\_n+a}) = 0\$\$
が成り立つことは同値である。

]
#block[
#emph[Proof.]
まず一様分布であることの定義より、\$(\\lrfrac{x\_n})\$が一様分布することは任意の$0 lt.eq b lt.eq 1$に対して
\$\$\\lim\_{N \\to \\infty}\\frac{1}{N}\\\#\\lrset{ n \\le N \\mid x\_n \< b } = b\$\$
が成り立つことと同値であることに注意する。 実数$b$に対して、
\$\$\\begin{aligned}
\\frac{1}{N}\\sum\_{n \\le N}\\lrfrac{x\_n-b}
&= \\frac{1}{N}\\sum\_{\\lrfrac{x\_n} \\ge \\lrfrac{b}}(\\lrfrac{x\_n}-\\lrfrac{b})+\\frac{1}{N}\\sum\_{\\lrfrac{x\_n} \< \\lrfrac{b}}(\\lrfrac{x\_n}-\\lrfrac{b}+1) \\\\
&= \\frac{1}{N}\\sum\_{n \\le N}\\lrfrac{x\_n}+\\frac{1}{N}\\\#\\lrset{ n \\le N \\mid \\lrfrac{x\_n} \< \\lrfrac{b} }-\\lrfrac{b}.
\\end{aligned}\$\$ ここから補題が成立することがわかる。~◻

]
#block[
#emph[一様分布定理の証明.] $0 lt.eq a < 1$と$epsilon > 0$を固定する。
\$(\\lrfrac{\\alpha n})\_{n = 1}^\\infty\$の稠密性は示されているので、
\$\$a \\le \\lrfrac{\\alpha k} \< a+\\varepsilon\$\$
となる$k = 1 , 2 , 3 , dots.h.c$が存在する。 ここで任意の整数$n$に対して
\$\$\\lrfrac{\\alpha n+\\beta} \< \\lrfrac{\\alpha(n-k)+\\beta+a}+\\varepsilon\$\$
を示す。 実際、
\$\$\\lrfrac{\\alpha(n-k)+\\beta+a} = \\lrfrac{(\\alpha n+\\beta)-(\\alpha k-a)} \\ge \\lrfrac{\\alpha n+\\beta}-\\lrfrac{\\alpha k-a}\$\$
で、\$a \\le \\lrfrac{\\alpha k} \< a+\\varepsilon\$より、
\$\$\\lrfrac{\\alpha k-a} = \\lrfrac{\\alpha k}-a \< \\varepsilon\$\$
から従う。 よって、 \$\$\\begin{aligned}
\\sum\_{n \\le N}\\lrfrac{\\alpha n+\\beta}-\\sum\_{n \\le N}\\lrfrac{\\alpha n+\\beta+a}
&= \\sum\_{n \\le k}\\lrfrac{\\alpha n+\\beta}+\\sum\_{k \< n \\le N}\\lrfrac{\\alpha n+\\beta}-\\sum\_{n \\le N-k}\\lrfrac{\\alpha n+\\beta+a}-\\sum\_{N-k \< n \\le N}\\lrfrac{\\alpha n+\\beta+a} \\\\
&\\le k+(N-k)\\varepsilon.
\\end{aligned}\$\$ したがって、
\$\$\\limsup\_{N \\to \\infty}\\qty(\\frac{1}{N}\\sum\_{n \\le N}\\lrfrac{\\alpha n+\\beta}-\\frac{1}{N}\\sum\_{n \\le N}\\lrfrac{\\alpha n+\\beta+a}) \\le \\varepsilon.\$\$
また、\$a-\\varepsilon \< \\lrfrac{\\alpha k+\\beta} \\le a\$として$k$を取り同様のことをすれば
\$\$\\liminf\_{N \\to \\infty}\\qty(\\frac{1}{N}\\sum\_{n \\le N}\\lrfrac{\\alpha n+\\beta}-\\frac{1}{N}\\sum\_{n \\le N}\\lrfrac{\\alpha n+\\beta+a}) \\ge -\\varepsilon.\$\$
よって$epsilon$は任意であることと補題より一様分布定理が証明された。~◻

]
次の命題は一様分布する数列に小さな修正を加えても一様分布であることを主張する。

#block[
<t_equidist_perturb> $(x_n)$, $(y_n)$,
$(c_n)$を実数列として各$n$に対して$lr(|x_n - y_n|) lt.eq c_n$が成り立つとする。
ここで$(y_n)$が一様分布して$n arrow.r oo$で$c_n arrow.r 0$であるならば、$(x_n)$も一様分布する。

]
#block[
#emph[Proof.]
任意の実数$a$と各$n$に対して、もし\$\\lrfrac{y\_n+a}-c\_n \\ge 0\$ならば
\$\$\\lrfrac{x\_n+a} \\le \\lrfrac{y\_n+a}+c\_n\$\$
が成り立つことに注意する。
実際、\$0 \\le |x\_n-y\_n| \\le c\_n \\le \\lrfrac{y\_n+a} \< 1\$であり、\$\\lrfrac{x\_n+a} \> \\lrfrac{y\_n+a}+c\_n\$だとすると\$c\_n \< 1-\\lrfrac{y\_n+a}\$である。
ここで仮定から$y_n + a - c_n lt.eq x_n + a lt.eq y_n + a + c_n$で最左辺と最右辺の整数部分が等しくないとならないので、
\$\$\\lrfrac{x\_n+a} = \\lrfrac{y\_n+a+c\_n} \\lrfrac{y\_n+a}+c\_n\$\$
である。 同様にして、もし\$\\lrfrac{y\_n+a}+c\_n \\le 1\$ならば
\$\$\\lrfrac{x\_n+a} \\ge \\lrfrac{y\_n+a}-c\_n\$\$ が成り立つ。
以上のことから、 \$\$\\begin{aligned}
&\\abs{\\sum\_{n \\le N}\\lrfrac{x\_n+a}-\\sum\_{n \\le N}\\lrfrac{y\_n+a}} \\\\
&\\le \\sum\_{n \\le N}c\_n+\\sum\_{\\lrfrac{y\_n+a} \< c\_n \\lor \\lrfrac{y\_n+a} \\ge 1-c\_n}|\\lrfrac{x\_n+a}-\\lrfrac{y\_n+a}| \\\\
&\\le \\sum\_{n \\le N}c\_n+\\\#\\lrset{ n \\le N \\mid \\lrfrac{y\_n+a} \< c\_n }+\\\#\\lrset{ n \\le N \\mid \\lrfrac{y\_n+a} \\ge 1-c\_n }
\\end{aligned}\$\$
となり、$N$で割って$N arrow.r oo$とすると、$lim_(n arrow.r oo) c_n = 0$より$lim_(N arrow.r oo) 1 / N sum_(n lt.eq N) c_n = 0$であること（定理@t_average_conv）と$(y_n + a)$が一様分布することから右辺は$0$に収束する。
ここから$(x_n)$は$(y_n)$と同様に一様分布することがわかる。~◻

]
また、一様分布の内容から次の拡張が得られる。

#block[
$f$を$\[ 0 , 1 \)$上の有界な実数値関数で$f (1) = f (0)$と拡張したときに$f$は$[0 , 1]$上リーマン積分可能とする。
このとき$\[ 0 , 1 \)$上の一様分布する数列$(x_n)_(n = 1)^oo$に対して
$ lim_(N arrow.r oo) 1 / N sum_(n lt.eq N) f (x_n) = integral_0^1 f (x) ⅆ x $
が成り立つ。

]
#block[
一様分布することの定義は$f$が次の#emph[区間指示関数]
$ f (x) = chi_(\[ a , b \)) (x) = cases(delim: "{", 1 & (x in \[ a , b) \), 0 & (x in.not \[ a , b) \), ) $
の場合に#link(<e_equidist2>)[\[e\_equidist2\]];が成り立つということである。

]
#block[
#emph[Proof.] $epsilon > 0$を固定する。
リーマン積分可能であることから$f$に対して、いくつかの区間指示関数の定数倍の和であって
$ f_(-) (x) lt.eq f (x) lt.eq f_(+) (x) quad forall x in [0 , 1] , quad integral_0^1 (f_(+) (x) - f_(-) (x)) ⅆ x < epsilon $
を満たす関数$f_(-)$, $f_(+)$が存在する。
$(x_n)$は一様分布するので区間指示関数の定数倍の和$f_(-)$,
$f_(+)$に対して#link(<e_equidist2>)[\[e\_equidist2\]];が成り立つことに注意して、
$  & liminf_(N arrow.r oo) 1 / N sum_(n lt.eq N) f (x_n) gt.eq lim_(N arrow.r oo) 1 / N sum_(n lt.eq N) f_(-) (x_n) = integral_0^1 f_(-) (x) ⅆ x gt.eq integral_0^1 f (x) ⅆ x - epsilon ,\
 & limsup_(N arrow.r oo) 1 / N sum_(n lt.eq N) f (x_n) lt.eq lim_(N arrow.r oo) 1 / N sum_(n lt.eq N) f_(+) (x_n) = integral_0^1 f_(+) (x) ⅆ x lt.eq integral_0^1 f (x) ⅆ x + epsilon . $
ここで$epsilon$は任意なので、一般の$f$に対しても#link(<e_equidist2>)[\[e\_equidist2\]];が成り立つことがわかった。~◻

]
#block[
今回の一様分布定理の証明では直接#link(<e_equidist>)[\[e\_equidist\]];をつまり区間指示関数$f$に対して#link(<e_equidist2>)[\[e\_equidist2\]];を証明したが、
ワイルの方法は最初に和の計算ができる$f (x) = exp (2 pi i k x)$（$k$は$0$でない整数）に対して証明して、連続関数に拡張して区間指示関数と進めていく。
この証明法は複素数値の関数の積分やフーリエ解析の知識が必要になるため本テキストではこれ以上触れないが、様々な発展性があり重要である。

]
== 一様分布定理の応用：先頭の位の数
<一様分布定理の応用先頭の位の数>
一様分布定理の「小数部分」が登場する話題が先頭の位の数である。
例えば$n = 1 , 2 , 3 , dots.h.c$に対して$2^n$の先頭の位の数$a_n$を考えてみよう。
$2^n$を並べて書き出すと

#quote(block: true)[
$2$, $4$, $8$, $16$, $32$, $64$, $128$, $256$, $512$, $1024$, $2048$,
$4096$, $8192$, $16384$, $32768$, $65536$, $131072$, $262144$, $524288$,
$1048576$, $dots.h.c$
]

なのでその先頭の位の数$a_n$は

#quote(block: true)[
$2$, $4$, $8$, $1$, $3$, $6$, $1$, $2$, $5$, $1$, $2$, $4$, $8$, $1$,
$3$, $6$, $1$, $2$, $5$, $1$, $dots.h.c$
]

となる。
この数列の中で数字$d = 1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 , 9$が現れる頻度を計算するときに活躍するのが一様分布定理である。
なお、上に列挙した範囲では$a_n$は$2 , 4 , 8 , 1 , 3 , 6 , 1 , 2 , 5 , 1$の繰り返しに見えるが実際には$2^46 = 70368744177664$なので$a_n$は$7$や$9$の値を取りうることに注意する。

一般に正の整数（または正の実数）$y$について桁数を$l in bb(Z)$、先頭の位の数を$d = 1 , dots.h.c , 9$とすると
$ d times 10^(l - 1) lt.eq y < (d + 1) times 10^(l - 1) $
なので、$10$を底とする対数（常用対数）をとると
$ log_10 d lt.eq log_10 y - (l - 1) < log_10 (d + 1) $ となる。
ここから$y$の最上位の数$a$が$d$となる条件は
\$\$\\log\_{10}d \\le \\lrfrac{\\log\_{10}y} \< \\log\_{10}(d+1)\$\$
となることであり、$x in \[ 0 , 1 \)$に対して関数$D$の値を$log_10 d lt.eq x < log_10 (d + 1)$の場合に$D (x) = d$として定義すると
\$a = D(\\lrfrac{\\log\_{10}y})\$となる。

$2^n$の問題に戻ると \$\$a\_n = D(\\lrfrac{n\\log\_{10}2})\$\$ である。
ここで$log_10 2$は無理数なので、\$\\lrfrac{n\\log\_{10}2}\$は$\[ 0 , 1 \)$上一様分布する。
$a_n$のうち$d = 1 , dots.h.c , 9$の割合を
\$\$\\lim\_{N \\to \\infty}\\frac{1}{N}\\\#\\lrset{ n \\le N \\mid a\_n = d }\$\$
として考えると、この値は一様分布定理より
\$\$\\lim\_{N \\to \\infty}\\frac{1}{N}\\\#\\lrset{ n \\le N \\mid a\_n = d }
= \\lim\_{N \\to \\infty}\\frac{1}{N}\\\#\\lrset{ n \\le N \\mid \\log\_{10}d \\le \\lrfrac{n\\log\_{10}2} \< \\log\_{10}(d+1) }
= \\log\_{10}(d+1)-\\log\_{10}d\$\$ となることがわかる。
また、$a_n$の期待値に相当する
$ lim_(N arrow.r oo) 1 / N sum_(n lt.eq N) a_n $ は
\$\$\\lim\_{N \\to \\infty}\\frac{1}{N}\\sum\_{n \\le N}a\_n
= \\lim\_{N \\to \\infty}\\frac{1}{N}\\sum\_{n \\le N}D(\\lrfrac{n\\log\_{10}2})
= \\int\_0^1 D(x)\\dd{x}
= 9-\\log\_{10}9!\$\$ である。
以上の値を計算しまとめたのが次の表@f_benford_lawである。

#block[
#figure(
  align(center)[#table(
    columns: 2,
    align: (center,center,),
    table.header([$d$], [割合],),
    table.hline(),
    [$1$], [$0.30102999566398114 dots.h.c$],
    [$2$], [$0.1760912590556813 dots.h.c$],
    [$3$], [$0.12493873660829985 dots.h.c$],
    [$4$], [$0.09691001300805646 dots.h.c$],
    [$5$], [$0.07918124604762478 dots.h.c$],
    [$6$], [$0.06694678963061318 dots.h.c$],
    [$7$], [$0.057991946977686726 dots.h.c$],
    [$8$], [$0.05115252244738144 dots.h.c$],
    [$9$], [$0.04575749056067513 dots.h.c$],
    [期待値], [$3.440236967123207 dots.h.c$],
  )]
  , caption: [先頭の位の数の分布]
  , kind: table
  )

] <f_benford_law>
この話題の興味深いところは一様分布すれば底$2$は別の数（$3$や$4$など常用対数が無理数になる数）でも同じ値になることである。
さらには$2^n$の代わりにフィボナッチ数の列$F_n$でも割合や期待値は同じ値になる。
なお、フィボナッチ数は

#quote(block: true)[
$1$, $1$, $2$, $3$, $5$, $8$, $13$, $21$, $34$, $55$, $89$, $144$,
$233$, $377$, $610$, $987$, $1597$, $2584$, $4181$, $6765$, $10946$,
$17711$, $dots.h.c$
]

でその最上位の位の数は

#quote(block: true)[
$1$, $1$, $2$, $3$, $5$, $8$, $1$, $2$, $3$, $5$, $8$, $1$, $2$, $3$,
$6$, $9$, $1$, $2$, $4$, $6$, $1$, $1$, $dots.h.c$
]

である。

これはフィボナッチ数の一般項が
\$\$F\_n = \\frac{1}{\\sqrt{5}}\\qty(\\qty(\\frac{1+\\sqrt{5}}{2})^n-\\qty(\\frac{1-\\sqrt{5}}{2})^n)\$\$
のように計算され、主要な部分の底$frac(1 + sqrt(5), 2)$の常用対数が無理数であることによる。
より詳しくは$alpha = frac(1 + sqrt(5), 2)$,
$beta = frac(1 - sqrt(5), 2)$とすると、任意の$x > - 1$に対して不等式$log (1 + x) lt.eq x$が成り立つことに注意して、
\$\$|\\log F\_n-(n\\log\_{10}\\alpha-\\log\_{10}\\sqrt{5})| \\le \\log\_{10}\\qty(1+\\abs{\\frac{\\beta}{\\alpha}}^n) \\le \\frac{1}{\\log(10)}\\abs{\\frac{\\beta}{\\alpha}}^n\$\$
で、$(n log_10 alpha - log_10 sqrt(5))_n$は一様分布し、\$\\lim\_{n \\to \\infty}\\frac{1}{\\log(10)}\\abs{\\frac{\\beta}{\\alpha}}^n = 0\$なので、$(log_10 F_n)_n$も一様分布することがわかる。

このように様々な数列の最上位の位の数は表@f_benford_lawで示されたある特定の分布に従う。
このことはより複雑な機構によって決まると考えられる現実世界の様々な数にもみられてベンフォードの法則と呼ばれている。
