
= 種々の関数１

#import "deps/theorem.typ": thmrules, theorem, lemma, proposition, corollary, definition, example, remark, proof
#show: thmrules.with()

#let arsinh = $op("arsinh")$
#let arcosh = $op("arcosh")$
#let artanh = $op("artanh")$
#let opabs = $op("abs")$
#let sgn = $op("sgn")$
#let opsgn = $op("sgn")$
#let opfloor = $op("floor")$
#let opceil = $op("ceil")$

== べき関数

実数$x$と自然数$n = 0, 1, 2, 3, dots$に累乗$x^n$を対応させる関数を_自然数べき関数_あるいは_べき関数_という。
@t_ex_conti と@t_conti_arith から、べき関数$f(x) = x^n$は$RR$上の連続関数である。

$0$でない実数$x$と$0$でない自然数$n = 1, 2, 3, dots$に対して累乗$x^n$は$0$でないことに注意する。
そこで、関数
$
x^(-n) = (x^n)^(-1)
$
を定義し、_負の整数べき関数_あるいは_負べき関数_という。
また、これにより整数$n$に対して_整数べき関数_$x^n$を定義する。
$
x^(-0) = x^0 = 1
$
に注意する。
整数べき関数$f(x) = x^n$は常に$RR\\{0}$上の連続関数である。
もちろん$n$が自然数の時は自然数べき関数なので$RR$上の連続関数でもある。

== 多項式関数

$a_0, a_1, a_2, a_3, dots, a_n$を$n+1$個の実数定数として得られる_多項式関数_
$
f(x) = a_0+a_1 x+a_2 x^2+a_3 x^3+dots+a_n x^n
$
は$RR$上の連続関数である。
もし$a_n eq.not 0$ならば上の多項式関数$f$の_次数_は$n$とし、$f(x) = 0$は特別に次数は$-oo$とする。

多項式関数の$x -> plus.minus oo$での極限では最高次の項$a_n x^n$が支配的になる。

#proposition([多項式関数の無限大での極限])[
$f$を$n$次の多項式関数$f(x) = a_0+a_1 x+a_2 x^2+a_3 x^3+dots+a_n x^n$で、$n >= 1$とする。

- $a_n > 0$の時、$lim_(x -> +oo) f(x) = +oo$であり、$n$が偶数ならば$lim_(x -> -oo) f(x) = +oo$、$n$が奇数ならば$lim_(x -> -oo) f(x) = -oo$である。
- $a_n < 0$の時、$lim_(x -> +oo) f(x) = -oo$であり、$n$が偶数ならば$lim_(x -> -oo) f(x) = -oo$、$n$が奇数ならば$lim_(x -> -oo) f(x) = +oo$である。
]

#remark[
$n$が奇数の時は$lim_(x -> +oo) f(x)$と$lim_(x -> -oo) f(x)$で符号が異なるので、中間値の定理から$f(x) = 0$の実数解が少なくとも$1$つ存在することがわかる。
$n$が偶数の時は実数解が存在しない場合がある。
]

== 累乗根関数

非負の実数$x$と$n = 1, 2, 3, dots$に対して累乗根$root(n, x)$を累乗関数$g(y) = y^n$の逆関数から定義したい。
$0 <= a < b$に対して$a^n < b^n$より関数$g$は狭義単調増加な連続関数で$g(0) = 0$, $lim_(x -> +oo) g(x) = +oo$より、
逆関数の定理から非負の実数$x$に対して定義された$g$の逆関数$f(x)$が存在し、$f$も狭義単調増加な連続関数で$f(0) = 0$, $lim_(y -> +oo) f(y) = +oo$が成り立つ。
この逆関数を_累乗根関数_といい$f(x) = root(n, x)$と表す。
また、その値$root(n, a)$を非負の実数$a$の_$n$乗根_という。
$n$乗根$b = root(n, a)$は$y$についての方程式$y^n = a$の一意な非負実数解である。

$n = 1$の時は$root(n, a) = a$に他ならない
$n = 2$の時を特別に_平方根_、_平方根関数_といい、$sqrt(a) = root(2, a)$, $sqrt(x) = root(2, x)$と書く。

== 指数関数

$a$を正の実数とする。 ここでは実数$x$に対して指数関数$a^x$を定義する。

まず、$x$が整数$n$の時は整数べき関数の値$a^n$として定義される。
有理数$x = m/n$に対しては累乗根
$
a^x = root(n, a^m)
$
とすればよい。
この値は有理数$x$の表現によらないことに注意する。

実数$x$を考えるにあたって、有理数$x$に対して定義された関数$f(x) = a^x$は$a >= 1$のとき単調増加で$a <= 1$のとき単調減少であることに注意する。
実数$x$に対して、
$
a^x = cases(
  sup { a^y mid(|) y in QQ, y <= x } & (a >= 1),,
  inf { a^y mid(|) y in QQ, y <= x } & (a <= 1),
)
$
と定義する。
$a = 1$の時は$a^x = 1$であることに注意する。

以上によって定義された実数$x$に対する関数$exp_a (x) = a^x$を$a$を底とする_指数関数_という。
指数関数には以下の性質が成り立つ。

- $exp_a$は$RR$上の連続関数である。
- 常に$a^x > 0$が満たされる。
- $a > 1$のとき$exp_a$は狭義単調増加で$lim_(x -> -oo) a^x = 0$, $lim_(x -> +oo) a^x = +oo$を満たし、
  $0 < a < 1$のとき$exp_a$は狭義単調減少で$lim_(x -> -oo) a^x = +oo$, $lim_(x -> +oo) a^x = 0$を満たす。
- 任意の実数$x$, $y$に対して、_指数法則_
  $
  a^(x+y) = a^x a^y, quad a^0 = 1
  $
  と
  $
  a^(x y) = (a^x)^y
  $
  が成り立つ。

指数法則は和の指数関数は指数関数を取ったものに積を取るものになることを言っている。

今後の理論の展開において重要な極限として次がある。

#theorem[
実数列$((1+1/n)^n)_(n = 1)^oo$は収束する。
]

この時の極限を$e$とおき_ネイピア数_という。
$
e = lim_(n -> +oo) (1+1/n)^n = 2.7182818284 dots
$
である。
ネイピア数は指数関数・対数関数の微分積分において重要な役割を果たす定数である。

#proof[
二項定理より
$
(1+1/n)^n
= sum_(k = 0)^n binom(n, k) 1/n^k
= sum_(k = 0)^n 1/k! (n(n-1) dots (n-k+1))/n^k
= sum_(k = 0)^n 1/k! (1-1/n) dots (1-(k-1)/n)
$
である。
ここで$i = 1, dots, k -1$に対して$(1-i/n) < (1-i/(n+1))$より、
$
(1+1/n)^n
< sum_(k = 0)^n 1/k! (1-1/(n+1)) dots (1-(k-1)/(n+1))
< sum_(k = 0)^(n+1) 1/k! (1-1/(n+1)) dots (1-(k-1)/(n+1))
= (1+1/(n+1))^(n+1)
$
つまり実数列$((1+1/n)^n)_(n = 1)^oo$は単調増加である。
また、
$
(1+1/n)^n
< sum_(k = 0)^n 1/k!
< 1+sum_(k = 1)^n 1/2^(k-1)
= 1+(1-(1/2)^n)/(1-1/2)
< 3.
$
つまり上に有界も示された。
よって、単調収束定理（@t_mono_conv）より数列$((1+1/n)^n)_(n = 1)^oo$は収束する。
]

#remark[
この証明と$n = 1$のときを考えると、$2 < e <= 3$がわかり、だいたいの値として覚えるとよい。
また、$e <= sum_(k = 0)^oo frac(1, k!)$もわかるが、実は等号が成り立つ。
このことについては微分の章のテイラーの定理や級数の章のべき級数を参照すること。
]

ネイピア数$e$を底とする指数関数$exp_e x = e^x$を単に$exp$で表す。

#proposition[
$
lim_(x -> +oo) (1+1/x)^x
= lim_(x -> -oo) (1+1/x)^x
= lim_(x -> 0) (1+x)^(1/x)
= e.
$
] <t_limit_napier>

#proof[
まず実数$x$に対して$n = floor(x)$とおくことで$n <= x < n+1$なので、
$
(1+1/n)^n <= (1+1/x)^x <= (1+1/(n+1))^(n+1)
$
よって、$x -> +oo$で$n -> oo$となり、ネイピア数の定義より最左辺と最右辺がともに$e$に収束することから$lim_(x -> +oo) (1+1/x)^x = e$である。
次に
$
(1-1/x)^(-x)
= (x/(x-1))^x
= (1+1/(x-1))^x
= (1+1/(x-1))^(x-1) (1+1/(x-1))
$
なので、やはり$lim_(x -> +oo) (1-1/x)^(-x) = e$であり、
$x$を$-x$に置き換えることで、$lim_(x -> -oo) (1+1/x)^x = e$が得られる。
さらに$x$を$1/x$で置き換えることで、
$
lim_(x -> 0+) (1+x)^(1/x) = lim_(x -> 0-) (1+x)^(1/x) = e
$
がわかり、右極限と左極限が一致しているので$lim_(x -> 0) (1+x)^(1/x) = e$である。
]

== 対数関数

$a$を$a > 0$, $a eq.not 1$を満たす実数とする。
この時、前節の内容から指数関数$exp_a$に逆関数が存在し$a$を底とする_対数関数_といい$log_a$で表す。
正の実数$x$に対して対数関数の値$log_a x$を$a$を底とする真数$x$の_対数_という。

- $log_a$は$(0, +oo)$上の連続関数である。
- 任意の正の実数$x$に対して$exp_a (log_a x) = x$で、
  任意の実数$y$に対して$log_a (exp_a y) = y$が成り立つ。
- $a > 1$のとき$log_a$は狭義単調増加で$lim_(x -> 0) log_a x = -oo$, $lim_(x -> +oo) log_a x = +oo$を満たし、
  $0 < a < 1$のとき$log_a$は狭義単調減少で$lim_(x -> 0) log_a x = +oo$, $lim_(x -> +oo) log_a x = -oo$を満たす。
- 任意の正の実数$x$, $y$に対して、
  $
  log_a x y = log_a x+log_a y, quad log_a 1 = 0
  $
  が成り立つ。

対数関数の一番最後の性質は積の対数は対数の和になることを言っている。

ネイピア数$e$を底とする対数を_自然対数_といい、関数$log_e$を単に$log$で表す。

#proposition[
$
lim_(x -> 0) (log(1+x))/x = 1,
quad lim_(x -> 0) (e^x-1)/x = 1.
$
]

#proof[
一つ目の式は命題@t_limit_napier の三つ目の極限で自然対数を取れば直ちに得られる。
二つ目の式は$t = e^x-1$と置き換えることで、$x -> 0$で$t -> 0$となることと$x = log(1+t)$より、
$
lim_(x -> 0) (e^x-1)/x
= lim_(t -> 0) t/(log(1+t))
= 1
$
である。
ここですでに得られた一つ目の式を使った。
]

== 三角関数
直角三角形の辺の長さの比から定まる三角比をもとにした_正弦関数_$sin x$、_余弦関数_$cos x$、_正接関数_$tan x$は次を満たす関数であり、まとめて_三角関数_という。

- $sin x$, $cos x$はともに$RR$上の実数値連続関数であり、任意の実数$x$に対して
  $
  cos^2 x+sin^2 x = 1
  $
  が成り立つ。
- $sin x$, $cos x$はともに周期$2 pi$, $pi = 3.1415926535 dots$を持つ
  つまり任意の実数$x$に対して
  $
  sin (x+2 pi) = sin x,
  quad cos (x+2 pi) = cos x
  $
  が成り立つ。
- $sin 0 = 0$, $sin pi/6 = 1/2$, $sin pi/4 = 1/sqrt(2)$, $sin pi/3 = sqrt(3)/2$, $sin pi/2 = 1$で、
  実数$x$に対して
  $
  sin (pi/2-x) = cos x,
  quad sin (pi-x) = sin x,
  quad sin (-x) = -sin x
  $
  が成り立つ。
- $sin x$は$[-pi/2, +pi/2]$で狭義単調増加で、$cos x$は$[0, pi]$で狭義単調減少である。
- 加法定理、つまり任意の実数$x$, $y$に対して、
  $
  sin (x+y) = sin x cos y+cos x sin y,
  quad cos (x+y) = cos x cos y-sin x sin y
  $
  が成り立つ。
- 極限の式
  $
  lim_(x -> 0) (sin x)/x = 1
  $
  が成り立つ。
- $tan x = (sin x)/(cos x)$であり、$x in RR \\ { pi/2+n pi mid(|) n in ZZ }$に対して定義される。

ただし、途中に出てくる定数$pi$を_円周率_という。
$(sin x)^n$などはしばしば$sin^n x$と記述される。

このテキストではこれらの三角関数は存在するものとして話を進める。
三角関数の定義つまりこれらの性質を満たす関数の構成は、指数関数の複素数への拡張による方法やべき級数による方法、微分方程式の解として特徴づける方法などがあるが、現段階の知識ではうまく定義できない。
ただし最初の方法についてあらましを述べると、指数関数を複素数$z$に拡張して$exp z = e^z$を構成すると_オイラーの関係式_$e^(i x) = cos x+i sin x$によって三角関数$cos x$と$sin x$を得る。
複素数に拡張しても複素数$z$, $w$に対して指数法則$e^(z+w) = e^z e^w$と極限$(e^z-1)/z = 1$
($z -> 0$)が成り立つので、三角関数の加法定理と極限の式が導かれる。
加法定理より指数法則の方が単純で覚えやすいので、加法定理を忘れたとしても指数法則とオイラーの関係式から導くことができる。

== 逆三角関数

正弦関数$sin y$は$[-pi/2, +pi/2]$上で狭義単調増加な連続関数で$sin (-pi/2) = -1$,
$sin (+pi/2) = +1$より、$sin y$の逆関数として_逆正弦関数_$arcsin x$が$[-1, +1]$上の$[- pi/2, +pi/2]$値の狭義単調増加な連続関数として得られる。
余弦関数$cos y$は$[0, pi]$上で狭義単調減少な連続関数で$cos 0 = +1$, $cos pi = -1$より、$cos y$の逆関数として_逆余弦関数_$arccos x$が$[-1, +1]$上の$[0, pi]$値の狭義単調減少な連続関数として得られる。
正接関数$tan y$は$(-pi/2, +pi/2)$上で狭義単調増加な連続関数で$lim_(y -> -pi/2) tan y = -oo$, $lim_(y -> +pi/2) tan y = +oo$より、$tan y$の逆関数として_逆正接関数_$arctan x$が$RR$上の$(-pi/2, +pi/2)$値の狭義単調増加な連続関数として得られる。
これらの関数をまとめて_逆三角関数_という。

#example[
逆三角関数は三角比を角度に変換し、三角関数と合成させることで三角比や角度を別の三角比や角度に変換できる。
例えば、$x in [-1, +1]$に対して、$arcsin x in [-pi/2, +pi/2]$より、
$
cos (arcsin x)
= sqrt(1-sin^2 (arcsin x))
= sqrt(1-x^2)
$
である。
]

== 双曲線関数

実数$x$に対して次で定まる$RR$上の関数として_双曲線正弦関数_$sinh x$、_双曲線余弦関数_$cosh x$、_双曲線正接関数_$tanh x$を導入する。
$
sinh x = (e^x-e^(-x))/2,
quad cosh x = (e^x+e^(-x))/2,
quad tanh x = (sinh x)/(cosh x).
$
これらの関数をまとめて_双曲線関数_という。

この定義からすぐに以下の性質がわかる。

- $sinh x$, $cosh x$はともに$RR$上の実数値連続関数であり、任意の実数$x$に対して
  $
  cosh^2 x-sinh^2 x = 1
  $
  が成り立つ。
- $sinh x$は$RR$で狭義単調増加で、$cosh x$は$\(-oo, -0\]$で狭義単調減少、$\[+0, +oo\)$で狭義単調増加である。
- $sinh 0 = 0$, $lim_(x -> +oo) sinh x = +oo$, $cosh 0 = 1$, $lim_(x -> +oo) cosh x = +oo$で、
  実数$x$に対して
  $
  sinh (-x) = -sinh x,
  quad cosh (-x) = cosh x
  $
  が成り立つ。
- 加法定理、つまり任意の実数$x$, $y$に対して、
  $
  sinh (x+y) = sinh x cosh y+cosh x sinh y,
  quad cosh (x+y) = cosh x cosh y+sinh x sinh y
  $
  が成り立つ。
- 極限の式
  $
  lim_(x -> 0) (sinh x)/x = 1
  $
  が成り立つ。
- $tanh x$は$RR$上の連続関数である。

最初の等式は平面上の点$(cosh x, sinh x)$が双曲線$x^2-y^2 = 1$上の点であることを表しそこから双曲線関数と呼ばれる。
$(sinh x)^n$などはしばしば$sinh^n x$と記述される。

== 逆双曲線関数

双曲線正弦関数$sinh y$は$RR$上で狭義単調増加な連続関数で$lim_(y -> -oo) sinh y = -oo$,
$lim_(y -> +oo) sinh y = +oo$より、$sinh y$の逆関数として_逆双曲線正弦関数_$arsinh x$が$RR$上の$RR$値の狭義単調増加な連続関数として得られる。
双曲線余弦関数$cosh y$は$\[0, +oo\)$上で狭義単調増加な連続関数で$cosh 0 = 1$, $lim_(y -> +oo) cosh y = +oo$より、$cosh y$の逆関数として_逆双曲線余弦関数_$arcosh x$が$\[1, +oo\)$上の$\[0, +oo\)$値の狭義単調増加な連続関数として得られる。
双曲線正接関数$tanh y$は$RR$上で狭義単調増加な連続関数で$lim_(y -> -oo) tan y = -1$, $lim_(y -> +oo) tanh y = +1$より、$tanh y$の逆関数として_逆双曲線正接関数_$artanh x$が$(-1, +1)$上の$RR$値の狭義単調増加な連続関数として得られる。
これらの関数をまとめて_逆双曲線関数_という。

上では逆双曲線関数を抽象的に定義したが、双曲線関数の表示にもとづいて$sinh y = (e^y-e^(-y))/2 = x$を$x$について解くことで、次の表示を得られる。
$
arsinh x = log(x+sqrt(x^2+1)),
quad arcosh x = log(x+sqrt(x^2-1)) (x >= 1),
quad artanh x = (1/2)log (1+x)/(1-x) (-1 < x < +1).
$

== その他の関数

実数$x$に対して絶対値$abs(x)$を対応させる関数を_絶対値関数_といい$opabs$や$abs(x)$と表す。
絶対値関数は$RR$上の連続関数である。

実数$x$に対して次の符号$sgn(x)$を対応させる関数を_符号関数_といい$opsgn$と表す。
$
sgn(x) =
cases(
  +1 & (x > 0)",",
  0 & (x = 0)",",
  -1 & (x < 0)"."
)
$
符号関数は$RR\\{0}$で連続関数であるが$0$で連続でない。

実数$x$に対して床$floor(x)$を対応させる関数を_床関数_といい$opfloor$や$floor(x)$と表す。
実数$x$に対して天井$ceil(x)$を対応させる関数を_天井関数_といい$opceil$や$ceil(x)$と表す。
床関数と天井関数は$RR\\ZZ$で連続関数であるが整数の点で連続でない。
しかしながら、右連続・左連続を考えると、床関数は整数の点でも右連続で、天井関数は整数の点でも左連続である。
