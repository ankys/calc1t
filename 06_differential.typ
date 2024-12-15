= 微分
<微分>
== 微分係数と微分導関数
<微分係数と微分導関数>
この節では実数の集合$X$上で定義された実数値関数$f : X arrow.r bb(R)$と$X$の点$a$を考える。
特に$a$に対して正の数$delta > 0$が存在して\$B\_\\delta(a) = \\lrset{ x \\in \\mathbb{R} \\mid |x-a| \< \\delta }\$は$X$の部分集合になっている状態を考え、このような点$a$を$X$の#emph[内点];という。

#block[
$f$を実数の集合$X$上で定義された実数値関数として、$a$を$X$の内点とする。
ここで、\$x \\in X\\setminus\\lrset{a}\$で定義された関数$frac(f (x) - f (a), x - a)$が$x arrow.r a$で収束する時、
関数$f (x)$は点$x = a$で#emph[微分可能];であるといい極限を#emph[微分係数];という。
$y = f (x)$の点$x = a$での微分係数を
\$\$f\'(a), \\quad \\dv{f}{x}{(a)}, \\quad \\eval{\\dv{f}{x}}\_{x = a}, \\quad \\eval{\\dv{x}(f(x))}\_{x = a}, \\quad \\eval{y\'}\_a, \\quad \\eval{\\dv{y}{x}}\_a\$\$
などで表す。 つまり、
$ f' (a) = lim_(x arrow.r a) frac(f (x) - f (a), x - a) = lim_(h arrow.r 0) frac(f (a + h) - f (a), h) $
である。

]
#block[
微分可能であるためには連続である必要がある。

]
微分を考える動機として接線の計算が挙げられる。
つまり、関数$y = f (x)$のグラフに対して点$(x , y) = (a , f (a))$と点$(x , y) = (a + h , f (a + h))$
($h eq.not 0$)を通る直線は
$ y = frac(f (a + h) - f (a), h) (x - a) + f (a) $
となるが、$f$が$a$で微分可能とすると$h$を$0$に近づけることで直線の方程式
$ y = f' (a) (x - a) + f (a) $ を得る。
関数$y = f (x)$のグラフとこの直線は視覚的には接しているように見えることが多く、
実際図形的に定義される円（の一部）の接線と上記の直線は一致する。
そこで関数$y = f (x)$と点$x = a$に対して上記の方程式@e_tangentで定まる直線を$y = f (x)$の$x = a$での#emph[接線];という。

それはさておき、以下のことは複雑な形の関数の微分を計算する際に基礎的である。

#block[
関数$f (x)$, $g (x)$が点$x = a$で微分可能として、$c$を実数の定数とする。
この時、和$f (x) + g (x)$と定数倍$c f (x)$も$x = a$で微分可能で、
\$\$\\eval{\\dv{x}(f(x)+g(x))}\_{x = a} = f\'(a)+g\'(a),
\\quad \\eval{\\dv{x}(c f(x))}\_{x = a} = c f\'(a)\$\$ が成立する。

]
このことを微分の線形性という。

#block[
#emph[Proof.] $x arrow.r a$で
$ frac((f (x) + g (x)) - (f (a) + g (a)), x - a) = frac(f (x) - f (a), x - a) + frac(g (x) - g (a), x - a) arrow.r f' (a) + g' (a) , $
$ frac(c f (x) - c f (a), x - a) = c frac(f (x) - f (a), x - a) arrow.r c f' (a) $
より示される。~◻

]
#block[
関数$f (x)$, $g (x)$が点$x = a$で微分可能とする。
この時、積$f (x) g (x)$も$x = a$で微分可能で、
\$\$\\eval{\\dv{x}(f(x)g(x))}\_{x = a} = f\'(a)g(a)+f(a)g\'(a)\$\$
が成立する。

]
#block[
#emph[Proof.] $x arrow.r a$で
$ frac(f (x) g (x) - f (a) g (a), x - a) = frac(f (x) - f (a), x - a) g (x) + f (a) frac(g (x) - g (a), x - a) arrow.r f' (a) g (a) + f (a) g' (a) $
より示される。~◻

]
#block[
関数$f (x)$, $g (x)$が点$x = a$で微分可能で$g (a) eq.not 0$とする。
この時、積$frac(f (x), g (x))$も$x = a$で微分可能で、
\$\$\\eval{\\dv{x}(\\frac{f(x)}{g(x)})}\_{x = a} = \\frac{f\'(a)g(a)-f(a)g\'(a)}{g(a)^2}\$\$
が成立する。

]
#block[
#emph[Proof.] $x arrow.r a$で
$ frac(frac(f (x), g (x)) - frac(f (a), g (a)), x - a) = frac(f (x) g (a) - f (a) g (x), g (x) g (a) (x - a)) = frac((f (x) - f (a)) g (a) - f (a) (g (x) - g (a)), g (x) g (a) (x - a)) arrow.r frac(f' (a) g (a) - f (a) g' (a), g (a)^2) $
より示される。~◻

]
#block[
関数$f (x)$が点$x = a$で微分可能で$g (y)$が点$y = f (x)$で微分可能とする。
この時、合成関数$f (g (x))$も$x = a$で微分可能で、
\$\$\\eval{\\dv{x}(g(f(x)))}\_{x = a} = g\'(f(a))f\'(a)\$\$ が成立する。

]
#block[
#emph[Proof.] $x arrow.r a$で$f (x) arrow.r f (a)$に注意して、
$ frac(g (f (x)) - g (f (a)), x - a) = frac(g (f (x)) - g (f (a)), f (x) - f (a)) frac(f (x) - f (a), x - a) arrow.r g' (f (a)) f' (a) $
より示される。~◻

]
この公式は$y = f (x)$, $z = g (y)$として
\$\$\\dv{x}{z} = \\dv{y}{z}\\dv{x}{y}\$\$ と考えると覚えやすい。

関数の極限に右極限・左極限あったように微分の概念にも右微分と左微分が定義できる。

#block[
$f$を実数の集合$X$上で定義された実数値関数として、$a$を$X$の内点とする。

- \$x \\in X\\setminus\\lrset{a}\$で定義された関数$frac(f (x) - f (a), x - a)$が右からの極限$x arrow.r a +$で収束する時、
  関数$f (x)$は点$x = a$で#emph[右微分可能];であるといい極限を#emph[右微分係数];という。
  $y = f (x)$の点$x = a$での右微分係数を
  \$\$f\'\_+(a), \\quad \\dv{f}{x^+}{(a)}, \\quad \\eval{\\dv{f}{x^+}}\_{x = a}, \\quad \\eval{\\dv{x^+}(f(x))}\_{x = a}, \\quad \\eval{\\dv{y}{x^+}}\_a\$\$
  などで表す。 つまり、
  $ f'_(+) (a) = lim_(x arrow.r a +) frac(f (x) - f (a), x - a) = lim_(h arrow.r 0 +) frac(f (a + h) - f (a), h) $
  である。

- \$x \\in X\\setminus\\lrset{a}\$で定義された関数$frac(f (x) - f (a), x - a)$が左からの極限$x arrow.r a -$で収束する時、
  関数$f (x)$は点$x = a$で#emph[左微分可能];であるといい極限を#emph[左微分係数];という。
  $y = f (x)$の点$x = a$での左微分係数を
  \$\$f\'\_-(a), \\quad \\dv{f}{x^-}{(a)}, \\quad \\eval{\\dv{f}{x^-}}\_{x = a}, \\quad \\eval{\\dv{x^-}(f(x))}\_{x = a}, \\quad \\eval{\\dv{y}{x^-}}\_a\$\$
  などで表す。 つまり、
  $ f'_(-) (a) = lim_(x arrow.r a -) frac(f (x) - f (a), x - a) = lim_(h arrow.r 0 -) frac(f (a + h) - f (a), h) $
  である。

]
右微分・左微分の記号は$x$の肩でなく上の$ⅆ$の肩に符号を書くことが多いが、本テキストでは様々な事情によりこの記法を採用する。

微分可能であることの必要十分条件は右微分係数と左微分係数が一致することである。

#block[
<t_semidiff>
関数$f = f (x)$が点$x = a$で微分可能であることの必要十分条件は、
関数$f = f (x)$が点$x = a$で右微分可能かつ左微分可能で
$ f'_(+) (a) = f'_(-) (a) $ が成り立つことである。

]
#block[
#emph[Proof.]
右極限、左極限が一致しているので命題@t_lim_oslimから従う。~◻

]
実数の集合$X$で$X$のすべての点が$X$の内点になっているものを#emph[開集合];という。
開区間は開集合である。

#block[
$f$を開集合$X$上で定義された実数値関数とする。
ここで、$X$のすべての点で関数$f$が微分可能であるとき$f$は$X$上微分可能であるという。
この時、$x in X$に対して微分係数$f' (x)$を対応させる集合$X$上の実数値関数を$f$の#emph[微分導関数];という。
$y = f (x)$の微分導関数を
\$\$f\', \\quad \\dv{f}{x}, \\quad \\dv{x}(f(x)), \\quad y\', \\quad \\dv{y}{x}\$\$
などで表す。

]
微分導関数はしばしば#emph[導関数];と略される。

これまでの内容から以下がわかる。

#block[
関数$f$, $g$が開集合$X$で微分可能とする。
この時、和$f (x) + g (x)$、差$f (x) - g (x)$、積$f (x) g (x)$、各$x in X$で$g (x) eq.not 0$のとき商$frac(f (x), g (x))$も$X$で微分可能で、
\$\$\\dv{x}(f(x)+g(x)) = f\'(x)+g\'(x),
\\quad \\dv{x}(f(x)-g(x)) = f\'(x)-g\'(x),\$\$
\$\$\\dv{x}(f(x)g(x)) = f\'(x)g(x)+f(x)g\'(x),
\\quad \\dv{x}\\qty(\\frac{f(x)}{g(x)}) = \\frac{f\'(x)g(x)-f(x)g\'(x)}{g(x)^2}\$\$
が成立する。

]
#block[
関数$f$が開集合$X$で微分可能で、関数$g$が開集合$Y$で微分可能とする。
$f (X) subset Y$のとき、合成関数$g (f (x))$は$X$で微分可能で、
\$\$\\dv{x}(g(f(x))) = g\'(f(x))f\'(x)\$\$ が成立する。

]
#block[
関数$f$が開区間$X$で微分可能で狭義単調増加で逆関数を$f^(- 1)$とする。
この時各$x in X$に対して$f' (x) eq.not 0$であり、$f^(- 1) (y)$は開区間$Y = f (X)$で微分可能で、
\$\$\\dv{y}(f^{-1}(y)) = (f\'(f^{-1}(y)))^{-1}\$\$ が成立する。

]
== 種々の関数の微分
<種々の関数の微分>
$c$を実数として定数関数$c$は$bb(R)$で微分可能で、 \$\$\\dv{x}(c)
= \\lim\_{h \\to 0}\\frac{c-c}{h}
= 0\$\$ である。

実数$x$と$n = 1 , 2 , 3 , dots.h.c$に対してべき関数$x^n$は$bb(R)$で微分可能で、
\$\$\\begin{aligned}
\\dv{x}(x^n)
&= \\lim\_{h \\to 0}\\frac{(x+h)^n-x^n}{h}
= \\lim\_{h \\to 0}\\frac{\\binom{n}{0}x^n+\\binom{n}{1}h x^{n-1}+\\binom{n}{2}h^2 x^{n-2}+\\cdots+\\binom{n}{n}h^n-x^n}{h} \\\\
&= \\lim\_{h \\to 0}\\qty(n x^{n-1}+\\binom{n}{2}h x^{n-2}+\\cdots+\\binom{n}{n}h^{n-1})
= n x^{n-1}
\\end{aligned}\$\$ である。

$0$でない実数$x$と$n = 1 , 2 , 3 , dots.h.c$に対して負べき関数$x^(- n)$は\$\\mathbb{R}\\setminus\\lrset{0}\$で微分可能で、
\$\$\\begin{aligned}
\\dv{x}(x^{-n})
&= \\lim\_{h \\to 0}\\frac{(x+h)^{-n}-x^{-n}}{h}
= \\lim\_{h \\to 0}\\frac{x^n-(x+h)^n}{(x+h)^n x^n h}
= \\lim\_{h \\to 0}\\frac{-n x^{n-1}-\\binom{n}{2}h x^{n-2}+\\cdots+\\binom{n}{n}h^{n-1}}{(x+h)^n x^n} \\\\
&= \\frac{-n x^{n-1}}{x^{2 n}}
= -n x^{-n-1}
\\end{aligned}\$\$ である。

定数関数とべき関数と負べき関数の結果を合わせて整数$n$に対して、
\$\$\\dv{x}(x^n) = n x^{n-1}\$\$
とまとめて書けるが、$x$の範囲が異なることに注意する。

多項式関数は$bb(R)$で微分可能で、$a_0 , a_1 , a_2 , a_3 , dots.h.c , a_n$を$n + 1$個の実数定数として
\$\$\\dv{x}(a\_0+a\_1 x+a\_2 x^2+a\_3 x^3+\\cdots+a\_n x^n) = a\_1+2 a\_2 x+3 a\_3 x^2+\\cdots+n a\_n x^{n-1}\$\$
である。

指数関数の微分を考える際にはまずネイピア数$e$を底とする指数関数$exp x = e^x$を考える。
指数関数$exp$は$bb(R)$で微分可能で、命題より
\$\$\\dv{x}(\\exp(x)) = \\dv{x}(e^x) = \\lim\_{h \\to 0}\\frac{e^{x+h}-e^x}{h} = \\lim\_{h \\to 0}\\frac{e^h-1}{h}e^x = e^x\$\$
である。
一般の底$a > 0$に対しては$a = e^(log a)$に注意して合成関数の微分より
\$\$\\dv{x}(\\exp\_a(x)) = \\dv{x}(a^x) = \\dv{x}(e^{x\\log a}) = e^{x\\log a}\\log a = a^x\\log a\$\$
である。

対数関数$log_a$は指数関数の逆関数であることから$(0 , + oo)$で微分可能で、
\$\$\\dv{x}(\\log x) = \\qty(\\eval{\\dv{y}(e^y)}\_{y = \\log x})^{-1} = x^{-1} = \\frac{1}{x},\$\$
\$\$\\dv{x}(\\log\_a x) = \\qty(\\eval{\\dv{y}(a^y)}\_{y = \\log\_a x})^{-1} = (x\\log a)^{-1} = \\frac{1}{x\\log a}\$\$
である。

正の数$x$と実数$a$に対して関数$x^a$は$(0 , + oo)$で微分可能で、$x = e^(log x)$に注意して、
\$\$\\dv{x}(x^a) = \\dv{x}(e^{a\\log x}) = e^{a\\log x}\\frac{a}{x} = a x^{a-1}\$\$
である。
このような方法は関数$f (x)$の微分を計算するときに対数を取った関数$log f (x)$の微分を考えているので、対数微分法と呼ばれる。

#block[
$f (x) = x^x$ ($x > 0$)とおくと、
\$\$f\'(x) = \\dv{x}(x^x) = \\dv{x}(e^{x\\log x}) = e^{x\\log x}\\qty(\\log x\\frac{x}{x}) = (1+\\log x)x^x.\$\$

]
正弦関数$sin$は$bb(R)$で微分可能で、正弦関数の和積公式と極限の公式より
\$\$\\dv{x}(\\sin x)
= \\lim\_{h \\to 0}\\frac{\\sin(x+h)-\\sin(x)}{h}
= \\lim\_{h \\to 0}\\frac{2\\cos(x+\\frac{h}{2})\\sin(\\frac{h}{2})}{h}
= \\lim\_{h \\to 0}\\cos(x+\\frac{h}{2})\\frac{\\sin(\\frac{h}{2})}{\\frac{h}{2}}
= \\cos x.\$\$ 余弦関数$cos$も$bb(R)$で微分可能で、 \$\$\\dv{x}(\\cos x)
= \\lim\_{h \\to 0}\\frac{\\cos(x+h)-\\cos(x)}{h}
= \\lim\_{h \\to 0}\\frac{-2\\sin(x+\\frac{h}{2})\\sin(\\frac{h}{2})}{h}
= -\\lim\_{h \\to 0}\\sin(x+\\frac{h}{2})\\frac{\\sin(\\frac{h}{2})}{\\frac{h}{2}}
= -\\sin x.\$\$ 正接関数$tan$は$(- pi / 2 , + pi / 2)$で微分可能で、
\$\$\\dv{x}(\\tan x)
= \\dv{x}\\qty(\\frac{\\sin x}{\\cos x})
= \\frac{\\dv{x}(\\sin x)\\cos x-\\sin x\\dv{x}(\\cos x)}{\\cos^2 x}
= \\frac{\\cos^2 x+\\sin^2 x}{\\cos^2 x}
= \\frac{1}{\\cos^2 x}.\$\$

逆正弦関数$arcsin$は$(- 1 , + 1)$で微分可能で、 \$\$\\dv{x}(\\arcsin x)
= \\qty(\\eval{\\dv{y}(\\sin y)}\_{y = \\arcsin x})^{-1}
= (\\cos(\\arcsin x))^{-1}
= \\frac{1}{\\sqrt{1-\\sin^2(\\arcsin x)}}
% = \\qty(\\sqrt{1-x^2})^{-1}
= \\frac{1}{\\sqrt{1-x^2}}.\$\$
逆余弦関数$arccos$も$(- 1 , + 1)$で微分可能で、 \$\$\\dv{x}(\\arccos x)
= \\qty(\\eval{\\dv{y}(\\cos y)}\_{y = \\arccos x})^{-1}
= (-\\sin(\\arccos x))^{-1}
= -\\frac{1}{\\sqrt{1-\\cos^2(\\arccos x)}}
= -\\frac{1}{\\sqrt{1-x^2}}.\$\$
逆正接関数$arctan$は$bb(R)$で微分可能で、 \$\$\\dv{x}(\\arctan x)
= \\qty(\\eval{\\dv{y}(\\tan y)}\_{y = \\arctan x})^{-1}
= (\\frac{1}{\\cos^2(\\arctan x)})^{-1}
= \\frac{1}{1+\\tan^2(\\arctan x)}
= \\frac{1}{1+x^2}.\$\$
ここで$cos^2 x + sin^2 x = 1$から従う公式$1 + tan^2 x = frac(1, cos^2 x)$を用いた。

双曲線正弦関数$sinh x$は$bb(R)$で微分可能で、 \$\$\\dv{x}(\\sinh x)
= \\dv{x}\\qty(\\frac{e^x-e^{-x}}{2})
= \\frac{e^x+e^{-x}}{2}
= \\cosh x.\$\$ 双曲線余弦関数$cosh x$も$bb(R)$で微分可能で、
\$\$\\dv{x}(\\cosh x)
= \\dv{x}\\qty(\\frac{e^x+e^{-x}}{2})
= \\frac{e^x-e^{-x}}{2}
= \\sinh x.\$\$ 双曲線正接関数$tanh x$は$bb(R)$で微分可能で、
\$\$\\dv{x}(\\tanh x)
= \\dv{x}\\qty(\\frac{\\sinh x}{\\cosh x})
= \\frac{\\cosh^2 x-\\sinh^2 x}{\\cosh^2 x}
= \\frac{1}{\\cosh^2 x}.\$\$

逆双曲線正弦関数\$\\arsinh x\$は$bb(R)$で微分可能で、
\$\$\\dv{x}(\\arsinh x)
= \\qty(\\eval{\\dv{y}(\\sinh y)}\_{y = \\arsinh x})^{-1}
= (\\cosh(\\arsinh x))^{-1}
= \\frac{1}{\\sqrt{1+\\sinh^2(\\arsinh x)}}
= \\frac{1}{\\sqrt{1+x^2}}.\$\$
逆双曲線余弦関数\$\\arcosh x\$は$(1 , + oo)$で微分可能で、
\$\$\\dv{x}(\\arcosh x)
= \\qty(\\eval{\\dv{y}(\\cosh y)}\_{y = \\arcosh x})^{-1}
= (\\sinh(\\arcosh x))^{-1}
= \\frac{1}{\\sqrt{\\cosh^2(\\arcosh x)-1}}
= \\frac{1}{\\sqrt{x^2-1}}.\$\$
逆双曲線正接関数\$\\artanh x\$は$(- 1 , + 1)$で微分可能で、
\$\$\\dv{x}(\\artanh x)
= \\qty(\\eval{\\dv{y}(\\tanh y)}\_{y = \\artanh x})^{-1}
= \\qty(\\frac{1}{\\cosh^2(\\artanh x)})^{-1}
= \\frac{1}{1-\\tanh^2(\\artanh x)}
= \\frac{1}{1-x^2}.\$\$
ここで$cosh^2 x - sinh^2 x = 1$から従う公式$1 - tanh^2 x = frac(1, cosh^2 x)$を用いた。

絶対値関数\$\\opabs\$は\$\\mathbb{R}\\setminus\\lrset{0}\$で微分可能で、
\$\$\\dv{x}(\\opabs(x))
= \\dv{x}(|x|)
=
\\begin{cases}
\\dv{x}(+x) & (x \> 0) \\\\
\\dv{x}(-x) & (x \< 0) \\\\
\\end{cases}
=
\\begin{cases}
+1 & (x \> 0) \\\\
-1 & (x \< 0) \\\\
\\end{cases}
= \\sgn(x).\$\$ $x = 0$では微分可能でないことに注意する。
しかしながら、\$\\opabs\$は$x = 0$で右微分可能かつ左微分可能であり、
\$\$\\eval{\\dv{x^+}(\\opabs(x))}\_{x = a} = \\eval{\\dv{x^+}(|x|)}\_{x = a} = +1,
\\quad \\eval{\\dv{x^-}(\\opabs(x))}\_{x = a} = \\eval{\\dv{x^-}(|x|)}\_{x = a} = -1,\$\$
が成り立つ。

符号関数\$\\sgn\$は\$\\mathbb{R}\\setminus\\lrset{0}\$で微分可能で、
\$\$\\dv{x}(\\sgn(x))
=
\\begin{cases}
\\dv{x}(+1) & (x \> 0) \\\\
\\dv{x}(-1) & (x \< 0) \\\\
\\end{cases}
= 0.\$\$ $x = 0$では微分可能でないことに注意する。

床関数\$\\floor\$と天井関数\$\\ceil\$はともに$bb(R) \\ bb(Z)$で微分可能で、
\$\$\\dv{x}(\\floor(x))
= \\dv{x}(\\ceil(x))
= 0.\$\$ $x in bb(Z)$では微分可能でないことに注意する。
しかしながら、\$\\floor\$は$x in bb(Z)$で右微分可能であり、\$\\ceil\$は$x in bb(Z)$で左微分可能である。

ここで、対数関数$log$は$(0 , oo)$で微分できるが、導関数$1 / x$は\$\\mathbb{R}\\setminus\\lrset{0}\$で定義されている。
そこで絶対値関数との合成を取ることで関数の定義される集合を拡張するという技法が知られている。
つまり、$0$でない実数$x$に対して \$\$\\dv{x}(\\log|x|)
=
\\begin{cases}
\\dv{x}(\\log(+x)) & (x \> 0) \\\\
\\dv{x}(\\log(-x)) & (x \< 0) \\\\
\\end{cases}
=
\\begin{cases}
\\frac{+1}{+x} & (x \> 0) \\\\
\\frac{-1}{-x} & (x \< 0) \\\\
\\end{cases}
= \\frac{1}{x}\$\$ である。
同様のことは逆双曲線正接関数\$\\artanh\$についてもいえるが、こちらは\$\\artanh x = \\frac{1}{2}\\log\\frac{1+x}{1-x}\$であることを思い出して以下のようにする。
つまり、$plus.minus 1$でない実数$x$に対して
\$\$\\dv{x}\\qty(\\frac{1}{2}\\log\\abs{\\frac{1+x}{1-x}}) = \\frac{1}{1-x^2}\$\$
となる。

以上をまとめると各種関数の微分は以下のようになる。

#block[
$x$を実数として以下が成立する。
\$\$\\dv{x}(c) = 0 \\quad (c \\in \\mathbb{R}),
\\quad \\dv{x}(x^n) = n x^{n-1} \\quad (n = 1, 2, 3, \\cdots),
\\quad \\dv{x}(x^{-n}) = -n x^{-n-1} \\quad (n = 1, 2, 3, \\cdots, x \\ne 0).\$\$
\$\$\\dv{x}(a\_0+a\_1 x+a\_2 x^2+a\_3 x^3+\\cdots+a\_n x^n) = a\_1+2 a\_2 x+3 a\_3 x^2+\\cdots+n a\_n x^{n-1} \\quad (n = 0, 1, 2, 3, \\cdots, a\_0, \\cdots, a\_n \\in \\mathbb{R}).\$\$
\$\$\\dv{x}(x|x|^{a-1}) = a |x|^{a-1} \\quad (a \\in \\mathbb{R}, x \\ne 0).\$\$
\$\$\\dv{x}(\\exp(x)) = \\dv{x}(e^x) = e^x,
\\quad \\dv{x}(\\exp\_a(x)) = \\dv{x}(a^x) = (\\log a)a^x \\quad (a \> 0).\$\$
\$\$\\dv{x}(\\log|x|) = \\frac{1}{x} \\quad (x \\ne 0),
\\quad \\dv{x}(\\log\_a|x|) = \\frac{1}{(\\log a)x} \\quad (a \> 0, a \\ne 0, x \\ne 0).\$\$
\$\$\\dv{x}(\\sin x) = \\cos x,
\\quad \\dv{x}(\\cos x) = -\\sin x,
\\quad \\dv{x}(\\tan x) = \\frac{1}{\\cos^2 x} \\quad (x \\ne \\frac{\\pi}{2}+n\\pi, n \\in \\mathbb{Z}).\$\$
\$\$\\dv{x}(\\arcsin x) = \\frac{1}{\\sqrt{1-x^2}} \\quad (-1 \< x \< +1),
\\quad \\dv{x}(\\arccos x) = -\\frac{1}{\\sqrt{1-x^2}} \\quad (-1 \< x \< +1),
\\quad \\dv{x}(\\arctan x) = \\frac{1}{1+x^2}.\$\$
\$\$\\dv{x}(\\sinh x) = \\cosh x,
\\quad \\dv{x}(\\cosh x) = \\sinh x,
\\quad \\dv{x}(\\tanh x) = \\frac{1}{\\cosh^2 x}.\$\$
\$\$\\dv{x}(\\arsinh x) = \\frac{1}{\\sqrt{1+x^2}},
\\quad \\dv{x}(\\arcosh x) = \\frac{1}{\\sqrt{x^2-1}} \\quad (|x| \> 1),
\\quad \\dv{x}(\\artanh x) = \\frac{1}{1-x^2} \\quad (-1 \< x \< +1).\$\$
\$\$\\dv{x}\\qty(\\frac{1}{2}\\log\\abs{\\frac{1+x}{1-x}}) = \\frac{1}{1-x^2} \\quad (x \\ne \\pm 1).\$\$
\$\$\\dv{x}(\\opabs(x)) = \\dv{x}(|x|) = \\sgn(x) \\quad (x \\ne 0),
\\quad \\dv{x}(\\sgn(x)) = 0 \\quad (x \\ne 0).\$\$
\$\$\\dv{x}(\\floor(x)) = \\dv{x}(\\ceil(x)) = 0 \\quad (x \\notin \\mathbb{Z}).\$\$

]
== 微分と増減
<微分と増減>
#block[
$f$を実数の集合$X$上の実数値関数とする。

- $X$の内点$a$であって、ある正の数$delta > 0$が存在して$f (a) = max_(B_delta (a)) f$となる$a in X$のことを$f$の#emph[極大点];といい、$f$は点$a$で極大、またこの時の$f (a)$を$f$の#emph[極大値];という。
  つまり、$a$を$f$の極大点とするとある正の数$delta > 0$が存在して任意の$x in B_delta (a)$つまり$lr(|x - a|) < delta$を満たす点$x in X$に対して$f (x) lt.eq f (a)$が成り立つ。

- $X$の内点$a$であって、ある正の数$delta > 0$が存在して$f (a) = min_(B_delta (a)) f$となる$a in X$のことを$f$の#emph[極小点];といい、$f$は点$a$で極小、またこの時の$f (a)$を$f$の#emph[極小値];という。
  つまり、$a$を$f$の極小点とするとある正の数$delta > 0$が存在して任意の$x in B_delta (a)$つまり$lr(|x - a|) < delta$を満たす点$x in X$に対して$f (x) gt.eq f (a)$が成り立つ。

]
極大・極小は対象となる点の近くに限れば最大・最小となっている状況であり、関数に対して複数あることがある（ないこともある）。
また、最大点・最小点は必ず極大点・極小点である。

#block[
関数$f (x) = 1 - 1 / 2 x^2 + 1 / 24 x^4$において、$x = 0$は極大点であるが、$lim_(x arrow.r plus.minus oo) f (x) = + oo$なので、最大点ではない。

]
次の定理は非常に重要である。

#block[
<t_maxp>
実数の集合$X$上の関数$f$が$X$の内点$a$で最大または極大または最小または極小とする。
ここで、$f$が$a$で微分可能であるとすると、$f' (a) = 0$が成立する。

]
#block[
#emph[Proof.] $a$が極大点のときを考える。
つまり、ある$delta > 0$が存在して任意の$x in B_delta (a)$に対して$f (x) lt.eq f (a)$が成り立つとする。
この時
$ frac(f (x) - f (a), x - a) lt.eq 0 quad (a < x < a + delta) , quad frac(f (x) - f (a), x - a) gt.eq 0 quad (a - delta < x < a) . $
したがって、 $ f'_(+) (a) lt.eq 0 , quad f'_(-) (a) gt.eq 0 $
であり、$a$で微分可能なので命題@t_semidiffより、
$ f' (a) = f'_(+) (a) = f'_(-) (a) = 0 $ である。
最大点の時は極大点なので同じ証明でよい。
最小点、極小点の時は同様の議論をすることで#link(<e_maxp_semi>)[\[e\_maxp\_semi\]];の代わりに
$ f'_(+) (a) gt.eq 0 , quad f'_(-) (a) lt.eq 0 $
が得られて同じ結論が導かれる。~◻

]
#block[
証明を見ればわかる通り微分可能でなくとも、関数$f$が極大点$a$で右微分可能ないし左微分可能とすると不等式#link(<e_maxp_semi>)[\[e\_maxp\_semi\]];が成り立ち、関数$f$が極小点$a$で右微分可能ないし左微分可能とすると不等式#link(<e_minp_semi>)[\[e\_minp\_semi\]];が成り立つ。

]
この定理が重要な理由は関数$f$の最大点・最小点を見つける問題が方程式$f' (x) = 0$を解くことに帰着されることにある。

#block[
<t_gauss_est> $bb(R)$上の連続関数 $ f (x) = x e^(- x) $ を考える。
この関数は$f (1) = e^(- 1) > 0$, $lim_(x arrow.r - oo) f (x) = - oo$,
$lim_(x arrow.r + oo) = 0$なので、最大値を持つ。
ここで、微分導関数は$f' (x) = (1 - x) e^(- x)$であり、最大点においてこれが$0$になるが、$x = 1$以外ありえない。
よって$f (x)$は$x = 1$で最大となることが結論付けられる。

]
次の不等式は一般に成り立つ。

#block[
<t_young_ineq> $a$, $b$を非負の実数、$p$, $q$を
$ 1 / p + 1 / q = 1 , quad p , q > 1 $ を満たす実数とする。
このとき不等式 $ a b lt.eq a^p / p + b^q / q $ が成り立つ。

]
#block[
#emph[Proof.] $x in \[ 0 , oo \)$に対して
$ f (x) = a^p / p + x^q / q - a x $ とおくと、$x in (0 , oo)$に対して
$ f' (x) = x^(q - 1) - a . $
よって$f (x)$は$x = a^(frac(1, q - 1))$で最小となるので、
\$\$f(b) \\ge \\frac{a^p}{p}+\\frac{a^{\\frac{q}{q-1}}}{q}-a^{1+\\frac{1}{q-1}} = a^p\\qty(\\frac{1}{p}+\\frac{1}{q}-1) = 0.\$\$
したがってほしかった不等式が得られた。~◻

]
最大値原理は極大・極小の必要条件を与えるが、次の定理は十分条件の一つを片側微分を使って与える。

#block[
$f$を実数の集合$X$上の関数、$a$を$X$の内点とする。

- $f$が$a$で右微分可能かつ左微分可能で
  $ f'_(+) (a) < 0 , quad f'_(-) (a) > 0 $
  を満たす時、関数$f$は点$a$で極大である。

- $f$が$a$で右微分可能かつ左微分可能で
  $ f'_(+) (a) > 0 , quad f'_(-) (a) < 0 $
  を満たす時、関数$f$は点$a$で極小である。

]
#block[
#emph[Proof.] 前半の極大であることを示す。 右微分の定義より
$ lim_(x arrow.r a +) frac(f (x) - f (a), x - a) = f'_(+) (a) < 0 . $
よって$delta_(+) > 0$が存在して任意の$a < x < a + delta_(+)$に対して
$ frac(f (x) - f (a), x - a) < 1 / 2 f'_(+) (a) < 0 . $
つまり$f (x) < f (a)$である。 同様にして、左微分の定義より
$ lim_(x arrow.r a -) frac(f (x) - f (a), x - a) = f'_(-) (a) > 0 . $
よって$delta_(-) > 0$が存在して任意の$a - delta_(-) < x < a$に対して
$ frac(f (x) - f (a), x - a) > 1 / 2 f'_(+) (a) > 0 . $
つまり$f (x) < f (a)$である。
以上より$f (x)$は$x = a$で極大であることがわかる。

後半の極小を示す方は同様に証明されるので省略する。~◻

]
微分を使って関数の増減などの挙動を調べる際に基礎的になるのが次の平均値の定理である。

#block[
有界閉区間$[a , b]$上の関数$f$が$[a , b]$上で連続で$(a , b)$上で微分可能とする。
この時、ある$a < c < b$が存在して
$ f' (c) = frac(f (b) - f (a), b - a) $ が成り立つ。

]
そしてその証明は次の特別な場合に示せばよい。

#block[
有界閉区間$[a , b]$上の関数$f$が$[a , b]$上で連続で$(a , b)$上で微分可能とする。
ここで$f (a) = f (b)$の時、ある$a < c < b$が存在して$f' (c) = 0$が成り立つ。

]
#block[
#emph[ロルの定理の証明.]
$f$は有界閉区間$[a , b]$上の連続関数より中間値の定理から最大点$c_(+)$と最小点$c_(-)$が存在する。
ここで、$f (c_(+)) = f (c_(-))$の時は最大値と最小値が一致するので$f (x)$は定数関数で、各$x in [a , b]$に対して$f (x) = f (a) = f (b)$かつ$x in (a , b)$に対して$f' (x) = 0$である。
よって、この場合は$c = frac(a + b, 2)$とすればよい。
そうでない場合は$c_(+)$か$c_(-)$のうち少なくとも一方$c$が$f (c) eq.not f (a) = f (b)$より、$a < c < b$である。
さらに最大値原理（@t_maxp）より$f' (c) = 0$なので、定理の証明が完成した。~◻

]
#block[
#emph[平均値の定理の証明.] 関数$F$を
$ F (x) = f (x) - frac(f (b) - f (a), b - a) (x - a) $
とおくと、$F (a) = F (b) = f (a)$なので、ロルの定理が使えて$F' (c) = 0$となる$a < c < b$が存在する。
したがって、$f' (c) = frac(f (b) - f (a), b - a)$である。~◻

]
定数関数の微分は常に$0$であるが、区間においては逆も成り立つ。
このことを平均値定理の応用として示す。

#block[
区間$I$上の連続関数$f$がすべての内点$x$で$f' (x) = 0$を満たすならば、$f$は定数関数である。

]
#block[
#emph[Proof.] $a < b$を満たす$I$の2点$a , b$を取る。
この時、$f$は$[a , b]$上連続で、$(a , b)$上微分可能なので、$f' (c) = frac(f (b) - f (a), b - a)$となる点$c in (a , b)$が存在する。
$c$は$I$の内点なので仮定より$f' (c) = 0$より$f (a) = f (b)$がわかる。
つまり任意の2点での$f$の値が等しいので、$f$は定数関数であることが結論付けられる。~◻

]
さらに詳しく見ると以下が成り立つ。

#block[
<t_diff_monotone> $f$を区間$I$上の連続関数とする。

- $f$がすべての内点$x$で$f' (x) > 0$を満たすならば、$f$は狭義単調増加である。

- $f$がすべての内点$x$で$f' (x) gt.eq 0$を満たすならば、$f$は広義単調増加である。

- $f$がすべての内点$x$で$f' (x) < 0$を満たすならば、$f$は狭義単調減少である。

- $f$がすべての内点$x$で$f' (x) lt.eq 0$を満たすならば、$f$は広義単調減少である。

]
#block[
#emph[Proof.] 省略~◻

]
この定理を用いると、微分が$0$となる点で区間を分割することで関数の増減を知ることができる。

#block[
$f (x) = 1 - 1 / 2 x^2 + 1 / 24 x^4$を考えると$f' (x) = - x + 1 / 6 x^3$で$f' (x) = 0$を解くと$x = 0 , plus.minus sqrt(6)$である。
したがってこの関数は$\( - oo , - sqrt(6) \]$で狭義単調減少し$- sqrt(6)$で極小となり$[- sqrt(6) , 0]$で狭義単調増加し$0$で極大となり$[0 , + sqrt(6)]$で狭義単調減少し$+ sqrt(6)$で極小となり$\[ + sqrt(6) , + oo \)$で狭義単調増大する。

]
== ロピタルの定理
<ロピタルの定理>
この節では極限の問題を微分を使って見通しをよくするロピタルの定理を紹介する。
まず、その準備として次のコーシーの平均値の定理を示す。

#block[
$f$, $g$は有界閉区間$[a , b]$上の連続関数で$(a , b)$上で微分可能とする。
ここで$g (a) eq.not g (b)$かつ任意の$a < x < b$に対して$g' (x) eq.not 0$ならば、ある$a < c < b$が存在して
$ frac(f' (c), g' (c)) = frac(f (b) - f (a), g (b) - g (a)) $
が成り立つ。

]
#block[
#emph[Proof.] $g (a) eq.not g (b)$に注意して関数$F$を
$ F (x) = f (x) - frac(f (b) - f (a), g (b) - g (a)) (g (x) - g (a)) $
とおくと、$F (a) = F (b) = f (a)$なので、ロルの定理が使えて$F' (c) = 0$となる$a < c < b$が存在する。
したがって、$f' (c) = frac(f (b) - f (a), g (b) - g (a)) g' (c)$であり、整理してほしかった等式を得る。~◻

]
#block[
$a$を開区間$I$の内点、$f$,
$g$は\$I\\setminus\\lrset{a}\$上の連続関数で\$I\\setminus\\lrset{a}\$上で微分可能であり各\$x \\in I\\setminus\\lrset{a}\$に対して$g' (x) eq.not 0$とする。
ここで、$x arrow.r a$で$f (x) arrow.r 0$,
$g (x) arrow.r 0$であり、$frac(f' (x), g' (x))$が収束するならば、$frac(f (x), g (x))$も収束して
$ lim_(x arrow.r a) frac(f (x), g (x)) = lim_(x arrow.r a) frac(f' (x), g' (x)) $
が成り立つ。

]
#block[
この定理は$a = plus.minus oo$のときでも同様のものが成り立つ。

]
#block[
#emph[Proof.] $f (a) = 0$, $g (a) = 0$とおいて$f$,
$g$の定義域を$I$に拡張すると$f$, $g$は$I$上の連続関数である。
ここで$[a , x] subset I$を満たす点$x$を考え、$[a , x]$にコーシーの平均値の定理を用いれば、ある$a < c < x$が存在して
$ frac(f' (c), g' (c)) = frac(f (x) - f (a), g (x) - g (a)) = frac(f (x), g (x)) $
である。
このような$x$に対してこのような$c$の中から一つ選んで$c (x)$と定めると$a < c (x) < x$なので、$x arrow.r a +$とすると$c (x) arrow.r a$となることと$lim_(x arrow.r a) frac(f' (x), g' (x))$が存在することから、
$ lim_(x arrow.r a +) frac(f (x), g (x)) = lim_(x arrow.r a +) frac(f' (c (x)), g' (c (x))) = lim_(x arrow.r a +) frac(f' (x), g' (x)) . $
同様にして$[x , a] subset I$を満たす点$x$を考えることで$x arrow.r a -$に対する式も得られて、この定理の証明が完成する。~◻

]
#block[
$a$を開区間$I$の内点、$f$,
$g$は\$I\\setminus\\lrset{a}\$上の連続関数で\$I\\setminus\\lrset{a}\$上で微分可能であり各\$x \\in I\\setminus\\lrset{a}\$に対して$g' (x) eq.not 0$とする。
ここで、$x arrow.r a$で$f (x) arrow.r + oo$,
$g (x) arrow.r + oo$であり、$frac(f' (x), g' (x))$が収束するならば、$frac(f (x), g (x))$も収束して
$ lim_(x arrow.r a) frac(f (x), g (x)) = lim_(x arrow.r a) frac(f' (x), g' (x)) $
が成り立つ。

]
#block[
この定理は$a = plus.minus oo$のときでも同様のものが成り立つ。

]
この定理の証明は難しく極限の定義つまり$epsilon$論法までさかのぼる必要がある。

#block[
#emph[Proof.]
$epsilon > 0$を固定すると、$delta > 0$が存在して任意の$a < x lt.eq a + delta$に対して\$\\abs{\\frac{f\'(x)}{g\'(x)}-l} \< \\varepsilon\$である。
ここで、$a < x < y < a + delta$なる点$x , y in I$を考え、$[x , y]$にコーシーの平均値を用いれば、ある$x < c < y$が存在して
$ frac(f' (c), g' (c)) = frac(f (y) - f (x), g (y) - g (x)) $
つまり変形して、
$ frac(f (x), g (x)) = frac(f' (c), g' (c)) frac(1 - frac(g (y), g (x)), 1 - frac(f (y), f (x))) $
が成り立つ。
ここで、先に$x arrow.r a +$とすることを考えると、$f (x) arrow.r + oo$,
$g (x) arrow.r + oo$であることから、極限が存在すれば
$ lim_(x arrow.r a) frac(f (y), g (y)) = lim_(x arrow.r a +) frac(f' (c (x , y)), g' (c (x , y))) . $
次いで、$y arrow.r a +$とすれば$c arrow.r a +$より、
$ lim_(x arrow.r a) frac(f (y), g (y)) = lim_(x arrow.r a +) frac(f' (x), g' (x)) . $
左極限についても同様にして、この定理の証明が完成する。~◻

]
== リプシッツ連続関数
<リプシッツ連続関数>
微分と結びついた連続性の概念としてリプシッツ連続性がある。
その定義は以下のとおりである。

#block[
$f$を区間$I$上の関数とする。
ここで、$f$に対して次を満たす実数定数$L$が存在するとき、$f$はリプシッツ連続あるいは$L$-リプシッツ連続という。

#quote(block: true)[
任意の$x , y in I$に対して$lr(|f (x) - f (y)|) lt.eq L lr(|x - y|)$が成り立つ。
]

]
#block[
定数関数$f (x) = c$は$0$-リプシッツ連続であり、
一次関数$f (x) = x$は$1$-リプシッツ連続である。
しかしながら二次関数$f (x) = x^2$はリプシッツ連続でない。
これは$lr(|f (x) - f (y)|) = lr(|x + y|) lr(|x - y|)$であり、$L$をいくら大きく設定しても$x , y$が大きいと$lr(|x + y|)$がそれを超えてしまうためである。

]
#block[
リプシッツ連続な関数はすべて連続関数である。

]
次に示すようにリプシッツ連続であることの十分条件は微分導関数が有界であることである。

#block[
$f$を区間$I$上の連続関数ですべての内点$x$で微分可能とする。
ここで、微分導関数$f'$が有界のとき、$f$はリプシッツ連続である。
より詳しくは実数$L$が存在して全ての内点$x$に対して$lr(|f ' (x)|) lt.eq L$のとき、$f$は$L$-リプシッツ連続である。

]
#block[
#emph[Proof.]
$x , y in I$を取ると、中間値の定理より$lr(|f (x) - f (y)|) = lr(|f ' (c)|) lr(|x - y|)$となる$c$が存在するので、$lr(|f (x) - f (y)|) lt.eq L lr(|x - y|)$である。~◻

]
#block[
このではこのことをもとに$n = 1 , 2 , 3 , dots.h.c$と$x , y in bb(R)$に対して不等式
$ lr(|sin^n x - sin^n y|) lt.eq lr(|x^n - y^n|) $ が成立することを示す。

まず$n = 1$の時は正弦関数$sin$の$1$-リプシッツ連続性に他ならず、
\$\$\\abs{\\dv{x}(\\sin x)} = |\\cos x| \\le 1\$\$ より成立する。

一般の$n$に対しては$x$, $y$をそれぞれ$x^(1 / n)$,
$y^(1 / n)$で置き換えて$f (x) = sin^n x^(1 / n)$が$\[ 0 , + oo \)$で$1$-リプシッツ連続であることを示せばよい。
そこで微分導関数を計算すると$x in (0 , + oo)$に対して、
\$\$f\'(x) = n\\sin^{n-1}x^{\\frac{1}{n}}\\cos x^{\\frac{1}{n}}\\frac{1}{n}x^{\\frac{1}{n}-1} = \\qty(\\frac{\\sin x^{\\frac{1}{n}}}{x^{\\frac{1}{n}}})^{n-1}\\cos x^{\\frac{1}{n}}\$\$
ここですでに示した$n = 1$の場合で$y = 0$とした時の$lr(|sin x|) lt.eq lr(|x|)$を用いれば、$lr(|f ' (x)|) lt.eq 1$がわかりほしかった不等式が示された。

]
== 二階微分
<二階微分>
微分導関数は関数でありもう一回微分できる可能性がある。
そのようにして微分の微分をすることを二階微分という。

#block[
$f$を開集合$X$上で定義された実数値関数であり微分導関数$f'$が存在するとする。
ここで、$X$のすべての点で微分導関数$f'$が微分可能であるとき$f$は$X$上#emph[二回微分可能];であるといい、微分導関数$f'$の微分導関数を#emph[二階微分導関数];という。
$y = f (x)$の二階微分導関数を
\$\$f\'\', \\quad \\dv\[2\]{f}{x}, \\quad \\dv\[2\]{x}(f(x)), \\quad y\'\', \\quad \\dv\[2\]{y}{x}\$\$
などで表す。
$f''$を二階微分導関数と呼ぶのに対応して、微分導関数$f'$を一階微分導関数と呼ぶことがある。

]
#block[
$f (x) = x^n$とすると、 $ f' (x) = n x^(n - 1) , $
$ f'' (x) = n (n - 1) x^(n - 2) . $

]
#block[
$f (x) = x lr(|x|)$とすると、 $ f' (x) = 2 lr(|x|) $
だが、これは$x = 0$で微分可能でない。
つまり一階微分導関数が存在しても二階微分導関数は存在しないことがある。

]
== 凸関数・凹関数
<凸関数凹関数>
#block[
$f$を区間$I$上で定義された実数値関数とする。

- 任意の$0 lt.eq p lt.eq 1$と$x , y in I$に対して
  $ f (p x + (1 - p) y) lt.eq p f (x) + (1 - p) f (y) $
  が成り立つとき、$f$は$I$上の凸関数という。

- 任意の$0 lt.eq p lt.eq 1$と$x , y in I$に対して
  $ f (p x + (1 - p) y) gt.eq p f (x) + (1 - p) f (y) $
  が成り立つとき、$f$は$I$上の凹関数という。

]
この凸関数の定義の条件はグラフ$y = f (x)$が下に凸であることを表している。
漢字では凸は上に凸であるように見えるが、用語としては逆なので注意する。

凸関数・凹関数は必ず連続関数であることに注意する。

#block[
絶対値関数\$f(x) = \\abs{x}\$は$bb(R)$上の凸関数である。
実際、三角不等式より
\$\$\\abs{p x+(1-p)y} \\le \\abs{p x}+\\abs{(1-p)y} = p\\abs{x}+(1-p)\\abs{y}\$\$
である。

]
凸関数であることの特徴づけの一つは二階微分が非負であることである。

#block[
<t_convex>
$f$を開区間$I$上で定義された実数値関数で$I$上二回微分可能であるとする。

- 以下の条件は同値である。

  + $f$が$I$上の凸関数である。

  + $x < z < y$を満たす任意の$x , y , z in I$に対して、
    $ frac(f (z) - f (x), z - x) lt.eq frac(f (y) - f (x), y - x) lt.eq frac(f (y) - f (z), y - z) $
    が成り立つ。

  + $f'$は$I$上単調増加である。

  + 任意の$x in I$に対して$f'' (x) gt.eq 0$が成り立つ。

- 以下の条件は同値である。

  + $f$が$I$上の凹関数である。

  + $x < z < y$を満たす任意の$x , y , z in I$に対して、
    $ frac(f (z) - f (x), z - x) gt.eq frac(f (y) - f (x), y - x) gt.eq frac(f (y) - f (z), y - z) $
    が成り立つ。

  + $f'$は$I$上単調減少である。

  + 任意の$x in I$に対して$f'' (x) lt.eq 0$が成り立つ。

]
#block[
#emph[Proof.] 凸関数の方について示す。

1.ならば2.について、一つ目の不等号は
$ f (z) lt.eq frac(z - x, y - x) (f (y) - f (x)) + f (x) = frac(y - z, y - x) f (x) + frac(z - x, y - x) f (y) $
と同値で、$p = frac(y - z, y - x)$とおくと凸関数の条件式$f (p x + (1 - p) y) lt.eq p f (x) + (1 - p) f (y)$に他ならない。
もう一つの不等号は
$ f (z) lt.eq - frac(y - z, y - x) (f (y) - f (x)) + f (y) = frac(y - z, y - x) f (x) + frac(z - x, y - x) f (y) $
と同値で同様に成り立つ。

2.ならば1.について、$0 < p < 1$と$x < y$を満たす$x , y in I$に対して#link(<e_convex>)[\[e\_convex\]];を示せばよい。
$z = p x + (1 - p) y$とおくと、
$ f (p x + (1 - p) y) = f (z) lt.eq frac(y - z, y - x) f (x) + frac(z - x, y - x) f (y) = p f (x) + (1 - p) f (y) $
である。

2.ならば3.について、$z arrow.r x$あるいは$z arrow.r y$とすることで、
$ f' (x) lt.eq frac(f (y) - f (x), y - x) lt.eq f' (y) $
を得て、$f'$は単調である。

3.ならば2.について、1.ならば2.のところでわかるように$frac(f (z) - f (x), z - x) lt.eq frac(f (y) - f (x), y - x)$と$frac(f (y) - f (x), y - x) lt.eq frac(f (y) - f (z), y - z)$は同値で、片方が成り立たないとするともう片方も成り立たず、
$ frac(f (z) - f (x), z - x) > frac(f (y) - f (x), y - x) > frac(f (y) - f (z), y - z) $
となる。
ここで、平均値の定理より$f' (a) = frac(f (z) - f (x), z - x)$となる$x < a < z$と$f' (b) = frac(f (y) - f (z), y - z)$となる$z < b < y$が存在する。
仮定より$f' (a) lt.eq f' (b)$なので、矛盾が導かれ最終的に2.が成立することがわかる。

3.と4.の同値性は定理@t_diff_monotoneからすぐわかる。

凹関数の方は同様なので詳細は省略する。~◻

]
#block[
$f$が二回微分可能でなくとも一回微分可能であれば、1., 2.,
3.の同値性が示される。 $f$が一回微分可能でなくとも1.,
2.の同値性が示される。

]
#block[
- 二乗関数$f (x) = x^2$は$f'' (x) = 1 > 0$なので、$bb(R)$上の凸関数である。

- 指数関数$f (x) = e^x$は$f'' (x) = e^x > 0$なので、$bb(R)$上の凸関数である。

- 対数関数$f (x) = log x$は$f'' (x) = - 1 / x^2 < 0$なので、$bb(R)$上の凹関数である。

]
今後は微分可能とは限らない凸関数・凹関数について詳しく見ていく。

#block[
$f$を区間$I$上の実数値関数、$a$を$I$上の点とする。

- $f$が凸関数のとき、\$x \\in I\\setminus\\lrset{a}\$に対する関数$frac(f (x) - f (a), x - a)$は単調増加である。
  つまり$x lt.eq y$を満たす任意の\$x, y \\in I\\setminus\\lrset{a}\$に対して、
  $ frac(f (x) - f (a), x - a) lt.eq frac(f (y) - f (a), y - a) $
  が成り立つ。

- $f$が凹関数のとき、\$x \\in I\\setminus\\lrset{a}\$に対する関数$frac(f (x) - f (a), x - a)$は単調減少である。
  つまり$x lt.eq y$を満たす任意の\$x, y \\in I\\setminus\\lrset{a}\$に対して、
  $ frac(f (x) - f (a), x - a) gt.eq frac(f (y) - f (a), y - a) $
  が成り立つ。

]
#block[
#emph[Proof.] 凸関数の方について示す。
凸関数の特徴づけ（命題@t_convexの1.と2.とその注意参照）を使う。

- $x lt.eq y < a$の場合、特徴づけより$frac(f (x) - f (a), x - a) = frac(f (a) - f (x), a - x) lt.eq frac(f (a) - f (y), a - y) = frac(f (y) - f (a), y - a)$。

- $x < a < y$の場合、特徴づけより$frac(f (x) - f (a), x - a) = frac(f (a) - f (x), a - x) lt.eq frac(f (y) - f (a), y - a)$。

- $a < x lt.eq y$の場合、特徴づけより$frac(f (x) - f (a), x - a) lt.eq frac(f (y) - f (a), y - a)$。

よってどの場合もほしかった不等式が成り立つ。

凹関数の方は同様なので詳細は省略する。~◻

]
凸関数・凹関数に対して次のような直線を引くことができる。

#block[
<t_convex_supp> $f$を区間$I$上の実数値関数、$a$を$I$上の点とする。

- $f$が凸関数のとき、実数$k$が存在して任意の$x in I$に対して$f (x) gt.eq f (a) + k (x - a)$が成立する。

- $f$が凹関数のとき、実数$k$が存在して任意の$x in I$に対して$f (x) lt.eq f (a) + k (x - a)$が成立する。

]
#block[
#emph[Proof.] 凸関数の方について示す。
前の命題より任意の$x < a < y$に対して$frac(f (x) - f (a), x - a) lt.eq frac(f (y) - f (a), y - a)$が成り立つ。
ここで命題@t_supinf_indepより
$ frac(f (x) - f (a), x - a) lt.eq k lt.eq frac(f (y) - f (a), y - a) $
となる実数$k$が存在する。
あとは式を整理すればこの$k$こそほしかった数であることがわかる。

凹関数の方は同様なので詳細は省略する。~◻

]
#block[
$f$が微分可能な時はこの直線は$f (x)$の$x = a$での接線とすればよい。

]
凸関数・凹関数に関する有名な不等式として次のイェンセンの不等式がある。

#block[
$f$を区間$I$上の実数値関数とする。
$N = 1 , 2 , 3 , dots.h.c$個の$a_1 , dots.h.c , a_N$を$I$上の点、$0 lt.eq p_1 , dots.h.c , p_N lt.eq 1$を$p_1 + dots.h.c + p_N$を満たす数とする。

- $f$が凸関数のとき、
  $ f (p_1 a_1 + dots.h.c + p_N a_N) lt.eq p_1 f (a_1) + dots.h.c + p_N f (a_N) $
  が成り立つ。

- $f$が凹関数のとき、
  $ f (p_1 a_1 + dots.h.c + p_N a_N) gt.eq p_1 f (a_1) + dots.h.c + p_N f (a_N) $
  が成り立つ。

]
この不等式はグラフ$y = f (x)$上の点$(a_1 , f (a_1)) , dots.h.c , (a_N , f (a_N))$がなす多角形の重心がグラフより上側（凸関数の場合）になることを示していて、$p_1 , dots.h.c , p_N$は重みを表す。
$N = 2$の場合は凸関数・凹関数の定義に他ならない。
イェンセンの不等式の証明は数学的帰納法によって簡単にできるが、後で積分版イェンセンの不等式を示すために前の命題を用いたものを紹介する。

#block[
#emph[Proof.] 凸関数の方について示す。
命題@t_convex_suppより$f (x) gt.eq f (a) + k (x - a)$を満たす実数$k$が存在する。
ここで$a = p_1 a_1 + dots.h.c + p_N a_N$、$x = a_n$
($n = 1 , dots.h.c N$)として$p_n$倍して足し合わせると、$p_1 + dots.h.c + p_N = 1$に注意して、
$ sum_(n = 1)^N p_n f (a_n) gt.eq sum_(n = 1)^N p_n (f (a) + k (a_n - a)) = f (a) + k (sum_(n = 1)^N p_n a_n - a) = f (a) . $
よってほしかった不等式を得る。

凹関数の方は同様なので詳細は省略する。~◻

]
この不等式を様々な凸関数・凹関数に当てはめることでいろいろな不等式を得ることができる。

#block[
対数関数$f (x) = log x$
($x > 0$)は$f'' (x) = - 1 / x^2 < 0$より凹関数である。
ここからイェンセンの不等式を考えると、$a_1 , dots.h.c , a_N > 0$、$p_1 = dots.h.c = p_N = 1 / N$として
$ log (frac(a_1 + dots.h.c + a_N, N)) gt.eq 1 / N (log a_1 + dots.h.c + log a_N) = log (root(N, a_1 dots.h.c a_N)) $
よって、
$ frac(a_1 + dots.h.c + a_N, N) gt.eq root(N, a_1 dots.h.c a_N) $
を得る。
この左辺は相加平均（算術平均）、右辺は相乗平均（幾何平均）と呼ばれ、今回の不等式は正の数$a_1 , dots.h.c , a_N$に対して相乗平均より相加平均の方が常に大きいことを示していて相加平均・相乗平均の関係式と呼ばれる。

]
== 高階微分
<高階微分>
== テイラーの定理
<テイラーの定理>
== 漸近展開
<漸近展開>
