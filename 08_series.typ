
= 級数

#import "deps/theorem.typ": thmrules, theorem, lemma, proposition, corollary, definition, example, remark, proof
#show: thmrules.with()

#import "@preview/physica:0.9.3": dd

== 級数の収束

数列$(a_n)_(n = 0)^oo$の項$a_0, a_1, a_2, a_3, dots$の和について考える。
このような和のことを級数と呼び、形式的には
$
sum_(n = 0)^oo a_n = a_0+a_1+a_2+a_3+dots
$
と表すが、無限個の項の和なのでしっかり定義する必要がある。

#definition([級数])[
数列$(a_n)_n$と$N = 0, 1, 2, 3, dots$に対して、初項から項$a_N$までの_部分和_
$
A_N = sum_(n = 0)^N a_n = a_0+a_1+a_2+a_3+dots+a_N
$
を定義する。
ここで部分和を並べて得られる数列$(A_N)_N$がある数$S$に収束する時、
_級数_$sum_n a_n$は収束するといい、この時の極限$S$を数列$(a_n)_n$の級数の値または_和_と呼び$sum_n a_n$で表す。
また、部分和の数列$(A_N)_N$が発散するとき、級数$sum_n a_n$は発散するという。
級数の表記は
$
sum_(n = 0)^oo a_n,
quad sum_(n = 1)^oo a_n,
quad sum_(n in NN) a_n,
quad sum_n a_n,
quad sum a_n
$
などがある。
]

#example([等比級数])[
$c$を実数として等比数列$(c^n)_(n = 0)^oo$を考える。
対応する級数
$
sum_(n = 0)^oo c^n = 1+c+c^2+c^3+dots
$
を_等比級数_という。
$c eq.not 1$の時、部分和は
$
sum_(n = 0)^N c^n = (c^(N+1)-1)/(c-1) = (1-c^(N+1))/(1-c)
$
であり、$-1 < c < 1$のとき収束し級数の値は
$
sum_(n = 0)^oo c^n = 1/(1-c)
$
である。
それ以外の$c$の場合は発散する。
$c = 1$の場合も$sum_(n = 0)^N c^n = N$より発散する。
]

次の命題は級数が収束する必要条件を与える。

#proposition[
数列$(a_n)$に対して、級数$sum a_n$が収束するならば数列$(a_n)$は$0$に収束する。
] <t_ser_conv>

#proof[
各$n$に対して、
$
a_(n+1) = A_(n+1)-A_n
$
が成り立つ。
級数$sum a_n$が収束するため、$(A_n)$と$(A_(n+1))$はともに和$S$に収束することから、
数列$(a_(n+1))$ひいては$(a_n)$は$S-S = 0$に収束する。
]

#remark[
この命題の逆は成立しない。
例えば$n = 1, 2, 3, dots$に対して$a_n = 1/n$とおいた級数
$
sum_(n = 1)^oo 1/n = 1/1+1/2+1/3+dots
$
は収束しない。 実際、
$
A_(2^2) = 1+1/2+1/3+1/4 > 1+1/2+1/4+1/4 = 1+1/2+1/2,
$
$
A_(2^3) = 1+1/2+1/3+1/4+1/5+1/6+1/7+1/8 > 1+1/2+1/4+1/4+1/8+1/8+1/8+1/8 = 1+1/2+1/2+1/2
$
で、
続けると
$
A_(2^k) > 1+k/2
$
がわかり、これは収束しない。
] <t_harm_ser>

級数（数列）の中でも特別なのが次の正項級数である。

#definition([正項級数])[
数列$(a_n)$が各自然数$n$に対して$a_n >= 0$を満たすとき、級数$sum a_n$を_正項級数_という。
]

#proposition[
正項級数$sum a_n$が収束するための必要十分条件は部分和の数列$(A_N)$が上に有界であることである。
]

#proof[
$sum a_n$が正項級数であることから、各自然数$N$に対して
$
A_(N+1)-A_N = a_(N+1) >= 0
$
より、数列$(A_N)$は単調増加である。
したがって$(A_N)$が上に有界ならば、単調収束定理（@t_mono_conv）より、収束する。
逆は@t_conv_bdd より従う。
]

このため正項級数の場合に限って級数$sum a_n$が収束することを
$
sum a_n < oo
$
と表し、発散することを
$
sum a_n = oo
$
と表す。

#definition([級数の絶対収束と条件収束])[
級数$sum a_n$に対して正項級数$sum abs(a_n)$が収束するとき、級数$sum a_n$は_絶対収束_するという。
絶対収束しないが収束するとき、級数は_条件収束_するという。
]

#proposition[
級数$sum a_n$が絶対収束するならばそれは収束している。
]

#proof[
$N in NN$に対して、
$
A_N = sum_(n <= N) a_n,
quad macron(A)_N = sum_(n <= N) abs(a_n)
$
とおくと、
$
abs(A_N-A_M)
= abs(sum_(n = M+1)^N a_n)
<= sum_(n = M+1)^N abs(a_n)
= abs(macron(A)_N-macron(A)_M).
$
よって$N$について上極限を$M$について下極限をそれぞれ取ると、$macron(A)_N$, $macron(A)_M$は仮定より収束することに注意して、
$
limsup_(N -> oo) A_N-liminf_(M -> oo) A_M
<= lim_(N -> oo) macron(A)_N-lim_(M -> oo) macron(A)_M
= 0.
$
したがって上極限と下極限が一致したので$A_N$さらには級数$sum a_n$は収束する。
]

ここまでくると級数の理論は広義積分の理論と似ていることに気が付く。
つまり、級数の収束は部分和の極限で定義していることは広義積分の積分区間を有界閉区間で近似していたことに対応するし、
級数でも広義積分でも絶対収束が登場する。
実際次の命題は級数版の比較判定法である。

#proposition([級数の比較判定法])[
$(a_n)$を数列とする。

- 二つの条件
  $
  abs(a_n) <= b_n quad forall n,
  quad sum b_n < oo
  $
  を満たす正項級数$sum b_n$が存在するならば、
  級数$sum a_n$は絶対収束し、
  $
  abs(sum a_n) <= sum abs(a_n) <= sum b_n
  $
  が成り立つ。
- 二つの条件
  $
  abs(a_n) >= b_n quad forall n,
  quad sum b_n = oo
  $
  を満たす正項級数$sum b_n$が存在するならば、
  級数$sum a_n$は絶対収束せず、
  $
  sum abs(a_n) = oo
  $
  である。
]

級数を等比級数と比較することで収束性をある程度判定することができる。

#theorem([ダランベールの判定法])[
$(a_n)$をどの項も$0$でない数列とする。
極限
$
c = lim_(n -> oo) abs(a_(n+1)/a_n)
$
が存在し、$c < 1$ならば級数$sum a_n$は絶対収束し、$c > 1$ならば級数$sum a_n$は発散する。
]

#theorem([コーシーの判定法])[
$(a_n)$を数列とする。
上極限
$
c = limsup_(n -> oo) root(n, abs(a_n))
$
について、$c < 1$ならば級数$sum a_n$は絶対収束し、$c > 1$ならば級数$sum a_n$は発散する。
]

#remark[
どちらの判定法も$c = 1$の場合は級数が収束するか発散するかわからない。
]

#example[
級数
$
sum_(n = 0)^oo n/2^n = 0/1+1/2+2/2^2+3/2^3+dots
$
は（絶対）収束する。
実際、$a_n = n/2^n$とおくと、$n -> oo$で
$
abs(a_(n+1)/a_n) = (n+1)/2^(n+1) n/2^n = (n+1)/2n = (1+1/n)/2 -> 1/2 < 1
$
より、ダランベールの判定法が使えて、収束する。
]

#example[
級数
$
sum_(n = 1)^oo 1/n^2 = 1/1^2+1/2^2+1/3^2+dots
$
ではダランベールの判定法とコーシーの判定法はともに$c = 1$となってしまい、級数が収束するか発散するか判定できない。
実際にはすぐ次でわかる通り収束する。
]

このような級数に対しては次の定理で広義積分の判定に帰着させるとよい。

#theorem([級数と広義積分の比較])[
$f$を$\[0, +oo\)$上定義された単調減少する非負値の関数とする。
このとき級数
$
sum_(n = 0)^oo f(n)
$
が（絶対）収束することと広義積分
$
integral_0^oo f(x) dd(x)
$
が（絶対）収束することは同値である。
]

#proof[
$\[0, +oo\)$上の関数$overline(g)(x)$と$underline(g)(x)$を
$
overline(f)(x) = f(floor(x)),
quad underline(f)(x) = f(ceil(x))
$
で定義すると、$f$は単調減少することから$overline(f)(x)$と$underline(f)(x)$は
$
underline(f)(x) <= f(x) <= overline(f)(x)
$
を満たす単調減少関数である。
またここで、
$
sum_(n = 0)^oo f(n) = integral_0^oo overline(f)(x) dd(x),
quad sum_(n = 1)^oo f(n) = integral_0^oo underline(f)(x) dd(x)
$
もわかるので、
$
sum_(n = 1)^oo f(n) <= integral_0^oo f(x) dd(x) <= sum_(n = 0)^oo f(n)
$
が従い、級数と広義積分の比較判定ができる。
]

例えば次のことがわかる。

#proposition[
$a$を実数とするとき、
$
sum_(n = 0)^oo n^a
cases(
  = oo & (a >= -1)",",
  < oo & (a < -1)
)
$
が成り立つ。
]

== 交代級数と条件収束

各項の符号が常に正（正確には非負）なのが正項級数であったが、項の符号が順番に入れ替わっていく級数を考える。

#definition([交代級数])[
数列$(a_n)$が各自然数$n$に対して
$
a_n a_(n+1) <= 0
$
を満たすとき、級数$sum a_n$を_交代級数_という。
つまり交代級数$sum a_n$は正項級数$sum abs(a_n)$を使って、$sum (-1)^n abs(a_n)$または$sum (-1)^(n+1) abs(a_n)$と表すことができる。
]

絶対収束しない場合でも交代級数であれば収束することがある。
次の定理はある種の交代級数の収束性を保証する。

#theorem([ライプニッツの判定法])[
数列$(a_n)_(n = 0)^oo$が単調減少し$n -> oo$で$0$に収束するとする（特に$a_n >= 0$である）。
このとき、交代級数$sum_(n = 0)^oo (-1)^n a_n$は収束し、各$N = 0, 1, 2, 3, dots$に対して
$
abs(sum_(n = 0)^N (-1)^n a_n-sum_(n = 0)^oo (-1)^n a_n) <= a_(N+1)
$
を満たす。
]

#proof[
$N = 0, 1, 2, 3, dots$に対して部分和を$A_N = sum_(n = 0)^N (-1)^n a_n$とおく。
このとき、$K = 0, 1, 2, 3, dots$に対して
$
A_(2(K+1)) = A_(2 K)-a_(2 K+1)+a_(2 K+2) <= A_(2 K),
$
$
A_(2(K+1)+1) = A_(2 K+1)+a_(2 K+2)-a_(2 K+3) <= A_(2 K+1)
$
より
$
A_1 <= A_3 <= A_5 <= A_7 <= dots <= A_6 <= A_4 <= A_2 <= A_0
$
がわかる。
したがって単調収束定理より$(A_(2 K))_K$と$(A_(2 K+1))_K$は収束し極限をそれぞれ$overline(L)$と$underline(L)$とおくと$underline(L) <= overline(L)$である。
また、ここで
$
A_(2 K)-A_(2 K+1) = a_(2 K) -> 0
$
より$overline(L)-underline(L) <= 0$、つまり$overline(L) = underline(L) = L$である。
あとは$abs(A_N-L) <= a_(N+1)$を示す。
- $N = 2 K$の場合、
  $
  abs(A_N-L) = A_(2 K)-L <= A_(2 K)-A_(2 K+1) = a_(2 K+1) = a_(N+1)
  $
  である。
- $N = 2 K+1$の場合、
  $
  abs(A_N-L) = L-A_(2 K+1) <= A_(2 K+2)-A_(2 K+1) = a_(2 K+2) = a_(N+1).
  $
  である。
以上より示すべき不等式が示されて、直ちに$A_N -> L$つまり交代級数が収束することが示される。
]

#example[
交代級数
$
sum_(n = 1)^oo (-1)^(n-1)/n = 1/1-1/2+1/3-dots
$
は対応する正項級数$sum_(n = 1)^oo 1/n$が収束しないので絶対収束しない（@t_harm_ser 参照）。
一方で$a_n = 1/n$はライプニッツの判定法の仮定を満たすので、収束することがわかる。
つまり、条件収束する。
] <t_alt_harm_ser>

交代級数に対するこの収束の判定法を一般化して次の収束の条件が知られている。

#theorem([ディリクレの判定法])[
実数列$(a_n)_(n = 0)^oo$は単調減少し$n -> oo$で$0$に収束するとする。
数列$(b_n)_(n = 0)^oo$は部分和の数列$(B_N)$が有界、つまりある実数$M$が存在し任意の$N = 0, 1, 2, 3, dots$に対して$abs(sum_(n = 0)^N b_n) <= M$が成り立つとする。
このとき級数$sum_(n = 0)^oo a_n b_n$は収束する。
]

#proof[
まず、部分和を$S_N = sum_(n = 0)^N a_n b_n$とおく。
ここで、部分和分（@t_sum_part）より$B_(-1) = 0$と考えることで、
$
S_N = sum_(n = 0)^N a_n (B_n-B_(n-1)) = a_(N+1) B_N+sum_(n = 0)^oo (a_n-a_(n+1)) B_n
$
ここで$(B_N)$が有界で$a_N -> 0$より$a_(N+1) B_N -> 0$である。
また、仮定$a_(n+1) <= a_n$を使うと、
$
abs((a_n-a_(n+1))B_n)
<= (a_n-a_(n+1))abs(B_n)
<= (a_n-a_(n+1))M
$
で
$
sum_(n = 0)^N (a_n-a_(n+1))M = (a_0-a_(N+1))M <= a_0 M < oo
$
なので比較判定法から$sum_(n = 0)^oo (a_n-a_(n+1)) B_n$も収束し、
$(S_N)$の収束も示された。
]

#example[
交代級数の@t_alt_harm_ser の類似として級数
$
sum_(n = 1)^oo (sin (2 pi)/3 n)/n = (sqrt(3)/2)/1-(sqrt(3)/2)/2+0/3+dots
$
を考える。
$a_n = 1/n$, $b_n = sin (2 pi)/3 n$とするとディリクレの判定法の仮定を満たすので、条件収束することがわかる。

一般に和$sum_(n = M)^N sin n theta$は計算できる（後の章を参照）ことから、級数
$
sum_(n = 1)^oo (sin n)/n = (sin 1)/1+(sin 2)/2+(sin 3)/3+dots
$
などはやはり条件収束することがわかる。
]

== べき級数

#definition([べき級数])[
数列$(a_n)_(n = 0)^oo$と数$a$と$x$に対して定まる次の形の級数
$
sum_(n = 0)^oo a_n (x-a)^n = a_0+a_1 (x-a)+a_2 (x-a)^2+a_3 (x-a)^3+dots
$
を_べき級数_または_整級数_という。
]

べき級数は単一の$x$のみ考えるなら特殊な形の級数であるが、重要な点は$x$を変数、べき級数を関数と見て議論を展開する点にある。

#remark[
べき級数$sum_(n = 0)^oo a_n (x-a)^n$は$x = a$のとき$a_0$に必ず収束する。
]

#proposition([べき級数の収束性])[
べき級数$sum_(n = 0)^oo a_n (x-a)^n$が点$x = b eq.not a$で収束するならば、$abs(x-a) < abs(b-a)$を満たすすべての点$x$でこのべき級数は絶対収束する。
]

#proof[
級数$sum_(n = 0)^oo a_n b^n$が収束するので、@t_ser_conv より数列$(a_n (b-a)^n)_(n = 0)^oo$は$0$に収束し、特に有界である。
そこである実数$M$が存在し、任意の$n = 0, 1, 2, 3, dots$に対して$abs(a_n (b-a)^n) <= M$である。
ここで
$
abs(a_n (x-a)^n)
= abs(a_n (b-a)^n) abs((x-a)/(b-a))^n
<= M abs((x-a)/(b-a))^n
$
であり、$abs(x-a) < abs(b-a)$であることから右辺から定まる正項級数は収束するので、
級数$sum_(n = 0)^oo a_n (x-a)^n$は絶対収束する。
]

この命題をもとに各べき級数には固有な次の値が定義できる。

#definition([収束半径])[
べき級数$sum_(n = 0)^oo a_n (x-a)^n$に対して、
級数として収束するような$x = b$を考え$abs(b-a)$の上限をべき級数$sum_(n = 0)^oo a_n (x-a)^n$の_収束半径_という。
収束半径は非負の実数または正の無限大である。
]

#remark[
$r$を収束半径とするとき、$abs(x-a) > r$に対してはべき級数は必ず発散し、$abs(x-a) < r$に対しては先の命題よりべき級数は必ず絶対収束する。
$r = oo$の場合では任意の$x$でべき級数は絶対収束する。
]

#remark[
収束半径という用語に「半径」という単語が入っているのはべき級数の理論を$a_n$や$x$が複素数の場合に拡張したときに絶対収束が確実に言える$x$の範囲$abs(x-a) < r$が複素平面での円板になっていることによる。
実際、この章の内容は複素数の範囲に拡張でき、後の複素指数関数の部分で使われる。
]

級数の収束に関するダランベールの判定法やコーシーの判定法から収束半径について次の公式が知られている。

#theorem[
べき級数$sum_(n = 0)^oo a_n (x-a)^n$を考える。

- さらに$(a_n)$はどの項も$0$でない数列として、極限
  $
  c = lim_(n -> oo) abs(a_(n+1)/a_n)
  $
  が存在したとするとき、べき級数の収束半径は逆数$c^(-1)$となる。
- 上極限
  $
  c = limsup_(n -> oo) root(n, abs(a_n))
  $
  について、べき級数の収束半径は逆数$c^(-1)$となる。
]

#example[
数$c$に対してべき級数
$
sum_(n = 0)^oo c^n x^n = 1+c x+c^2 x^2+c^3 x^3+dots
$
を考える。
$
lim_(n -> oo) abs(c^(n+1)/c^n) = abs(c)
$
より、
このべき級数の収束半径は$abs(c)^(-1)$である。
]

#example[
数$c$に対してべき級数
$
sum_(n = 0)^oo c^n x^(2 n) = 1+c x^2+c^2 x^4+c^3 x^6+dots
$
を考える。
$
limsup_(n -> oo) root(2 n, abs(c^n)) = sqrt(abs(c))
$
より、
このべき級数の収束半径は$sqrt(abs(c))^(-1)$である。
]

ここからはいよいよ関数としてのべき級数を考えよう。
まず、べき級数$sum_(n = 0)^oo a_n (x-a)^n$の収束半径を$r$とするとき、関数
$
f(x) = sum_(n = 0)^oo a_n (x-a)^n
$
が$abs(x-a) < r$を満たす数$x$に対して定義されることに注意する。
また、$N = 0, 1, 2, 3, dots$に対して部分和を
$
f_N (x) = sum_(n = 0)^N a_n (x-a)^n
$
とおく。
この部分和は$N$次以下の多項式である。

#theorem([べき級数の連続性])[
収束半径が$r > 0$であるべき級数$f(x) = sum_(n = 0)^oo a_n (x-a)^n$は$abs(x-a) < r$で連続である。
]

#proof[
まずは$abs(x-a) < r$, $abs(y-a) < r$を満たす$x$, $y$と自然数$N$に対して、
$
abs(f(x)-f(y))
&<= abs(f(x)-f_N (x))+abs(f_N (x)-f_N (y))+abs(f_N (y)-f(y)) \
&<= sum_(n = N+1)^oo abs(a_n) abs(x-a)^n+abs(f_N (x)-f_N (y))+sum_(n = N+1)^oo abs(a_n) abs(y-a)^n
$
に注意する。
ここで、$0 < r_0 < r$に対して、級数$sum abs(a_n) r_0^n$は収束するので、$abs(x-a), abs(y-a) <= r_0$のとき
$
sum_(n = N+1)^oo abs(a_n) abs(x-a)^n, sum_(n = N+1)^oo abs(a_n) abs(y-a)^n
<= sum_(n = N+1)^oo abs(a_n) r_0^n
$
で右辺は$N -> oo$で$0$に収束する。
ここで$f_N (x)$は多項式関数より特に有界閉区間で一様連続なので、度合い関数を使って$abs(f_N (x)-f_N (y)) <= omega_N(abs(x-y))$である。
よって
$
abs(f(x)-f(y)) <= 2 sum_(n = N+1)^oo abs(a_n) r_0^n+omega_N(abs(x-y))
$
なので、
$f(x)$は$abs(x-a) <= r_0$で一様連続であり、$abs(x-a) < r$で連続であることがわかる。
]

#theorem([べき級数の項別積分])[
収束半径が$r$であるべき級数$f(x) = sum_(n = 0)^oo a_n (x-a)^n$に対して
$
integral_a^b f(x) dd(x)
= sum_(n = 0)^oo (a_n)/(n+1) (b-a)^(n+1)
= a_0 (b-a)+a_1/2 (b-a)^2+a_2/3 (b-a)^3+a_3/4 (b-a)^4+dots
$
が任意の$abs(b-a) < r$を満たす実数$b$に対して成り立つ。
]

#proof[
べき級数$sum_(n = 0)^oo (a_n)/(n+1) (b-a)^(n+1)$の収束半径が$r$であることに注意する。
$N = 0, 1, 2, 3, dots$に対して、
$
abs(integral_a^b f(x) dd(x)-integral_a^b f_N (x) dd(x))
&<= abs(integral_a^b abs(f(x)-f_N(x)) dd(x))
<= abs(integral_a^b sum_(n = N+1)^oo abs(a_n) abs(x-a)^n dd(x))
<= abs(integral_a^b sum_(n = N+1)^oo abs(a_n) abs(b-a)^n dd(x)) \
&<= sum_(n = N+1)^oo abs(a_n) abs(b-a)^(n+1).
$
よって$N -> oo$で、$integral_a^b f_N (x) dd(x) -> integral_a^b f(x) dd(x)$であり、
$
integral_a^b f_N (x) dd(x) = sum_(n = 0)^N (a_n)/(n+1) (b-a)^(n+1)
$
であることから定理の結論が得られる。
]

#theorem([べき級数の項別微分])[
収束半径が$r$であるべき級数$f(x) = sum_(n = 0)^oo a_n (x-a)^n$は微分可能で
$
f'(x)
= sum_(n = 1)^oo n a_n (x-a)^(n-1)
= sum_(n = 0)^oo (n+1) a_(n+1) (x-a)^n
= a_1+2 a_2 (x-a)+3 a_3 (x-a)^2+dots
$
が任意の$abs(x-a) < r$を満たす実数$x$に対して成り立つ。
]

#proof[
べき級数$g(x) = sum_(n = 1)^oo n a_n (x-a)^(n-1)$の収束半径が$r$であることに注意する。
そこで前の定理より$g(x)$を項別積分すると
$
integral_a^x g(t) dd(t) = sum_(n = 1)^oo a_n (x-a)^n = f(x)-a_0.
$
よって、$f$は$g$の原始関数なので、$f$を微分すると$g$を得る。
]

#remark[
べき級数を微分して収束半径が変わらないべき級数になるので、微分することを何回も繰り返すことができ、べき級数は無限回微分可能であることわかる。
]

== 種々のべき級数

この節ではこれまでに登場した関数とべき級数を結びつける。
自明なこととして多項式関数はそのままべき級数と見ることができる。

一般の（滑らかな）関数とべき級数を結びつけるのが次の定理でテイラーの定理から直ちに従う。

#theorem[
$f(x)$を無限回微分可能な関数、$r$を非負の実数または正の無限大とする。
ここで、$abs(x) < r$なる実数$x$に対して
$
lim_(n -> oo) sup_(theta in [0, 1]) (f^((n))(a+theta (x-a)))/(n!) (x-a)^n = 0
$
が成り立つならば、
$
f(x)
= sum_(n = 0)^oo (f^((n))(a))/(n!) (x-a)^n
= 1+f'(a)(x-a)+(f''(a))/(2) (x-a)^2+(f^((3))(a))/(3!) (x-a)^3+dots quad (abs(x-a) < r)
$ <e_taylor_exp>
が成り立つ。
]

このときの@e_taylor_exp のことを関数$f(x)$の点$x = a$での_テーラー展開_という。
また、$a = 0$のときのテーラー展開のことを_マクローリン展開_という。

次の一覧は各種関数のテーラー展開（マクローリン展開）をまとめたものである。

#proposition([種々の関数のテーラー展開])[
$x$を実数として以下が成立する。
$
1/(1-x) = sum_(n = 0)^oo x^n = 1+x+x^2+x^3+dots quad (abs(x) < 1).
$ <e_geom_power>
$
exp(x) = e^x = sum_(n = 0)^oo 1/(n!) x^n = 1+x+1/2 x^2+1/6 x^3+dots.
$ <e_exp_power>
$
log(1+x) = sum_(n = 1)^oo (-1)^(n-1)/n x^n = x-1/2 x^2+1/3 x^3-dots quad (abs(x) < 1).
$ <e_log_power>
$
sin x = sum_(k = 0)^oo ((-1)^k)/((2 k+1)!) x^(2 k+1) = x-1/6 x^3+1/120 x^5-dots,
$
$
cos x = sum_(k = 0)^oo ((-1)^k)/((2 k)!) x^(2 k) = 1-1/2 x^2+1/24 x^4-dots.
$
$
sinh x = sum_(k = 0)^oo 1/((2 k+1)!) x^(2 k+1) = x+1/6 x^3+1/120 x^5+dots,
$
$
cosh x = sum_(k = 0)^oo 1/((2 k)!) x^(2 k) = 1+1/2 x^2+1/24 x^4+dots.
$
]

一般にテーラーの定理の剰余項が$0$に収束することを示すのは大変なので、既知のべき級数の項別微分、項別積分を利用して様々なテーラー展開を求めるとよい。

#remark[
@e_geom_power は等比級数からも導出することができる。
さらにそれを項別積分すると、
$
integral_0^x 1/(1-x) dd(x)
= -log(1-x)
= sum_(n = 1)^oo 1/n x^n = x+1/2 x^2+1/3 x^3+dots quad (abs(x) < 1).
$
よって、$log(1+x)$の式@e_log_power を得ることができる。
]

#example[
関数$e^(x^2)$のテーラー展開は@e_exp_power の$x$に$x^2$を代入することで
$
e^(x^2) = sum_(n = 0)^oo 1/(n!) x^(2 n) = 1+x^2+1/2 x^4+1/6 x^6+dots
$
と求めることができる。
なお、このべき級数の収束半径は$oo$である。
]
