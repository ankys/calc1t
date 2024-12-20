
= 微分

#import "deps/theorem.typ": thmrules, theorem, lemma, proposition, corollary, definition, example, remark, proof
#show: thmrules.with()

#import "@preview/physica:0.9.3": dv, eval
#let arsinh = $op("arsinh")$
#let arcosh = $op("arcosh")$
#let artanh = $op("artanh")$
#let opabs = $op("abs")$
#let sgn = $op("sgn")$
#let opsgn = $op("sgn")$
#let opfloor = $op("floor")$
#let opceil = $op("ceil")$

== 微分係数と微分導関数

この節では実数の集合$X$上で定義された実数値関数$f: X -> RR$と$X$の点$a$を考える。
特に$a$に対して正の数$delta > 0$が存在して$B_delta (a) = { x in RR mid(|) abs(x-a) < delta }$は$X$の部分集合になっている状態を考え、このような点$a$を$X$の_内点_という。

#definition([微分係数])[
$f$を実数の集合$X$上で定義された実数値関数として、$a$を$X$の内点とする。
ここで、$x in X\\{a}$で定義された関数$(f(x)-f(a))/(x-a)$が$x -> a$で収束する時、
関数$f(x)$は点$x = a$で_微分可能_であるといい極限を_微分係数_という。
$y = f(x)$の点$x = a$での微分係数を
$
f'(a),
quad dv(f, x)(a),
quad eval(dv(f, x))_(x = a),
quad eval(dv(,x)(f(x)))_(x = a),
quad eval(y')_a,
quad eval(dv(y, x))_(x = a)
$
などで表す。 つまり、
$
f'(a)
= lim_(x -> a) (f(x)-f(a))/(x-a)
= lim_(h -> 0) (f(a+h)-f(a))/h
$
である。
]

#remark[
微分可能であるためには連続である必要がある。
]

微分を考える動機として接線の計算が挙げられる。
つまり、関数$y = f(x)$のグラフに対して点$(x, y) = (a, f(a))$と点$(x, y) = (a+h, f(a+h))$ ($h eq.not 0$)を通る直線は
$
y = (f(a+h)-f(a))/h (x-a)+f(a) $
となるが、$f$が$a$で微分可能とすると$h$を$0$に近づけることで直線の方程式
$
y = f'(a)(x-a)+f(a)
$ <e_tangent>
を得る。
関数$y = f(x)$のグラフとこの直線は視覚的には接しているように見えることが多く、
実際図形的に定義される円（の一部）の接線と上記の直線は一致する。
そこで関数$y = f(x)$と点$x = a$に対して上記の方程式@e_tangent で定まる直線を$y = f(x)$の$x = a$での_接線_という。

それはさておき、以下のことは複雑な形の関数の微分を計算する際に基礎的である。

#proposition([和と定数倍の微分])[
関数$f(x)$, $g(x)$が点$x = a$で微分可能として、$c$を実数の定数とする。
この時、和$f(x)+g(x)$と定数倍$c f(x)$も$x = a$で微分可能で、
$
eval(dv(, x)(f(x)+g(x)))_(x = a) = f'(a)+g'(a),
quad eval(dv(, x)(c f(x)))_(x = a) = c f'(a)
$
が成立する。
]

このことを微分の線形性という。

#proof[
$x -> a$で
$
((f(x)+g(x))-(f(a)+g(a)))/(x-a)
= (f(x)-f(a))/(x-a)+(g(x)-g(a))/(x-a)
-> f'(a)+g'(a),
$
$
(c f(x)-c f(a))/(x-a) = c(f(x)-f(a))/(x-a)
-> c f'(a)
$
より示される。
]

#proposition([積の微分])[
関数$f(x)$, $g(x)$が点$x = a$で微分可能とする。
この時、積$f(x)g(x)$も$x = a$で微分可能で、
$
eval(dv(, x)(f(x)g(x)))_(x = a) = f'(a)g(a)+f(a)g'(a)
$
が成立する。
]

#proof[
$x -> a$で
$
(f(x) g(x)-f(a) g(a))/(x-a)
= (f(x)-f(a))/(x-a) g(x)+f(a) (g(x)-g(a))/(x-a)
-> f'(a)g(a)+f(a)g'(a)
$
より示される。
]

#proposition([商の微分])[
関数$f(x)$, $g(x)$が点$x = a$で微分可能で$g(a) eq.not 0$とする。
この時、商$(f(x))/(g(x))$も$x = a$で微分可能で、
$
eval(dv(, x)((f(x))/(g(x))))_(x = a) = (f'(a)g(a)-f(a)g'(a))/(g(a))^2
$
が成立する。
]

#proof[
$x -> a$で
$
((f(x))(g(x))-(f(a))/(g(a)))/(x-a)
= (f(x) g(a)-f(a) g(x))/(g(x)g(a)(x-a))
= ((f(x)-f(a))g(a)-f(a)(g(x)-g(a))/(g(x)g(a)(x-a))
-> (f'(a)g(a)-f(a)g'(a))/(g(a)^2)
$
より示される。
]

#proposition([合成関数の微分])[
関数$f(x)$が点$x = a$で微分可能で$g(y)$が点$y = f(x)$で微分可能とする。
この時、合成関数$f(g(x))$も$x = a$で微分可能で、
$
eval(dv(, x)(f(g(x))))_(x = a) = g'(f(a))f'(a)
$
が成立する。
]

#proof[
$x -> a$で$f(x) -> f(a)$に注意して、
$
(g(f(x))-g(f(a)))/(x-a)
= (g(f(x))-g(f(a)))/(f(x)-f(a)) (f(x)-f(a))/(x-a)
-> g'(f(a))f'(a)
$
より示される。
]
この公式は$y = f(x)$, $z = g(y)$として
$
dv(z, x) = dv(z, y)dv(y, x)
$
と考えると覚えやすい。

関数の極限に右極限・左極限あったように微分にも右微分と左微分が定義できる。

#definition([片側微分])[
$f$を実数の集合$X$上で定義された実数値関数として、$a$を$X$の内点とする。

- $x in X\\{a}$で定義された関数$(f(x)-f(a))/(x-a)$が右からの極限$x -> a+$で収束する時、
  関数$f(x)$は点$x = a$で_右微分可能_であるといい極限を_右微分係数_という。
  $y = f(x)$の点$x = a$での右微分係数を
  $
  f'_(+) (a),
  quad dv(f, x^+)(a)
  quad eval(dv(f, x^+))_(x = a),
  quad eval(dv(, x^+)(f(x)))_(x = a),
  quad eval(dv(y, x^+))_(x = a)
  $
  などで表す。
  つまり、
  $
  f'_(+) (a)
  = lim_(x -> a+) (f(x)-f(a))/(x-a)
  = lim_(h -> 0+) (f(a+h)-f(a))/h
  $
  である。
- $x in X\\{a}$で定義された関数$(f(x)-f(a))/(x-a)$が左からの極限$x -> a-$で収束する時、
  関数$f(x)$は点$x = a$で_左微分可能_であるといい極限を_左微分係数_という。
  $y = f(x)$の点$x = a$での左微分係数を
  $
  f'_(+^-) (a),
  quad dv(f, x^-)(a)
  quad eval(dv(f, x^-))_(x = a),
  quad eval(dv(, x^-)(f(x)))_(x = a),
  quad eval(dv(y, x^-))_(x = a)
  $
  などで表す。
  つまり、
  $
  f'_(-) (a)
  = lim_(x -> a-) (f(x)-f(a))/(x-a)
  = lim_(h -> 0-) (f(a+h)-f(a))/h
  $
  である。
]

右微分・左微分の記号は$x$の肩でなく上の$dif$の肩に符号を書くことが多いが、本テキストでは様々な事情によりこの記法を採用する。

微分可能であることの必要十分条件は右微分係数と左微分係数が一致することである。

#proposition[
関数$f = f(x)$が点$x = a$で微分可能であることの必要十分条件は、
関数$f = f(x)$が点$x = a$で右微分可能かつ左微分可能で
$
f'_(+) (a) = f'_(-) (a)
$
が成り立つことである。
] <t_semidiff>

#proof[
右極限、左極限が一致しているので@t_lim_oslim から従う。
]

実数の集合$X$であって$X$のすべての点が$X$の内点になっているものを_開集合_という。
開区間は開集合である。

#definition([微分導関数])[
$f$を開集合$X$上で定義された実数値関数とする。
ここで、$X$のすべての点で関数$f$が微分可能であるとき$f$は$X$上微分可能であるという。
この時、$x in X$に対して微分係数$f'(x)$を対応させる集合$X$上の実数値関数を$f$の_微分導関数_という。
$y = f(x)$の微分導関数を
$
f',
quad dv(f, x),
quad dv(, x)(f(x)),
quad y',
quad dv(y, x)
$
などで表す。
]

微分導関数はしばしば_導関数_と略される。

これまでの内容から以下がわかる。

#proposition([四則演算の導関数])[
関数$f$, $g$が開集合$X$で微分可能とする。
この時、和$f(x)+g(x)$、差$f(x)-g(x)$、積$f(x)g(x)$、各$x in X$で$g(x) eq.not 0$のとき商$(f(x))/(g(x))$も$X$で微分可能で、
$
dv(, x)(f(x)+g(x)) = f'(x)+g'(x),
quad dv(, x)(f(x)-g(x)) = f'(x)-g'(x),
$
$
dv(, x)(f(x)g(x)) = f'(x)g(x)+f(x)g'(x),
quad dv(, x)((f(x))/(g(x))) = (f'(x)g(x)-f(x)g'(x))/(g(x))^2
$
が成立する。
]

#proposition([合成関数の導関数])[
関数$f$が開集合$X$で微分可能で、関数$g$が開集合$Y$で微分可能とする。
$f(X) subset Y$のとき、合成関数$g(f(x))$は$X$で微分可能で、
$
dv(, x)(g(f(x))) = g'(f(x))f'(x)
$
が成立する。
]

#proposition([逆関数の導関数])[
関数$f$が開区間$X$で微分可能で狭義単調増加で逆関数を$f^(-1)$とする。
この時、各$x in X$に対して$f'(x) eq.not 0$であり、$f^(-1) (y)$は開区間$Y = f(X)$で微分可能で、
$
dv(, x)(f^(-1)(y)) = (f'(f^(-1)(y))^(-1) = 1/f'(f^(-1)(y))
$
が成立する。
]

== 種々の関数の微分

$c$を実数として定数関数$c$は$RR$で微分可能で、
$
dv(, x)(c)
= lim_(h -> 0) (c-c)/h
= 0
$
である。

実数$x$と$n = 1, 2, 3, dots$に対してべき関数$x^n$は$RR$で微分可能で、
$
dv(, x)(x^n)
= lim_(h -> 0) ((x+h)^n-x^n)/h
= lim_(h -> 0) (binom(n, 0)x^n+binom(n, 1)h x^(n-1)+binom(n, 2)h^2 x^(n-2)+dots+binom(n, n)h^n-x^n)/h
= lim_(h -> 0) (n x^(n-1)+binom(n, 2)h x^(n-2)+dots+binom(n, n)h^(n-1))
= n x^(n-1)
$
である。

$0$でない実数$x$と$n = 1, 2, 3, dots$に対して負べき関数$x^(- n)$は$RR\\{0}$で微分可能で、
$
dv(, x)(x^(- n))
&= lim_(h -> 0) ((x+h)^(-n)-x^(-n))/h
= lim_(h -> 0) (x^n-(x+h)^n)/((x+h)^n x^n h)
= lim_(h -> 0) (-n x^(n-1)-binom(n, 2)h x^(n-2)+dots+binom(n, n)h^(n-1))/((x+h)^n x^n) \
&= (-n x^(n-1))/(x^(2 n))
= -n x^(-n-1)
$
である。

定数関数とべき関数と負べき関数の結果を合わせて整数$n$に対して、
$
dv(, x)(x^n) = n x^(n-1)
$
とまとめて書けるが、$x$の範囲が異なることに注意する。

多項式関数は$RR$で微分可能で、$a_0, a_1, a_2, a_3, dots, a_n$を$n+1$個の実数定数として
$
dv(, x)(a_0+a_1 x+a_2 x^2+a_3 x^3+dots+a_n x^n)
= a_1+2 a_2 x+3 a_3 x^2+dots+n a_n x^(n-1)
$
である。

指数関数の微分を考える際にはまずネイピア数$e$を底とする指数関数$exp x = e^x$を考える。
指数関数$exp$は$RR$で微分可能で、命題より
$
dv(, x)(exp x) = dv(, x)(e^x)
= lim_(h -> 0) (e^(x+h)-e^x)/h
= lim_(h -> 0) (e^h-1)/h e^x
= e^x
$
である。
一般の底$a > 0$に対しては$a = e^(log a)$に注意して合成関数の微分より
$
dv(, x)(exp_a x) = dv(, x)(a^x)
= dv(, x)(e^(x log a))
= e^(x log a) log a
= a^x log a
$
である。

対数関数$log_a$は指数関数の逆関数であることから$(0, +oo)$で微分可能で、
$
dv(, x)(log x)
= (eval(dv(, y)(e^x))_(y = log x))^(-1)
= x^(-1)
= 1/x,
$
$
dv(, x)(log_a x)
= (eval(dv(, y)(a^y))_(y = log_a x))^(-1)
= (x log a)^(-1)
= 1/(x log a)
$
である。

正の数$x$と実数$a$に対して関数$x^a$は$(0, +oo)$で微分可能で、$x = e^(log x)$に注意して、
$
dv(, x)(x^a)
= dv(, x)(e^(a log x))
= e^(a log x) a/x
= a x^(a-1)
$
である。
このような方法は関数$f(x)$の微分を計算するときに対数を取った関数$log f(x)$の微分を考えているので、対数微分法と呼ばれる。

#example[
$f(x) = x^x$ ($x > 0$)とおくと、
$
f'(x) = dv(, x)(x^x)
= dv(, x)(e^(x log x))
= e^(x log x) (log x+x/x)
= (1+log x) x^x
$
である。
]

正弦関数$sin$は$RR$で微分可能で、正弦関数の和積公式と極限の公式より
$
dv(, x)(sin x)
= lim_(h -> 0) (sin(x+h)-sin x)/h
= lim_(h -> 0) (2 cos(x+h/2) sin(h/2))/h
= lim_(h -> 0) cos(x+h/2) sin(h/2)/(h/2)
= cos x.
$
余弦関数$cos$も$RR$で微分可能で、
$
dv(, x)(cos x)
= lim_(h -> 0) (cos(x+h)-cos x)/h
= lim_(h -> 0) (-2 sin(x+h/2) sin(h/2))/h
= -lim_(h -> 0) sin(x+h/2) sin(h/2)/(h/2)
= -sin x.
$
正接関数$tan$は$(-pi/2, +pi/2)$で微分可能で、
$
dv(, x)(tan x)
= dv(, x)((sin x)/(cos x))
= (dv(, x)(sin x) cos x-sin x dv(, x)(cos x))/(cos^2 x)
= (cos^2 x+sin^2 x)/(cos^2 x)
= 1/cos^2 x.
$

逆正弦関数$arcsin$は$(-1, +1)$で微分可能で、
$
dv(, x)(arcsin x)
= (eval(dv(, y)(sin y))_(y = arcsin x))^(-1)
= (cos(arcsin x))^(-1)
= 1/sqrt(1-sin^2 (arcsin x))
= 1/sqrt(1-x^2).
$
逆余弦関数$arccos$も$(-1, +1)$で微分可能で、
$
dv(, x)(arccos x)
= (eval(dv(, y)(cos y))_(y = arccos x))^(-1)
= (-sin(arccos x))^(-1)
= -1/sqrt(1-sin^2 (arccos x))
= -1/sqrt(1-x^2).
$
逆正接関数$arctan$は$RR$で微分可能で、
$
dv(, x)(arctan x)
= (eval(dv(, y)(tan y))_(y = arctan x))^(-1)
= (1/cos^2 (arctan x))^(-1)
= 1/(1-tan^2 (arctan x))
= 1/(1+x^2).
$
ここで$cos^2 x+sin^2 x = 1$から従う公式$1+tan^2 x = 1/(cos^2 x)$を用いた。

双曲線正弦関数$sinh x$は$RR$で微分可能で、
$
dv(, x)(sinh x)
= dv(, x)((e^x-e^(-x))/2)
= (e^x+e^(-x))/2
= cosh x.
$
双曲線余弦関数$cosh x$も$RR$で微分可能で、
$
dv(, x)(cosh x)
= dv(, x)((e^x+e^(-x))/2)
= (e^x-e^(-x))/2
= sinh x.
$
双曲線正接関数$tanh x$は$RR$で微分可能で、
$
dv(, x)(tanh x)
= dv(, x)((sinh x)/(cosh x))
= (cosh^2 x-sinh^2 x)/(cosh^2 x)
= 1/cosh^2 x.
$

逆双曲線正弦関数$arsinh x$は$RR$で微分可能で、
$
dv(, x)(arsinh x)
= (eval(dv(, y)(sinh y))_(y = arsinh x))^(-1)
= (cosh(arsinh x))^(-1)
= 1/sqrt(1+sinh^2 (arsinh x))
= 1/sqrt(1+x^2).
$
逆双曲線余弦関数$arcosh x$は$(1, +oo)$で微分可能で、
$
dv(, x)(arcosh x)
= (eval(dv(, y)(cosh y))_(y = arcosh x))^(-1)
= (sinh(arcosh x))^(-1)
= 1/sqrt(cosh^2 (arcosh x)-1)
= 1/sqrt(x^2-1).
$
逆双曲線正接関数$artanh x$は$(-1, +1)$で微分可能で、
$
dv(, x)(artanh x)
= (eval(dv(, y)(tanh y))_(y = artanh x))^(-1)
= (1/cosh^2 (artanh x))^(-1)
= 1/(1-tanh^2 (artanh x))
= 1/(1-x^2).
$
ここで$cosh^2 x-sinh^2 x = 1$から従う公式$1-tanh^2 x = 1/(cosh^2 x)$を用いた。

絶対値関数$opabs$は$RR\\{0}$で微分可能で、
$
dv(, x)(opabs(x))
= dv(, x)(abs(x))
= cases(
  dv(, x)(+x) & (x > 0),
  dv(, x)(-x) & (x < 0)
)
= cases(
  +1 & (x > 0),
  -1 & (x < 0)
)
= sgn(x).
$
である。
ここで$x = 0$では微分可能でないことに注意する。
しかしながら、$opabs$は$x = 0$で右微分可能かつ左微分可能であり、
$
eval(dv(, x^+)(opabs(x)))_(x = 0)
= eval(dv(, x^+)(abs(x)))_(x = 0)
= +1,
$
$
eval(dv(, x^-)(opabs(x)))_(x = 0)
= eval(dv(, x^-)(abs(x)))_(x = 0)
= -1
$
が成り立つ。

符号関数$opsgn$は$RR\\{0}$で微分可能で、
$
dv(, x)(sgn(x))
= cases(
  dv(, x)(+1) & (x > 0),
  dv(, x)(-1) & (x < 0)
)
= 0.
$
ただし、$x = 0$では微分可能でないことに注意する。

床関数$opfloor$と天井関数$opceil$はともに$RR\\ZZ$で微分可能で、
$
dv(, x)(floor(x))
= 0,
quad dv(, x)(ceil(x))
= 0.
$
ただし、$x in ZZ$では微分可能でないことに注意する。
しかしながら、$opfloor$は$x in ZZ$で右微分可能であり、$opceil$は$x in ZZ$で左微分可能である。

ここで、対数関数$log$は$(0, oo)$で微分できるが、導関数$1/x$は$RR\\{0}$で定義されている。
そこで絶対値関数との合成を取ることで関数の定義される集合を拡張するという技法が知られている。
つまり、$0$でない実数$x$に対して
$
dv(, x)(log abs(x))
= cases(
  dv(, x)(log (+x)) & (x > 0),
  dv(, x)(log (-x)) & (x < 0)
)
= cases(
  +1/(+x) & (x > 0),
  -1/(-x) & (x < 0)
)
= 1/x
$
である。
同様のことは逆双曲線正接関数$artanh$についてもいえるが、こちらは
$
artanh x
= 1/2 log (1+x)/(1-x)
$
であることを思い出して以下のようにする。
つまり、$plus.minus 1$でない実数$x$に対して
$
dv(, x)(1/2 log abs((1+x)/(1-x)))
= 1/(1-x^2)
$
となる。

以上をまとめると各種関数の微分は以下のようになる。

#proposition([種々の関数の微分])[
$x$を実数として以下が成立する。
$
dv(, x)(c) = 0 quad (c in RR),
quad dv(, x)(x^n) = n x^(n-1) quad (n = 1, 2, 3, dots),
quad dv(, x)(x^(-n)) = -n x^(-n-1) quad (n = 1, 2, 3, dots, x eq.not 0).
$
$
dv(, x)(a_0+a_1 x+a_2 x^2+a_3 x^3+dots+a_n x^n)
= a_1+2 a_2 x+3 a_3 x^2+dots+n a_n x^(n-1)
quad (n = 0, 1, 2, 3, dots, a_0, dots, a_n in RR).
$
$
dv(, x)(x abs(x)^(a-1)) = a abs(x)^(a-1) quad (a in RR, x eq.not 0).
$
$
dv(, x)(exp x) = dv(, x)(e^x) = e^x,
quad dv(, x)(exp_a x) = dv(, x)(a^x) = (log a)a^x quad (a > 0).
$
$
dv(, x)(log abs(x)) = 1/x quad (x eq.not 0),
quad dv(, x)(log_a abs(x)) = 1/((log a)x) quad (a > 0, a eq.not 1, x eq.not 0).
$
$
dv(, x)(sin x) = cos x,
quad dv(, x)(cos x) = -sin x,
quad dv(, x)(tan x) = 1/cos^2 x quad (x eq.not pi/2+n pi, n in ZZ).
$
$
dv(, x)(arcsin x) = 1/sqrt(1-x^2) quad (-1 < x < +1),
quad dv(, x)(arccos x) = -1/sqrt(1-x^2) quad (-1 < x < +1),
quad dv(, x)(arctan x) = 1/(1+x^2).
$
$
dv(, x)(sinh x) = cosh x,
quad dv(, x)(cosh x) = sinh x,
quad dv(, x)(tanh x) = 1/cosh^2 x.
$
$
dv(, x)(arsinh x) = 1/sqrt(1+x^2),
quad dv(, x)(arcosh x) = 1/sqrt(x^2-1) quad (abs(x) > 1),
quad dv(, x)(artanh x) = 1/(1-x^2) quad (-1 < x < +1).
$
$
dv(, x)(1/2 log abs((1+x)/(1-x))) = 1/(1-x^2) quad (x eq.not plus.minus 1).
$
$
dv(, x)(opabs(x)) = sgn(x) quad (x eq.not 0),
quad dv(, x)(sgn(x)) = 0 quad (x eq.not 0).
$
$
dv(, x)(opfloor(x)) = dv(, x)(opceil(x)) = 0 quad (x in.not ZZ).
$
]

== 微分と増減

#definition([極大・極小])[
$f$を実数の集合$X$上の実数値関数とする。

- $X$の内点$a$であって、ある正の数$delta > 0$が存在して$f(a) = max_(B_delta (a)) f$となる$a in X$のことを$f$の_極大点_といい、$f$は点$a$で_極大_、またこの時の$f(a)$を$f$の_極大値_という。
  つまり、$a$を$f$の極大点とするとある正の数$delta > 0$が存在して任意の$x in B_delta (a)$つまり$abs(x-a) < delta$を満たすすべての点$x in X$に対して$f(x) <= f(a)$が成り立つ。
- $X$の内点$a$であって、ある正の数$delta > 0$が存在して$f(a) = min_(B_delta (a)) f$となる$a in X$のことを$f$の_極小点_といい、$f$は点$a$で_極小_、またこの時の$f(a)$を$f$の_極小値_という。
  つまり、$a$を$f$の極小点とするとある正の数$delta > 0$が存在して任意の$x in B_delta (a)$つまり$abs(x-a) < delta$を満たすすべての点$x in X$に対して$f(x) >= f(a)$が成り立つ。
]

極大・極小は対象となる点の近くに限れば最大・最小となっている状況であり、関数に対して複数あることがある（ないこともある）。
また、最大点・最小点は必ず極大点・極小点である。

#example[
関数$f(x) = 1-1/2 x^2+1/24 x^4$において、$x = 0$は極大点であるが、$lim_(x -> plus.minus oo) f(x) = +oo$なので、最大点ではない。
]

最大・最小・極大・極小と微分を結びつける次の定理は非常に重要である。

#theorem([最大値原理])[
実数の集合$X$上の関数$f$が$X$の内点$a$で最大または極大または最小または極小とする。
ここで、$f$が$a$で微分可能であるとすると、$f'(a) = 0$が成立する。
] <t_maxp>

#proof[
$a$が極大点のときを考える。
つまり、ある$delta > 0$が存在して任意の$x in B_delta (a)$に対して$f(x) <= f(a)$が成り立つとする。
この時
$
(f(x)-f(a))/(x-a) <= 0 quad (a < x < a+delta),
quad (f(x)-f(a))/(x-a) >= 0 quad (a-delta < x < a).
$
したがって、
$
f'_(+) (a) <= 0, quad f'_(-) (a) >= 0
$ <e_maxp_semi>
であり、$a$で微分可能なので@t_semidiff より、
$
f'(a) = f'_(+) (a) = f'_(-) (a) = 0
$
である。
最大点の時は極大点なので同じ証明でよい。
最小点、極小点の時は同様の議論をすることで@e_maxp_semi の代わりに
$
f'_(+) (a) >= 0, quad f'_(-) (a) <= 0
$ <e_minp_semi>
が得られて同じ結論が導かれる。
]

#remark[
証明を見ればわかる通り微分可能でなくとも、関数$f$が極大点$a$で右微分可能ないし左微分可能とすると不等式@e_maxp_semi が成り立ち、関数$f$が極小点$a$で右微分可能ないし左微分可能とすると不等式@e_minp_semi が成り立つ。
]

この定理が重要な理由は関数$f$の最大点・最小点を見つける問題が方程式$f'(x) = 0$を解くことに帰着されることにある。

#example[
$RR$上の連続関数
$
f(x) = x e^(-x)
$
を考える。
この関数は$f(1) = e^(-1) > 0$, $lim_(x -> -oo) f(x) = -oo$, $lim_(x -> +oo) = 0$なので、最大値を持つ。
ここで、微分導関数は
$
f'(x) = (1-x) e^(-x)
$
であり、最大点においてこれが$0$になるが、$x = 1$以外ありえない。
よって$f(x)$は$x = 1$で最大となることが結論付けられる。
] <t_gauss_est>

次の不等式は一般に成り立つ。

#theorem([ヤングの不等式])[
$a$, $b$を非負の実数、$p$, $q$を
$
1/p+1/q = 1, quad p, q > 1
$ <e_holder_conj>
を満たす実数とする。
このとき不等式
$
a b <= a^p/p+b^q/q
$
が成り立つ。
] <t_young_ineq>

#proof[
$x in \[0, oo\)$に対して
$
f(x) = a^p/p+x^q/q-a x
$
とおくと、$x in (0, oo)$に対して
$
f'(x) = x^(q-1)-a.
$
よって$f(x)$は$x = a^(1/(q-1))$で最小となるので、
$
f(b) >= f(a^(1/(q-1)))
= a^p/p+a^(q/(q-1))/q-a^(1+1/(q-1))
= a^p (1/p+1/q-1)
= 0.
$
したがってほしかった不等式が得られた。
]

最大値原理は極大・極小の必要条件を与えるが、次の定理は十分条件の一つを片側微分を使って与える。

#theorem[
$f$を実数の集合$X$上の関数、$a$を$X$の内点とする。

- $f$が$a$で右微分可能かつ左微分可能で
  $
  f'_(+) (a) < 0, quad f'_(-) (a) > 0
  $
  を満たす時、関数$f$は点$a$で極大である。
- $f$が$a$で右微分可能かつ左微分可能で
  $
  f'_(+) (a) > 0, quad f'_(-) (a) < 0
  $
  を満たす時、関数$f$は点$a$で極小である。
]

#proof[
前半の極大であることを示す。 右微分の定義より
$
lim_(x -> a+) (f(x)-f(a))/(x-a) = f'_(+) (a) < 0.
$
よって$delta_(+) > 0$が存在して任意の$a < x < a+delta_(+)$に対して
$
(f(x)-f(a))/(x-a) < 1/2 f'_(+) (a) < 0.
$
つまり$f(x) < f(a)$である。 同様にして、左微分の定義より
$
lim_(x -> a-) (f(x)-f(a))/(x-a) = f'_(-) (a) > 0.
$
よって$delta_(-) > 0$が存在して任意の$a-delta_(-) < x < a$に対して
$
(f(x)-f(a))/(x-a) > 1/2 f'_(-) (a) > 0.
$
つまり$f(x) < f(a)$である。
以上より$f(x)$は$x = a$で極大であることがわかる。

後半の極小を示す方は同様に証明されるので省略する。
]

微分を使って関数の増減などの挙動を調べる際に基礎的になるのが次の平均値の定理である。

#theorem([平均値の定理])[
有界閉区間$[a, b]$上の関数$f$が$[a, b]$上で連続で$(a, b)$上で微分可能とする。
この時、ある$a < c < b$が存在して
$
f'(c) = (f(b)-f(a))/(b-a)
$
が成り立つ。
]

そしてその証明は次の特別な場合に示せばよい。

#theorem([ロルの定理])[
有界閉区間$[a, b]$上の関数$f$が$[a, b]$上で連続で$(a, b)$上で微分可能とする。
ここで$f(a) = f(b)$の時、ある$a < c < b$が存在して$f'(c) = 0$が成り立つ。
]

#proof([ロルの定理の証明])[
$f$は有界閉区間$[a, b]$上の連続関数より中間値の定理から最大点$c_(+)$と最小点$c_(-)$が存在する。
ここで、$f(c_(+)) = f(c_(-))$の時は最大値と最小値が一致するので$f(x)$は定数関数で、各$x in [a, b]$に対して$f(x) = f(a) = f(b)$かつ$x in (a, b)$に対して$f'(x) = 0$である。
よって、この場合は$c = (a+b)/2$とすればよい。
そうでない場合は$c_(+)$か$c_(-)$のうち少なくとも一方$c$が$f(c) eq.not f(a) = f(b)$より、$a < c < b$である。
さらに最大値原理（@t_maxp）より$f'(c) = 0$なので、定理の証明が完成した。
]

#proof([平均値の定理の証明])[
関数$F$を
$
F(x) = f(x)-(f(b)-f(a))/(b-a) (x-a) $
とおくと、$F(a) = F(b) = f(a)$なので、ロルの定理が使えて$F'(c) = 0$となる$a < c < b$が存在する。
したがって、$f'(c) = (f(b)-f(a))/(b-a)$である。
]

定数関数の微分は常に$0$であるが、区間においては逆も成り立つ。
このことを平均値定理の応用として示す。

#theorem[
区間$I$上の連続関数$f$がすべての内点$x$で微分可能で$f'(x) = 0$を満たすならば、$f$は定数関数である。
]

#proof[
$a < b$を満たす$I$の2点$a, b$を取る。
この時、$f$は$[a, b]$上連続で$(a, b)$上微分可能なので、平均値の定理より$f'(c) = (f(b)-f(a))/(b-a)$となる点$c in (a, b)$が存在する。
$c$は$I$の内点なので仮定より$f'(c) = 0$より$f(a) = f(b)$がわかる。
つまり任意の2点での$f$の値が等しいので、$f$は定数関数であることが結論付けられる。
]

さらに詳しく見ると以下が成り立つ。

#theorem[
$f$を区間$I$上の連続関数とする。

- $f$がすべての内点$x$で微分可能で$f'(x) > 0$を満たすならば、$f$は狭義単調増加である。
- $f$がすべての内点$x$で微分可能で$f'(x) >= 0$を満たすならば、$f$は広義単調増加である。
- $f$がすべての内点$x$で微分可能で$f'(x) < 0$を満たすならば、$f$は狭義単調減少である。
- $f$がすべての内点$x$で微分可能で$f'(x) <= 0$を満たすならば、$f$は広義単調減少である。
] <t_diff_monotone>

#proof[
定数関数の定理の証明と同様にすれば示されるので、詳細は省略する。
]

この定理を用いると、微分が$0$となる点で区間を分割することで関数の増減を知ることができる。

#example[
関数の例$f(x) = 1-1/2 x^2+1/24 x^4$を考えると$f'(x) =-x+1/6 x^3$で$f'(x) = 0$を解くと$x = 0, plus.minus sqrt(6)$である。
したがってこの関数は$\(-oo ,-sqrt(6)\]$で狭義単調減少し$-sqrt(6)$で極小となり$[-sqrt(6), 0]$で狭義単調増加し$0$で極大となり$[0, +sqrt(6)]$で狭義単調減少し$+sqrt(6)$で極小となり$\[+sqrt(6), +oo\)$で狭義単調増大する
]

== ロピタルの定理

この節では極限の問題を微分を使って見通しをよくするロピタルの定理を紹介する。
まず、その準備として次のコーシーの平均値の定理を示す。

#theorem([コーシーの平均値の定理])[
$f$, $g$は有界閉区間$[a, b]$上の連続関数で$(a, b)$上で微分可能とする。
ここで$g(a) eq.not g(b)$かつ任意の$a < x < b$に対して$g'(x) eq.not 0$ならば、ある$a < c < b$が存在して
$
(f'(c))/(g'(c)) = (f(b)-f(a))/(g(b)-g(a))
$
が成り立つ。
]

#block[
$g(a) eq.not g(b)$に注意して関数$F$を
$
F(x) = f(x)-(f(b)-f(a))/(g(b)-g(a)) (g(x)-g(a))
$
とおくと、$F(a) = F(b) = f(a)$なので、ロルの定理が使えて$F'(c) = 0$となる$a < c < b$が存在する。
したがって、$f'(c) = (f(b)-f(a))/(g(b)-g(a)) g'(c)$であり、整理してほしかった等式を得る。
]

#theorem([ロピタルの定理１])[
$a$を開区間$I$の内点、$f$, $g$は$I\\{a}$上の連続関数で$I\\{a}$上で微分可能であり各$x in I\\{a}$に対して$g'(x) eq.not 0$とする。
ここで、$x -> a$で$f(x) -> 0$, $g(x) -> 0$であり$(f'(x))/(g'(x))$が収束するならば、$(f(x))/(g(x))$も収束して
$ lim_(x -> a) (f(x))/(g(x)) = lim_(x -> a) (f'(x))/(g'(x)) $
が成り立つ。
]

#proof[
$f(a) = 0$, $g(a) = 0$とおいて$f$, $g$の定義域を$I$に拡張すると$f$, $g$は$I$上の連続関数である。
ここで$[a, x] subset I$を満たす点$x$を考え、$[a, x]$にコーシーの平均値の定理を用いれば、ある$a < c < x$が存在して
$
(f'(c))/(g'(c)) = (f(x)-f(a))/(g(x)-g(a)) = (f(x))/(g(x))
$
である。
このような$x$に対してこのような$c$の中から一つ選んで$c(x)$と定めると$a < c(x) < x$なので、$x -> a+$とすると$c(x) -> a$となることと$lim_(x -> a) (f'(x))/(g'(x))$が存在することから、
$
lim_(x -> a+) (f(x))/(g(x))
= lim_(x -> a+) (f'(c(x)))/(g'(c(x)))
= lim_(x -> a+) (f'(x))/(g'(x)).
$
同様にして$[x, a] subset I$を満たす点$x$を考えることで$x -> a-$に対する式も得られて、この定理の証明が完成する。
]

#remark[
この定理は$a = plus.minus oo$のときでも同様のものが成り立つ。
]

#theorem([ロピタルの定理２])[
$a$を開区間$I$の内点、$f$, $g$は$I\\{a}$上の連続関数で$I\\{a}$上で微分可能であり各$x in I\\{a}$に対して$g'(x) eq.not 0$とする。
ここで、$x -> a$で$f(x) -> +oo$, $g(x) -> +oo$であり、$(f'(x))/(g'(x))$が収束するならば、$(f(x))/(g(x))$も収束して
$
lim_(x -> a) (f(x))/(g(x)) = lim_(x -> a) (f'(x))/(g'(x))
$
が成り立つ。
]

この定理の証明は難しく極限の定義つまり$epsilon$論法までさかのぼる必要がある。

#proof[
// https://mathematics-pdf.com/pdf/lhopital.pdf
$epsilon > 0$を固定すると、$delta > 0$が存在して任意の$a < x <= a+delta$に対して$abs((f'(x))/(g'(x))-l) < epsilon$である。
ここで、$a < x < y < a+delta$なる点$x, y in I$を考え、$[x, y]$にコーシーの平均値を用いれば、ある$x < c < y$が存在して
$
(f'(c))/(g'(c)) = (f(y)-f(x))/(g(y)-g(x)) $
つまり変形して、
$
(f(x))/(g(x)) = (f'(c))/(g'(c)) (1-(g(y))/(g(x)))/(1-(f(y))/(f(x)))
$
が成り立つ。
ここで、先に$x -> a+$とすることを考えると、$f(x) -> +oo$, $g(x) -> +oo$であることから、極限が存在すれば
$
lim_(x -> a) (f(y))/(g(y)) = lim_(x -> a+) (f'(c(x, y)))/(g'(c(x, y))).
$
次いで、$y -> a+$とすれば$c -> a+$より、
$
lim_(x -> a) (f(y))/(g(y)) = lim_(x -> a+) (f'(x))/(g'(x)).
$
左極限についても同様にして、この定理の証明が完成する。
]

#remark[
この定理は$a = plus.minus oo$のときでも同様のものが成り立つ。
]

== リプシッツ連続関数

微分と結びついた連続性の概念としてリプシッツ連続性がある。
その定義は以下のとおりである。

#definition([リプシッツ連続関数])[
$f$を区間$I$上の関数とする。
ここで、$f$に対して次の条件を満たす実数定数$L$が存在するとき、$f$は_リプシッツ連続_あるいは$L$-リプシッツ連続であるという。
#quote(block: true)[
任意の$x, y in I$に対して$abs(f(x)-f(y)) <= L abs(x-y)$が成り立つ。
]
]

#example[
定数関数$f(x) = c$は$0$-リプシッツ連続であり、
一次関数$f(x) = x$は$1$-リプシッツ連続である。
しかしながら二次関数$f(x) = x^2$はリプシッツ連続でない。
これは$abs(f(x)-f(y)) = abs(x+y) abs(x-y)$であり、$L$をいくら大きく設定しても$x, y$が大きいと$abs(x+y)$がそれを超えてしまうためである。
]

#remark[
リプシッツ連続な関数はすべて連続関数である。
]

次に示すようにリプシッツ連続であることの十分条件は微分導関数が有界であることである。

#proposition[
$f$を区間$I$上の連続関数ですべての内点$x$で微分可能とする。
ここで、微分導関数$f'$が有界のとき、$f$はリプシッツ連続である。
より詳しくは実数$L$が存在して全ての内点$x$に対して$abs(f'(x)) <= L$のとき、$f$は$L$-リプシッツ連続である。
]

#proof[
$x, y in I$を取ると、平均値の定理より$abs(f(x)-f(y)) = abs(f'(c)) abs(x-y)$となる$c$が存在するので、$abs(f(x)-f(y)) <= L abs(x-y)$である。
]

#example[
このではこのことをもとに$n = 1, 2, 3, dots$と$x, y in RR$に対して不等式
$
abs(sin^n x-sin^n y) <= abs(x^n-y^n)
$
が成立することを示す。

まず$n = 1$の時は正弦関数$sin$の$1$-リプシッツ連続性に他ならず、
$
abs(dv(, x)(sin x)) = abs(cos x) <= 1
$
より成立する。

一般の$n$に対しては$x$, $y$をそれぞれ$x^(1/n)$,
$y^(1/n)$で置き換えて$f(x) = sin^n x^(1/n)$が$\[0, +oo\)$で$1$-リプシッツ連続であることを示せばよい。
そこで微分導関数を計算すると$x in (0, +oo)$に対して、
$
f'(x)
= n sin^(n-1) x^(1/n) cos x^(1/n) 1/n x^(1/n-1)
= ((sin x^(1/n))/(x^(1/n)))^(n-1) cos x^(1/n)
$
ここですでに示した$n = 1$の場合で$y = 0$とした時の$abs(sin x) <= abs(x)$を用いれば、$abs(f'(x)) <= 1$がわかりほしかった不等式が示された。
]

== 二階微分

微分導関数は関数でありもう一回微分できる可能性がある。
そのようにして微分の微分をすることを二階微分という。

#definition([二階微分])[
$f$を開集合$X$上で定義された実数値関数であり微分導関数$f'$が存在するとする。
ここで、$X$のすべての点で微分導関数$f'$が微分可能であるとき$f$は$X$上_二回微分可能_であるといい、微分導関数$f'$の微分導関数を_二階微分導関数_という。
$y = f(x)$の二階微分導関数を
$
f'',
quad dv(f, x, 2)
quad dv(, x, 2) (f(x))
quad y'',
quad dv(y, x, 2)
$
などで表す。
]

$f''$を二階微分導関数と呼ぶのに対応して、微分導関数$f'$を一階微分導関数と呼ぶことがある。

#example[
$f(x) = x^n$とすると、
$
f'(x) = n x^(n-1),
$
$
f''(x) = n(n-1) x^(n-2)
$
である。
]
#example[
$f(x) = x abs(x)$とすると、
$
f'(x) = 2 abs(x)
$
だが、これは$x = 0$で微分可能でない。
このように一階微分導関数が存在しても二階微分導関数は存在しないことがある。
]

== 凸関数・凹関数

#definition([凸関数・凹関数])[
$f$を区間$I$上で定義された実数値関数とする。

- 任意の$0 <= p <= 1$と$x, y in I$に対して
  $
  f(p x+(1-p) y) <= p f(x)+(1-p) f(y)
  $ <e_convex>
  が成り立つとき、$f$は$I$上の凸関数という。
- 任意の$0 <= p <= 1$と$x, y in I$に対して
  $
  f(p x+(1-p) y) >= p f(x)+(1-p) f(y)
  $
  が成り立つとき、$f$は$I$上の凹関数という。
]

この凸関数の定義の条件はグラフ$y = f(x)$が下に凸であることを表している。
漢字では凸は上に凸であるように見えるが、用語としては逆なので注意する。

凸関数・凹関数は必ず連続関数であることに注意する。

#example[
絶対値関数$opabs(x) = abs(x)$は$RR$上の凸関数である。
実際、三角不等式より
$
abs(p x+(1-p) y)
<= abs{p x}+abs{(1-p) y}
= p abs(x)+(1-p) abs(y)
$
である。

]
凸関数であることの特徴づけの一つは二階微分が非負であることである。

#proposition([凸関数の特徴づけ])[
$f$を開区間$I$上で定義された実数値関数で$I$上二回微分可能であるとする。

- 以下の条件は同値である。
  + $f$が$I$上の凸関数である。
  + $x < z < y$を満たす任意の$x, y, z in I$に対して、
    $
    (f(z)-f(x))/(z-x) <= (f(y)-f(x))/(y-x) <= (f(y)-f(z))/(y-z)
    $
    が成り立つ。
  + $f'$は$I$上単調増加である。
  + 任意の$x in I$に対して$f''(x) >= 0$が成り立つ。
- 以下の条件は同値である。
  + $f$が$I$上の凹関数である。
  + $x < z < y$を満たす任意の$x, y, z in I$に対して、
    $
    (f(z)-f(x))/(z-x) >= (f(y)-f(x))/(y-x) >= (f(y)-f(z))/(y-z)
    $
    が成り立つ。
  + $f'$は$I$上単調減少である。
  + 任意の$x in I$に対して$f''(x) <= 0$が成り立つ。
] <t_convex>

#proof[
凸関数の方について示す。

1.ならば2.について、一つ目の不等号は
$
f(z) <= (z-x)/(y-x) (f(y)-f(x))+f(x) = (y-z)/(y-x) f(x)+(z-x)/(y-x) f(y)
$
と同値で、$p = (y-z)/(y-x)$とおくと凸関数の条件式$f(p x+(1-p) y) <= p f(x)+(1-p) f(y)$に他ならない。
もう一つの不等号は
$
f(z) <= -(y-z)/(y-x) (f(y)-f(x))+f(y) = (y-z)/(y-x) f(x)+(z-x)/(y-x) f(y)
$
と同値で同様に成り立つ。

2.ならば1.について、$0 < p < 1$と$x < y$を満たす$x, y in I$に対して@e_convex を示せばよい。
$z = p x+(1-p) y$とおくと、
$
f(p x+(1-p) y) = f(z)
<= (y-z)/(y-x) f(x)+(z-x)/(y-x) f(y)
= p f(x)+(1-p) f(y)
$
である。

2.ならば3.について、$z -> x$あるいは$z -> y$とすることで、
$
f'(x) <= (f(y)-f(x))/(y-x) <= f'(y)
$
を得て、$f'$は単調である。

3.ならば2.について、1.ならば2.のところでわかるように$(f(z)-f(x))/(z-x) <= (f(y)-f(x))/(y-x)$と$(f(y)-f(x))/(y-x) <= (f(y)-f(z))/(y-z)$は同値で、片方が成り立たないとするともう片方も成り立たず、
$
(f(z)-f(x))/(z-x) > (f(y)-f(x))/(y-x) > (f(y)-f(z))/(y-z)
$
となる。
ここで、平均値の定理より$f'(a) = (f(z)-f(x))/(z-x)$となる$x < a < z$と$f'(b) = (f(y)-f(z))/(y-z)$となる$z < b < y$が存在する。
仮定より$f'(a) <= f'(b)$なので、矛盾が導かれ最終的に2.が成立することがわかる。

3.と4.の同値性は@t_diff_monotone からすぐわかる。

凹関数の方は同様なので詳細は省略する。
]

#remark[
$f$が二回微分可能でなくとも一回微分可能であれば、1., 2., 3.の同値性が示される。
$f$が一回微分可能でなくとも1., 2.の同値性が示される。
]

#example[
- 二乗関数$f(x) = x^2$は$f''(x) = 1 > 0$なので、$RR$上の凸関数である。
- 指数関数$f(x) = e^x$は$f''(x) = e^x > 0$なので、$RR$上の凸関数である。
- 対数関数$f(x) = log x$は$f''(x) = -1/x^2 < 0$なので、$(0, oo)$上の凹関数である。
]

今後は微分可能とは限らない凸関数・凹関数について詳しく見ていく。

#proposition[
$f$を区間$I$上の実数値関数、$a$を$I$上の点とする。

- $f$が凸関数のとき、$x in I\\{a}$に対する関数$(f(x)-f(a))/(x-a)$は単調増加である。
  つまり$x <= y$を満たす任意の$x, y in I\\{a}$に対して、
  $
  (f(x)-f(a))/(x-a) <= (f(y)-f(a))/(y-a)
  $
  が成り立つ。
- $f$が凹関数のとき、$x in I\\{a}$に対する関数$(f(x)-f(a))/(x-a)$は単調減少である。
  つまり$x <= y$を満たす任意の$x, y in I\\{a}$に対して、
  $
  (f(x)-f(a))/(x-a) >= (f(y)-f(a))/(y-a)
  $
  が成り立つ。

]
#block[
凸関数の方について示す。
凸関数の特徴づけ（@t_convex の1.と2.とその注意参照）を使う。

- $x <= y < a$の場合、特徴づけより$(f(x)-f(a))/(x-a) = (f(a)-f(x))/(a-x) <= (f(a)-f(y))/(a-y) = (f(y)-f(a))/(y-a)$である。
- $x < a < y$の場合、特徴づけより$(f(x)-f(a))/(x-a) = (f(a)-f(x))/(a-x) <= (f(y)-f(a))/(y-a)$である。
- $a < x <= y$の場合、特徴づけより$(f(x)-f(a))/(x-a) <= (f(y)-f(a))/(y-a)$である。

よってどの場合もほしかった不等式が成り立つ。

凹関数の方は同様なので詳細は省略する。
]

凸関数・凹関数に対して次のような直線を引くことができる。

#proposition[
$f$を区間$I$上の実数値関数、$a$を$I$上の点とする。

- $f$が凸関数のとき、実数$k$が存在して任意の$x in I$に対して$f(x) >= f(a)+k (x-a)$が成立する。
- $f$が凹関数のとき、実数$k$が存在して任意の$x in I$に対して$f(x) <= f(a)+k (x-a)$が成立する。
] <t_convex_supp>

#proof[
凸関数の方について示す。
前の命題より任意の$x < a < y$に対して$(f(x)-f(a))/(x-a) <= (f(y)-f(a))/(y-a)$が成り立つ。
ここで@t_supinf_indep より
$
(f(x)-f(a))/(x-a) <= k <= (f(y)-f(a))/(y-a)
$
となる実数$k$が存在する。
あとは式を整理すればこの$k$こそほしかった数であることがわかる。

凹関数の方は同様なので詳細は省略する。
]

#remark[
$f$が微分可能な時はこの直線は$f(x)$の$x = a$での接線とすればよい。
]

凸関数・凹関数に関する有名な不等式として次のイェンセンの不等式がある。

#theorem([イェンセンの不等式])[
$f$を区間$I$上の実数値関数とする。
$N = 1, 2, 3, dots$個の$a_1, dots, a_N$を$I$上の点、$0 <= p_1, dots, p_N <= 1$を$p_1+dots+p_N = 1$を満たす数とする。

- $f$が凸関数のとき、
  $
  f(p_1 a_1+dots+p_N a_N) <= p_1 f(a_1)+dots+p_N f(a_N)
  $
  が成り立つ。
- $f$が凹関数のとき、
  $
  f(p_1 a_1+dots+p_N a_N) >= p_1 f(a_1)+dots+p_N f(a_N)
  $
  が成り立つ。
]

この不等式はグラフ$y = f(x)$上の点$(a_1, f(a_1)), dots, (a_N, f(a_N))$がなす多角形の重心がグラフより上側（凸関数の場合）になることを示していて、$p_1, dots, p_N$は重みを表す。
$N = 2$の場合は凸関数・凹関数の定義に他ならない。
イェンセンの不等式の証明は数学的帰納法によって簡単にできるが、後で積分版イェンセンの不等式を示すために前の命題を用いたものを紹介する。

#proof[
凸関数の方について示す。
@t_convex_supp より$f(x) >= f(a)+k (x-a)$を満たす実数$k$が存在する。
ここで$a = p_1 a_1+dots+p_N a_N$、$x = a_n$ ($n = 1, dots N$)として$p_n$倍して足し合わせると、$p_1+dots+p_N = 1$に注意して、
$
sum_(n = 1)^N p_n f(a_n)
>= sum_(n = 1)^N p_n (f(a)+k (a_n-a))
= f(a)+k (sum_(n = 1)^N p_n a_n-a)
= f(a).
$
よってほしかった不等式を得る。

凹関数の方は同様なので詳細は省略する。
]

この不等式を様々な凸関数・凹関数に当てはめることでいろいろな不等式を得ることができる。

#example([相加平均・相乗平均の関係式])[
対数関数$f(x) = log x$ ($x > 0$)は$f''(x) = -1/x^2 < 0$より凹関数である。
ここからイェンセンの不等式を考えると、$a_1, dots, a_N > 0$、$p_1 = dots = p_N = 1/N$として
$
log((a_1+dots+a_N)/N) >= 1/N (log a_1+dots+log a_N) = log(root(N, a_1 dots a_N)) $
よって、
$
(a_1+dots+a_N)/N >= root(N, a_1 dots a_N)
$
を得る。
この左辺は相加平均（算術平均）、右辺は相乗平均（幾何平均）と呼ばれ、
今回の不等式は正の数$a_1, dots, a_N$に対して相乗平均より相加平均の方が常に大きいことを示していて相加平均・相乗平均の関係式と呼ばれる。
]

== 高階微分

== テイラーの定理

== 漸近展開
