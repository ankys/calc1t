= 級数
<級数>
== 級数の収束
<級数の収束>
数列$(a_n)_(n = 0)^oo$の項$a_0 , a_1 , a_2 , a_3 , dots.h.c$の和について考える。
このような和のことを級数と呼び、形式的には
$ sum_(n = 0)^oo a_n = a_0 + a_1 + a_2 + a_3 + dots.h.c $
と表すが、無限個の項の和なのでしっかり定義する必要がある。

#block[
数列$(a_n)_n$と$N = 0 , 1 , 2 , 3 , dots.h.c$に対して、初項から項$a_N$までの#emph[部分和]
$ A_N = sum_(n = 0)^N a_n = a_0 + a_1 + a_2 + a_3 + dots.h.c + a_N $
を定義する。
ここで部分和を並べて得られる数列$(A_N)_N$がある数$S$に収束する時、
#emph[級数];$sum_n a_n$は収束するといい、この時の極限$S$を数列$(a_n)_n$の級数の値または#emph[和];と呼び$sum_n a_n$で表す。
また、部分和の数列$(A_N)_N$が発散するとき、級数$sum_n a_n$は発散するという。
級数の表記は
$ sum_(n = 0)^oo a_n , quad sum_(n = 1)^oo a_n , quad sum_(n in bb(N)) a_n , quad sum_n a_n , quad sum a_n $
などがある。

]
#block[
$c$を実数として等比数列$(c^n)_(n = 0)^oo$を考える。 対応する級数
$ sum_(n = 0)^oo c^n = 1 + c + c^2 + c^3 + dots.h.c $ を等比級数という。
$c eq.not 1$の時、部分和は
$ sum_(n = 0)^N c^n = frac(c^(N + 1) - 1, c - 1) = frac(1 - c^(N + 1), 1 - c) $
であり、$- 1 < c < 1$のとき収束し級数の値は
$ sum_(n = 0)^oo c^n = frac(1, 1 - c) $ である。
それ以外の$c$の場合は発散する。
$c = 1$の場合も$sum_(n = 0)^N c^n = N$より発散する。

]
次の命題は級数が収束する必要条件を与える。

#block[
<t_ser_conv>
数列$(a_n)$に対して、級数$sum a_n$が収束するならば数列$(a_n)$は$0$に収束する。

]
#block[
#emph[Proof.] 各$n$に対して、 $ a_(n + 1) = A_(n + 1) - A_n $
が成り立つ。
級数$sum a_n$が収束するため、$(A_n)$と$(A_(n + 1))$はともに和$S$に収束することから、数列$(a_(n + 1))$ひいては$(a_n)$は$S - S = 0$に収束する。~◻

]
#block[
<t_harm_ser> この命題の逆は成立しない。
例えば$n = 1 , 2 , 3 , dots.h.c$に対して$a_n = 1 / n$とおいた級数
$ sum_(n = 1)^oo 1 / n = 1 / 1 + 1 / 2 + 1 / 3 + dots.h.c $
は収束しない。 実際、
$ A_(2^2) = 1 + 1 / 2 + 1 / 3 + 1 / 4 > 1 + 1 / 2 + 1 / 4 + 1 / 4 = 1 + 1 / 2 + 1 / 2 , $
$ A_(2^3) = 1 + 1 / 2 + 1 / 3 + 1 / 4 + 1 / 5 + 1 / 6 + 1 / 7 + 1 / 8 > 1 + 1 / 2 + 1 / 4 + 1 / 4 + 1 / 8 + 1 / 8 + 1 / 8 + 1 / 8 = 1 + 1 / 2 + 1 / 2 + 1 / 2 $
で、 続けると $ A_(2^k) > 1 + k / 2 $ がわかり、これは収束しない。

]
級数（数列）の中でも特別なのが次の正項級数である。

#block[
数列$(a_n)$が各自然数$n$に対して$a_n gt.eq 0$を満たすとき、級数$sum a_n$を#emph[正項級数];という。

]
#block[
正項級数$sum a_n$が収束するための必要十分条件は部分和の数列$(A_N)$が上に有界であることである。

]
#block[
#emph[Proof.] $sum a_n$が正項級数であることから、各自然数$N$に対して
$ A_(N + 1) - A_N = a_(N + 1) gt.eq 0 $
より、数列$(A_N)$は単調増加である。
したがって$(A_N)$が上に有界ならば、単調収束定理（定理@t_mono_conv）より、収束する。
逆は命題@t_conv_bddより従う。~◻

]
このため正項級数の場合に限って級数$sum a_n$が収束することを
$ sum a_n < oo $ と表し、発散することを $ sum a_n = oo $ と表す。

#block[
級数$sum a_n$に対して正項級数$sum lr(|a_n|)$が収束するとき、級数$sum a_n$は#emph[絶対収束];するという。
絶対収束しないが収束するとき、級数は#emph[条件収束];するという。

]
#block[
級数$sum a_n$が絶対収束するならばそれは収束している。

]
#block[
#emph[Proof.] $N in bb(N)$に対して、 \$\$S\_N = \\sum\_{n \\le N} a\_n,
\\quad \\bar{S}\_N = \\sum\_{n \\le N} \\abs{a\_n}\$\$ とおくと、
\$\$\\abs{S\_N-S\_M} = \\abs{\\sum\_{n = M+1}^N a\_n} \\le \\abs{\\sum\_{n = M+1}^N \\abs{a\_n}} = \\abs{\\bar{S}\_N-\\bar{S}\_M}.\$\$
よって、$N$について上極限を$M$について下極限をそれぞれ取ると$S^(‾)_N$,
$S^(‾)_M$は仮定より収束することに注意して、
$ limsup_(N arrow.r oo) S_N - liminf_(N arrow.r oo) S_N lt.eq lim_(N arrow.r oo) S^(‾)_N - lim_(N arrow.r oo) S^(‾)_N = 0 . $
したがって上極限と下極限が一致したので$S_N$さらには級数は収束する。~◻

]
#block[
級数が絶対収束するならばそれは収束している。

]
ここまでくると級数の理論は広義積分の理論と似ていることに気が付く。
つまり、級数の収束は部分和の極限で定義していることは広義積分の積分区間を有界閉区間で近似していたことに対応するし、
級数でも広義積分でも絶対収束が登場する。
実際次の命題は級数版の比較判定法である。

#block[
$(a_n)$を数列とする。

- 二つの条件 $ lr(|a_n|) lt.eq b_n quad forall n , quad sum b_n < oo $
  を満たす正項級数$sum b_n$が存在するならば、
  級数$sum a_n$は絶対収束し、
  \$\$\\abs{\\sum a\_n} \\le \\sum \\abs{a\_n} \\le \\sum b\_n\$\$
  が成り立つ。

- 二つの条件 $ lr(|a_n|) gt.eq b_n quad forall n , quad sum b_n = oo $
  を満たす正項級数$sum b_n$が存在するならば、
  級数$sum a_n$は絶対収束せず、 \$\$\\sum \\abs{a\_n} = \\infty\$\$
  である。

]
級数を等比級数と比較することで収束性をある程度判定することができる。

#block[
$(a_n)$をどの項も$0$でない数列とする。 極限
\$\$\\lim\_{n \\to \\infty}\\abs{\\frac{a\_{n+1}}{a\_n}} = c\$\$
が存在し、$c < 1$ならば級数$sum a_n$は絶対収束し、$c > 1$ならば級数$sum a_n$は発散する。

]
#block[
$(a_n)$を数列とする。 上極限
\$\$\\limsup\_{n \\to \\infty}\\sqrt\[n\]{\\abs{a\_n}} = c\$\$
について、$c < 1$ならば級数$sum a_n$は絶対収束し、$c > 1$ならば級数$sum a_n$は発散する。

]
#block[
どちらの判定法も$c = 1$の場合は級数が収束するか発散するかわからない。

]
#block[
級数
$ sum_(n = 0)^oo n / 2^n = 0 / 1 + 1 / 2 + 2 / 2^2 + 3 / 2^3 + dots.h.c $
は（絶対）収束する。 実際、$a_n = n / 2^n$とおくと、$n arrow.r oo$で
\$\$\\abs{\\frac{a\_{n+1}}{a\_n}} = \\frac{n+1}{n}\\frac{2^n}{2^{n+1}} = \\frac{n+1}{n}\\frac{1}{2} \\to \\frac{1}{2} \< 1\$\$
より、ダランベールの判定法が使えて、収束する。

]
#block[
級数 $ sum_(n = 1)^oo 1 / n^2 = 1 / 1^2 + 1 / 2^2 + 1 / 3^2 + dots.h.c $
ではダランベールの判定法とコーシーの判定法はともに$c = 1$となってしまい、級数が収束するか発散するか判定できない。
なお、実際にはすぐ次でわかる通り収束する。

]
このような級数に対しては次の定理で広義積分の判定に帰着させるとよい。

#block[
$f$を$\[ 0 , + oo \)$上定義された単調減少する非負値の関数とする。
このとき級数 $ sum_(n = 0)^oo f (n) $ が（絶対）収束することと広義積分
$ integral_0^oo f (x) ⅆ x $ が（絶対）収束することは同値である。

]
#block[
#emph[Proof.]
$\[ 0 , + oo \)$上の関数$overline(g) (x)$と$underline(g) (x)$を
\$\$\\overline{g}(x) = f(\\lrfloor{x}),
\\quad \\underline{g}(x) = f(\\lrceil{x})\$\$
で定義すると、$f$は単調減少することから$overline(g) (x)$と$underline(g) (x)$は
$ underline(g) (x) lt.eq f (x) lt.eq overline(g) (x) $
を満たす単調減少関数である。 またここで、
$ sum_(n = 0)^oo f (n) = integral_0^oo overline(g) (x) ⅆ x $
もわかるので、
$ sum_(n = 1)^oo f (n) lt.eq integral_0^oo f (x) ⅆ x lt.eq sum_(n = 0)^oo f (n) $
が従い、級数と広義積分の比較判定ができる。~◻

]
例えば次のことがわかる。

#block[
$a$を実数とするとき、
$ sum_(n = 0)^oo n^a cases(delim: "{", = oo & (a gt.eq - 1) ,, < oo & (a < - 1) .) $

]
== 交代級数と条件収束
<交代級数と条件収束>
各項の符号が常に正（正確には非負）なのが正項級数であったが、項の符号が順番に入れ替わっていく級数を考える。

#block[
数列$(a_n)$が各自然数$n$に対して $ a_n a_(n + 1) lt.eq 0 $
を満たすとき、級数$sum a_n$を#emph[交代級数];という。

]
絶対収束しない場合でも交代級数であれば収束することがある。
次の定理はある種の交代級数の収束性を保証する。

#block[
数列$(a_n)_(n = 0)^oo$が単調減少し$n arrow.r oo$で$0$に収束するとする。
このとき、交代級数$sum_(n = 0)^oo (- 1)^n a_n$は収束し、各$N = 0 , 1 , 2 , 3 , dots.h.c$に対して
\$\$\\abs{\\sum\_{n = 0}^N (-1)^n a\_n-\\sum\_{n = 0}^\\infty (-1)^n a\_n} \\le a\_{N+1}\$\$
を満たす。

]
#block[
#emph[Proof.]
$N = 0 , 1 , 2 , 3 , dots.h.c$に対して部分和を$A_N = sum_(n = 0)^N (- 1)^n a_n$とおく。
このとき、$K = 0 , 1 , 2 , 3 , dots.h.c$に対して
$ A_(2 (K + 1)) = A_(2 K) - a_(2 K + 1) + a_(2 K + 2) lt.eq A_(2 K) , $
$ A_(2 (K + 1) + 1) = A_(2 K + 1) + a_(2 K + 2) - a_(2 K + 3) lt.eq A_(2 K + 1) $
より
$ A_1 lt.eq A_3 lt.eq A_5 lt.eq A_7 lt.eq dots.h.c lt.eq A_6 lt.eq A_4 lt.eq A_2 lt.eq A_0 $
がわかる。
したがって単調収束定理より$(A_(2 K))_K$と$(A_(2 K + 1))_K$は収束し極限をそれぞれ$overline(L)$と$underline(L)$とおくと$underline(L) lt.eq overline(L)$である。
また、ここで $ A_(2 K) - A 2 K + 1 = a_(2 K) arrow.r 0 $
より$overline(L) - underline(L) lt.eq 0$つまり$overline(L) = underline(L) = L$である。
あとは$lr(|A_N - L|) lt.eq a_(N + 1)$を示す。

- $N = 2 K$の場合、
  $ lr(|A_N - L|) = A_(2 K) - L lt.eq A_(2 K) - A_(2 K + 1) = a_(2 K + 1) = a_(N + 1) . $

- $N = 2 K + 1$の場合、
  $ lr(|A_N - L|) = L - A_(2 K + 1) lt.eq A_(2 K + 2) - A_(2 K + 1) = a_(2 K + 2) = a_(N + 1) . $

以上より示すべき不等式が示されて、直ちに$A_N arrow.r L$つまり交代級数が収束することが示される。~◻

]
#block[
<t_alt_harm_ser> 交代級数
$ sum_(n = 1)^oo (- 1)^(n - 1) / n = 1 / 1 - 1 / 2 + 1 / 3 - dots.h.c $
は対応する正項級数$sum_(n = 1)^oo 1 / n$が収束しないので絶対収束しない（注意@t_harm_ser参照）。
一方で$a_n = 1 / n$はライプニッツの判定法の仮定を満たすので、収束することがわかる。
つまり、条件収束する。

]
交代級数に対するこの収束の判定法を一般化して次の収束の条件が知られている。

#block[
実数列$(a_n)_(n = 0)^oo$は単調減少し$n arrow.r oo$で$0$に収束するとする。
数列$(b_n)_(n = 0)^oo$は部分和の数列$(B_N)$が有界、つまりある実数$M$が存在し任意の$N = 0 , 1 , 2 , 3 , dots.h.c$に対して\$\\abs{\\sum\_{n = 0}^N b\_n} \\le M\$が成り立つとする。
このとき級数$sum_(n = 0)^oo a_n b_n$は収束する。

]
#block[
#emph[Proof.] まず、部分和を$S_N = sum_(n = 0)^N a_n b_n$とおく。
ここで、部分和分（命題@t_sum_part）より$B_(- 1) = 0$と考えることで、
$ S_N = sum_(n = 0)^N a_n (B_n - B_(n - 1)) = a_(N + 1) B_N + sum_(n = 0)^oo (a_n - a_(n + 1)) B_n $
ここで$(B_N)$が有界で$a_N arrow.r 0$より$a_(N + 1) B_N arrow.r 0$である。
また、仮定$a_(n + 1) lt.eq a_n$を使うと、
\$\$\\abs{(a\_n-a\_{n+1})B\_n} \\le (a\_n-a\_{n+1})\\abs{B\_n} \\le (a\_n-a\_{n+1})M\$\$
で
$ sum_(n = 0)^N (a_n - a_(n + 1)) M = (a_0 - a_(N + 1)) M lt.eq a_0 M < oo $
なので比較判定法から$sum_(n = 0)^oo (a_n - a_(n + 1)) B_n$も収束し、$(S_N)$の収束も示された。~◻

]
#block[
交代級数の例@t_alt_harm_serの類似として級数
$ sum_(n = 1)^oo frac(sin frac(2 pi, 3) n, n) = sqrt(3) / 2 / 1 - sqrt(3) / 2 / 2 + 0 / 3 + dots.h.c $
を考える。 $a_n = 1 / n$,
$b_n = sin frac(2 pi, 3) n$とするとディリクレの判定法の仮定を満たすので、条件収束することがわかる。
一般に和$sum_(n = M)^N sin n theta$は計算できる（後の章を参照）ことから、級数
$ sum_(n = 1)^oo frac(sin n, n) = frac(sin 1, 1) + frac(sin 2, 2) + frac(sin 3, 3) + dots.h.c $
などはやはり条件収束することがわかる。

]
== べき級数
<べき級数>
#block[
数列$(a_n)_(n = 0)^oo$と数$a$と$x$に対して定まる次の形の級数
$ sum_(n = 0)^oo a_n (x - a)^n = a_0 + a_1 (x - a) + a_2 (x - a)^2 + a_3 (x - a)^3 + dots.h.c $
を#emph[べき級数];または#emph[整級数];という。

]
べき級数は単一の$x$のみ考えるなら特殊な形の級数であるが、重要な点は$x$を変数、べき級数を関数と見て議論を展開する点にある。

#block[
べき級数$sum_(n = 0)^oo a_n (x - a)^n$は$x = a$のとき$a_0$に必ず収束する。

]
#block[
べき級数$sum_(n = 0)^oo a_n (x - a)^n$が点$x = b eq.not a$で収束するならば、$lr(|x - a|) < lr(|b - a|)$を満たすすべての点$x$でこのべき級数は絶対収束する。

]
#block[
#emph[Proof.]
級数$sum_(n = 0)^oo a_n b^n$が収束するので、命題@t_ser_convより数列$(a_n (b - a)^n)_(n = 0)^oo$は$0$に収束し、特に有界である。
そこである実数$M$が存在し、任意の$n = 0 , 1 , 2 , 3 , dots.h.c$に対して$lr(|a_n (b - a)^n|) lt.eq M$である。
ここで
\$\$|a\_n(x-a)^n| = |a\_n(b-a)^n|\\abs{\\frac{x-a}{b-a}}^n \\le M\\abs{\\frac{x-a}{b-a}}^n\$\$
であり、$lr(|x - a|) < lr(|b - a|)$であることから右辺から定まる正項級数は収束するので、
級数$sum_(n = 0)^oo a_n (x - a)^n$は絶対収束する。~◻

]
この命題をもとに各べき級数には固有な次の値が定義できる。

#block[
べき級数$sum_(n = 0)^oo a_n (x - a)^n$に対して
\$\$\\sup\\lrset{|b-a| \\mid \\text{級数\$\\sum\_{n = 0}^\\infty a\_n(b-a)^n\$が収束する}}\$\$
は非負の実数または正の無限大で、べき級数$sum_(n = 0)^oo a_n (x - a)^n$の#emph[収束半径];という。

]
#block[
$r$を収束半径とするとき、$lr(|x - a|) > r$に対してはべき級数は必ず発散し、$lr(|x - a|) < r$に対しては先の命題よりべき級数は必ず絶対収束する。
$r = oo$の場合では任意の$x$でべき級数は絶対収束する。

]
#block[
収束半径という用語に「半径」という単語が入っているのはべき級数の理論を$a_n$や$x$が複素数の場合に拡張したときに絶対収束が言える$x$の範囲$lr(|x - a|) < r$が複素平面での円板になっていることによる。
実際、この章の内容は複素数の範囲に拡張でき、後の複素指数関数の部分で使われる。

]
級数の収束に関するダランベールの判定法やコーシーの判定法から収束半径について次の公式が知られている。

#block[
べき級数$sum_(n = 0)^oo a_n (x - a)^n$を考える。

- さらに$(a_n)$はどの項も$0$でない数列として、極限
  \$\$\\lim\_{n \\to \\infty}\\abs{\\frac{a\_{n+1}}{a\_n}} = c\$\$
  が存在したとするとき、べき級数の収束半径は逆数$c^(- 1)$となる。

- 上極限 \$\$\\limsup\_{n \\to \\infty}\\sqrt\[n\]{\\abs{a\_n}} = c\$\$
  について、べき級数の収束半径は逆数$c^(- 1)$となる。

]
#block[
数$c$に対してべき級数
$ sum_(n = 0)^oo c^n x^n = 1 + c x + c^2 x^2 + c^3 x^3 + dots.h.c $
を考える。
\$\\lim\_{n \\to \\infty}\\abs{\\frac{c^{n+1}}{c^n}} = |c|\$よりこのべき級数の収束半径は$lr(|c|)^(- 1)$である。

]
#block[
数$c$に対してべき級数
$ sum_(n = 0)^oo c^n x^(2 n) = 1 + c x^2 + c^2 x^4 + c^3 x^6 + dots.h.c $
を考える。
\$\\lim\_{n \\to \\infty}\\sqrt\[2 n\]{\\abs{c^n}} = \\sqrt{|c|}\$よりこのべき級数の収束半径は$sqrt(lr(|c|))^(- 1)$である。

]
ここからはいよいよ関数としてのべき級数を考えよう。
まず、べき級数$sum_(n = 0)^oo a_n (x - a)^n$の収束半径を$r$とするとき、関数
$ f (x) = sum_(n = 0)^oo a_n (x - a)^n $
が$lr(|x - a|) < r$を満たす数$x$に対して定義されることに注意する。
また、$N = 0 , 1 , 2 , 3 , dots.h.c$に対して部分和を
$ f_N (x) = sum_(n = 0)^N a_n (x - a)^n $ とおく。
この部分和は$N$次以下の多項式である。

#block[
収束半径が$r$であるべき級数$f (x) = sum_(n = 0)^oo a_n (x - a)^n$は$lr(|x - a|) < r$で連続である。

]
#block[
#emph[Proof.] $lr(|c - a|) < r$を満たす数$c$と$epsilon > 0$を考える。
$delta_1 = frac(r - lr(|c - a|), 2)$とおき、$b = a + lr(|c - a|) + delta_1 = a + frac(r + lr(|c - a|), 2)$とおくと$lr(|b - a|) < r$なので、
$(f_N (b))_N$は$f (b)$に絶対収束することから、
$ sum_(n = N + 1)^oo lr(|a_n|) lr(|b - a|)^n < epsilon $
となる自然数$N = 0 , 1 , 2 , 3 , dots.h.c$が存在する。
次に$f_N (x)$は多項式関数より、特に連続関数なので、ある$delta_2 > 0$が存在し、任意の$lr(|x - c|) < delta_2$を満たす$x$に対して$lr(|f_N (x) - f_N (c)|) < epsilon$である。
ここで\$\\delta = \\min\\lrset{ \\delta\_1, \\delta\_2 } \> 0\$とおくと$lr(|x - c|) < delta$なる数$x$に対して、$lr(|x - a|) < lr(|b - a|) < r$より
\$\$|f(x)-f\_N(x)| = \\abs{\\sum\_{n = N+1}^\\infty a\_n(x-a)^n} \\le \\sum\_{n = N+1}^\\infty |a\_n||x-a|^n \\le \\sum\_{n = N+1}^\\infty |a\_n||b-a|^n \< \\varepsilon\$\$
である。 したがって以上より
$ lr(|f (x) - f (c)|) lt.eq lr(|f (x) - f_N (x)|) + lr(|f_N (x) - f_N (c)|) + lr(|f_N (c) - f (c)|) lt.eq epsilon + epsilon + epsilon = 3 epsilon $
なので、$f (x)$は点$x = c$で連続であることがわかる。~◻

]
#block[
収束半径が$r$であるべき級数$f (x) = sum_(n = 0)^oo a_n (x - a)^n$に対して
$ integral_a^b f (x) ⅆ x = sum_(n = 0)^oo frac(a_n, n + 1) (b - a)^(n + 1) = a_0 (b - a) + a_1 / 2 (b - a)^2 + a_2 / 3 (b - a)^3 + a_3 / 4 (b - a)^4 + dots.h.c $
が任意の$lr(|b - a|) < r$を満たす実数$b$に対して成り立つ。

]
#block[
#emph[Proof.]
べき級数$sum_(n = 0)^oo frac(a_n, n + 1) (b - a)^(n + 1)$の収束半径が$r$であることに注意する。
$N = 0 , 1 , 2 , 3 , dots.h.c$に対して、 \$\$\\begin{aligned}
\\abs{\\int\_a^b f(x)\\dd{x}-\\int\_a^b f\_N(x)\\dd{x}}
&\\le \\abs{\\int\_a^b |f(x)-f\_N(x)|\\dd{x}}
\\le \\abs{\\int\_a^b \\sum\_{n = N+1}^\\infty |a\_n||x-a|^n\\dd{x}} \\\\
&\\le \\abs{\\int\_a^b \\sum\_{n = N+1}^\\infty |a\_n||b-a|^n\\dd{x}}
\\le \\sum\_{n = N+1}^\\infty |a\_n||b-a|^{n+1}.
\\end{aligned}\$\$
よって$N arrow.r oo$で、$integral_a^b f_N (x) ⅆ x arrow.r integral_a^b f (x) ⅆ x$であり、
$ integral_a^b f_N (x) ⅆ x = sum_(n = 0)^N frac(a_n, n + 1) (b - a)^(n + 1) $
であることから定理の結論が得られる。~◻

]
#block[
収束半径が$r$であるべき級数$f (x) = sum_(n = 0)^oo a_n (x - a)^n$は微分可能で
$ f' (x) = sum_(n = 1)^oo n a_n (x - a)^(n - 1) = sum_(n = 0)^oo (n + 1) a_(n + 1) (x - a)^n = a_1 + 2 a_2 (x - a) + 3 a_3 (x - a)^2 + dots.h.c $
が任意の$lr(|x - a|) < r$を満たす実数$x$に対して成り立つ。

]
#block[
#emph[Proof.]
べき級数$g (x) = sum_(n = 1)^oo n a_n (x - a)^(n - 1)$の収束半径が$r$であることに注意する。
そこで前の定理より$g (x)$を項別積分すると
$ integral_a^x g (t) ⅆ t = sum_(n = 1)^oo a_n (x - a)^n = f (x) - a_0 $
よって、$f$は$g$の原始関数なので、$f$を微分すると$g$を得る。~◻

]
#block[
べき級数を微分して収束半径が変わらないべき級数になるので、微分することを何回も繰り返すことができ、べき級数は無限回微分可能であることわかる。

]
== 種々のべき級数
<種々のべき級数>
この節ではこれまでに登場した関数とべき級数を結びつける。
自明なこととして多項式関数はそのままべき級数と見ることができる。

一般の（滑らかな）関数とべき級数を結びつけるのが次の定理でテイラーの定理から直ちに従う。

#block[
$f (x)$を無限回微分可能な関数、$r$を非負の実数または正の無限大とする。
ここで、$lr(|x|) < r$なる実数$x$に対して
$ lim_(n arrow.r oo) sup_(theta in [0 , 1]) frac(f^((n)) (a + theta (x - a)), n !) (x - a)^n = 0 $
が成り立つならば、
$ f (x) = sum_(n = 0)^oo frac(f^((n)) (a), n !) (x - a)^n = 1 + f' (a) (x - a) + frac(f'' (a), 2) (x - a)^2 + frac(f^((3)) (a), 3 !) (x - a)^3 + dots.h.c quad (lr(|x|) < r) $
が成り立つ。

]
このときの#link(<e_taylor_exp>)[\[e\_taylor\_exp\]];のことを関数$f (x)$の点$x = a$での#emph[テーラー展開];という。
また、$a = 0$のときのテーラー展開のことを#emph[マクローリン展開];という。

次の一覧は各種関数のテーラー展開（マクローリン展開）をまとめたものである。

#block[
$x$を実数として以下が成立する。
$ frac(1, 1 - x) = sum_(n = 0)^oo x^n = 1 + x + x^2 + x^3 + dots.h.c quad (lr(|x|) < 1) . $
$ exp (x) = e^x = sum_(n = 0)^oo frac(1, n !) x^n = 1 + x + 1 / 2 x^2 + frac(1, 3 !) x^3 + dots.h.c . $
$ log (1 + x) = sum_(n = 1)^oo (- 1)^(n - 1) / n x^n = x - 1 / 2 x^2 + 1 / 3 x^3 - dots.h.c quad (lr(|x|) < 1) . $
$ sin x = sum_(k = 0)^oo frac((- 1)^k, (2 k + 1) !) x^(2 k + 1) = x - 1 / 6 x^3 + frac(1, 5 !) x^5 - dots.h.c , $
$ cos x = sum_(k = 0)^oo frac((- 1)^k, (2 k) !) x^(2 k) = 1 - 1 / 2 x^2 + frac(1, 4 !) x^4 - dots.h.c . $
$ sinh x = sum_(k = 0)^oo frac(1, (2 k + 1) !) x^(2 k + 1) = x + 1 / 6 x^3 + frac(1, 5 !) x^5 + dots.h.c , $
$ cosh x = sum_(k = 0)^oo frac(1, (2 k) !) x^(2 k) = 1 + 1 / 2 x^2 + frac(1, 4 !) x^4 + dots.h.c . $

]
一般にテーラーの定理の剰余項が$0$に収束することを示すのは大変なので、既知のべき級数の項別微分、項別積分を利用して様々なテーラー展開を求めるとよい。

#block[
#link(<e_geom_power>)[\[e\_geom\_power\]];は等比級数からも導出することができる。
さらにそれを項別積分すると、
$ integral_0^x frac(1, 1 - x) ⅆ x = - log (1 - x) = sum_(n = 1)^oo 1 / n x^n = x + 1 / 2 x^2 + 1 / 3 x^3 + dots.h.c quad (lr(|x|) < 1) . $
よって、$log (1 + x)$の式#link(<e_log_power>)[\[e\_log\_power\]];を得ることができる。

]
#block[
関数$e^(x^2)$のテーラー展開は#link(<e_exp_power>)[\[e\_exp\_power\]];の$x$に$x^2$を代入することで
$ e^(x^2) = sum_(n = 0)^oo frac(1, n !) x^(2 n) = 1 + x^2 + 1 / 2 x^4 + frac(1, 3 !) x^6 + dots.h.c $
と求めることができる。 なお、このべき級数の収束半径は$oo$である。

]
