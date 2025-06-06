
= 一様分布論

#import "deps/theorem.typ": thmrules, theorem, lemma, proposition, corollary, definition, example, remark, proof
#show: thmrules.with()

#import "@preview/physica:0.9.3": dd

== 一様分布定理

この章では一様分布定理と呼ばれる今までとは少し趣の異なる極限に関する定理を紹介する。
内容的には高度なものになるので読み物としてみた方がよいかもしれない。

その一様分布定理を述べるために次の用語を定義する。

#definition([一様分布列])[
各$n$に対して$x_n in \[0, 1\)$を満たす数列$(x_n)_(n = 1)^oo$が$\[0, 1\)$で_一様分布_するとは任意の$0 <= a <= b <= 1$に対して
$
lim_(N -> oo) 1/N \#{ n = 1, dots, N mid(|) a <= x_n < b } = b-a
$ <e_equidist>
が成り立つことである。
ただし、有限集合$A$に対して、自然数として定まる元の個数を$\# A$と書く。
]

この条件は区間$\[a, b\)$に入る$x_n$の割合が$b-a$であるとみなせる。
以降では$n = 1, dots, N$をしばしば$n <= N$と表現する。

#remark[
$\[0, 1\)$上の数列$(x_n)_(n = 1)^oo$が一様分布することは、
各$n$に対して$0 <= a_n <= b_n <= 1$である数列$(a_n)$, $(b_n)$であって$n -> oo$で$a_n -> a$, $b_n -> b$となるものについて
$
lim_(N -> oo) 1/N \#{ n <= N mid(|) a_n <= x_n < b_n } = b-a
$
が成り立つことと同値である。
実際、こちらの方が強い条件になっていて、逆については任意の$epsilon > 0$に対して、ある$k = 1, 2, 3, dots$が存在して任意の自然数$n >= k$に対して$abs(a_n-a) < epsilon$, $abs(b_n-b) < epsilon$が成り立つことから、$N = 1, 2, 3, dots$に対して
$
&abs(\#{ n <= N mid(|) a_n <= x_n < b_n }-\#{ n <= N mid(|) a <= x_n < b }) \
&quad <= k+\#{ k < n <= N mid(|) a-epsilon <= x_n < a+epsilon or b-epsilon <= x_n < b+epsilon } \
&quad <= k+\#{ n <= N mid(|) a-epsilon <= x_n < a+epsilon }+\#{ n <= N mid(|) b-epsilon <= x_n < b+epsilon }.
$
よって、$N$で割って$N -> oo$とすると右辺は$4 epsilon$に収束する。
$epsilon$は任意なので、逆がいえた。
]

$\[0, 1\)$という区間は実数$x$の床（整数部分）$floor(x)$を引いた小数部分${x}$の属する集合として現れた。
そこで一般の実数列$(x_n)$に対しても小数部分の列$({x_n})$が一様分布するかどうかで一様分布列の概念を導入する。
なお、${x}$という記号は集合の記号と紛らわしいがよく使われるので本テキストでも採用し文脈によってどちらの意味か判断される。

#remark[
小数部分の演算について任意の実数$x, y$に対して、${x} >= {y}$である場合は${x-y} = {x}-{y}$であり、そうでない場合は${x-y} = {x}-{y}+1$であることに注意する。
]

以上の準備の下で一様分布定理は次のように表現される。

#theorem([一様分布定理])[
$alpha$を無理数で$beta$を実数とするとき、数列$({alpha n+beta})_(n = 1)^oo$は一様分布する。
]

$\[0, 1\)$の$0$と$1$と引っ付けて輪っかのように見なすと、$({alpha n+beta})_n$というのは輪っかをぐるぐるまわる感じになっており回転と呼ばれ$alpha$は角度のような役割を果たす。

この定理において$alpha$が無理数であることが非常に重要で、例えば$alpha$が有理数$1/p$、$beta = 0$の場合は$n$が$p$増えるともとの位置に戻るため、${alpha n+beta}$の取りうる値は${ 0/p, dots, (p-1)/p }$となり一様分布にはならない。
無理数の場合は表現が正確ではないが分母$p$が無限大のような状況になっていて、
$({alpha n+beta})_n$は$\[0, 1\)$上均等にまんべんなく分布するということを定理は主張している。

一様分布定理と関連の深い話題として次のクロネッカーの稠密定理がある。

#theorem([クロネッカーの稠密定理])[
$alpha$を無理数で$beta$を実数とするとき、数列$({alpha n+beta})_(n = 1)^oo$は$\[0, 1\)$で稠密である、
つまり任意の$0 <= a < b <= 1$に対して$a <= {alpha n+beta} < b$を満たす$n = 1, dots$が存在する。
]

一様分布するならば自動的に稠密であるので、クロネッカーの稠密定理は一様分布定理より弱い内容を主張する定理である。
しかしながら、今回の一様分布定理の証明ではクロネッカーの稠密定理を利用するので証明を与える。

#proof([クロネッカーの稠密定理の証明])[
まず、$N = ceil(2/(b-a))$とするとある$l = 0, dots, N-1$が存在して$a <= l/N < (l+1)/N <= b$とできることに注意する。
この$N = 1, 2, 3, dots$に対して次の議論をする。
つまり区間$\[0, 1\)$を$N$等分すると$({alpha n})_(n = 1)^(N+1)$のうち$2$つは同じ小区間の中に入り$i < j$とおく。
このとき$alpha$が無理数であることから、$0 < |{alpha j}-{alpha i}| < 1/N$である。
よって、$k$を$j-i$とすると$0 < {alpha k} < 1/N$または$1-1/N < {alpha k} < 1$であり、
これを何倍かすると$a <= l/N <= {n alpha k+beta} < (l+1)/N <= b$となる$n$が存在するので稠密性が示された。
]

一様分布定理の証明はワイルの証明が知られているがここでは別の証明を与える。
まず、次の補題を準備する。

#lemma[
$(x_n)_(n = 1)^oo$を実数列とする。
数列$({x_n})$が一様分布することと
任意の実数$a$に対して
$
lim_(N -> oo) (1/N sum_(n <= N) {x_n}-1/N sum_(n <= N) {x_n+a}) = 0
$
が成り立つことは同値である。
]

#proof[
まず一様分布であることの定義より、$({x_n})$が一様分布することは任意の$0 <= b <= 1$に対して
$
lim_(N -> oo) 1/N \#{ n <= N mid(|) x_n < b } = b
$
が成り立つことと同値であることに注意する。
実数$b$に対して、
$
1/N sum_(n <= N) {x_n-b}
= 1/N sum_{{x_n} >= b}({x_n}-{b})+1/N sum_{{x_n} < b}({x_n}-{b}+1)
= 1/N sum_(n <= N) {x_n}+1/N \#{ n <= N mid(|) x_n < b }-b.
$
ここから補題が成立することがわかる。
]

#proof([一様分布定理の証明])[
$0 <= a < 1$と$epsilon > 0$を固定する。
$({alpha n})_(n = 1)^oo$の稠密性は示されているので、
$
a <= {alpha k} < a+epsilon
$
となる$k = 1, 2, 3, dots$が存在する。
ここで任意の整数$n$に対して
$
{alpha n+beta} < {alpha (n-k)+beta+a}+epsilon
$
を示す。 実際、
$
{alpha (n-k)+beta+a}
= {(alpha n+beta)-(alpha k-a)}
>= {alpha n+beta}-{alpha k-a}
$
で、$a <= {alpha k} < a+epsilon$より、
$
{alpha k-a} < {alpha k}-a < epsilon
$
から従う。
よって、
$
sum_(n <= N) {alpha n+beta}-sum_(n <= N) {alpha n+beta+a}
&= sum_(n <= k) {alpha n+beta}+sum_(k < n <= N) {alpha n+beta}-sum_(n <= N-k) {alpha n+beta+a}-sum_(N-k < n <= N) {alpha n+beta+a} \
&<= k+(N-k)epsilon.
$
したがって、
$
limsup_(N -> oo) (1/N sum_(n <= N) {alpha n+beta}-1/N sum_(n <= N) {alpha n+beta+a}) <= epsilon.
$
また、$a-epsilon < {alpha k+beta} <= a$として$k$を取り同様のことをすれば
$
liminf_(N -> oo) (1/N sum_(n <= N) {alpha n+beta}-1/N sum_(n <= N) {alpha n+beta+a}) >= -epsilon.
$
よって$epsilon$は任意であることと補題より一様分布定理が証明された。
]

次の命題は一様分布する数列に小さな修正を加えても一様分布であることを主張する。

#proposition[
$(x_n)$, $(y_n)$, $(c_n)$を実数列として各$n$に対して$abs(x_n-y_n) <= c_n$が成り立つとする。
ここで$(y_n)$が一様分布して$n -> oo$で$c_n -> 0$であるならば、$(x_n)$も一様分布する。
] <t_equidist_perturb>

#proof[
任意の実数$a$と各$n$に対して、もし${y_n+a}-c_n >= 0$ならば
$
{x_n+a} <= {y_n+a}+c_n
$
が成り立つことに注意する。
実際、$0 <= abs(x_n-y_n) <= c_n <= {y_n+a} < 1$であり、${x_n+a} > {y_n+a}+c_n$だとすると$c_n < 1-{y_n+a}$である。
ここで仮定から$y_n+a-c_n <= x_n+a <= y_n+a+c_n$で最左辺と最右辺の整数部分が等しくないとならないので、
$
{x_n+a} = {y_n+a+c_n} = {y_n+a}+c_n
$
である。
同様にして、もし${y_n+a}+c_n <= 1$ならば
$
{x_n+a} >= {y_n+a}-c_n
$
が成り立つ。
以上のことから、
$
abs(sum_(n <= N) {x_n+a}-sum_(n <= N) {y_n+a})
&<= sum_(n <= N) c_n+sum_({y_n+a} < c_n or {y_n+a} >= 1-c_n) abs({x_n+a}-{y_n+a}) \
&<= sum_(n <= N) c_n+\#{ n <= N mid(|) {y_n+a} < c_n }+\#{ n <= N mid(|) {y_n+a} >= 1-c_n }
$
となり、$N$で割って$N -> oo$とすると、$lim_(n -> oo) c_n = 0$より$lim_(N -> oo) 1/N sum_(n <= N) c_n = 0$であること（@t_average_conv）と$(y_n+a)$が一様分布することから右辺は$0$に収束する。
ここから$(x_n)$は$(y_n)$と同様に一様分布することがわかる。
]

また、一様分布の内容から次の拡張が得られる。

#proposition[
$f$を$\[0, 1\)$上の有界な実数値関数で$f(1) = f(0)$と拡張したときに$f$は$[0, 1]$上（リーマン）積分可能とする。
このとき$\[0, 1\)$上の一様分布する数列$(x_n)_(n = 1)^oo$に対して
$
lim_(N -> oo) 1/N sum_(n <= N) f(x_n) = integral_0^1 f (x) dd(x)
$ <e_equidist2>
が成り立つ。
]

#remark[
一様分布することの定義は$f$が次の_区間指示関数_
$
f(x) = chi_(\[a, b\)) (x)
= cases(
  1 & (x in \[ a, b) \),
  0 & (x in.not \[ a, b) \),
)
$
の場合に@e_equidist2 が成り立つということである。
]

#proof[
$epsilon > 0$を固定する。
リーマン積分可能であることから$f$に対して、いくつかの区間指示関数の定数倍の和であって
$
f_(-) (x) <= f(x) <= f_(+) (x) quad forall x in [0, 1],
quad integral_0^1 (f_(+) (x)-f_(-) (x)) dd(x) < epsilon
$
を満たす関数$f_(-)$, $f_(+)$が存在する。
$(x_n)$は一様分布するので区間指示関数の定数倍の和$f_(-)$, $f_(+)$に対して@e_equidist2 が成り立つことに注意して、
$
&liminf_(N -> oo) 1/N sum_(n <= N) f(x_n)
>= lim_(N -> oo) 1/N sum_(n <= N) f_(-) (x_n)
= integral_0^1 f_(-) (x) dd(x)
>= integral_0^1 f (x) dd(x)-epsilon, \
&limsup_(N -> oo) 1/N sum_(n <= N) f(x_n)
<= lim_(N -> oo) 1/N sum_(n <= N) f_(+) (x_n)
= integral_0^1 f_(+) (x) dd(x)
<= integral_0^1 f (x) dd(x)+epsilon.
$
ここで$epsilon$は任意なので、一般の$f$に対しても@e_equidist2 が成り立つことがわかった。
]

#remark[
今回の一様分布定理の証明では直接@e_equidist を、つまり区間指示関数$f$に対して@e_equidist2 を証明したが、
ワイルの方法は最初に和の計算ができる$f(x) = exp(2 pi i k x)$（$k$は$0$でない整数）に対して証明して、連続関数に拡張して区間指示関数と進めていく。
この証明法は複素数値の関数の積分やフーリエ解析の知識が必要になるため本テキストではこれ以上触れないが、様々な発展性があり重要である。
一方で今回の証明は@r_z15 を参考にした。
]

== 一様分布定理の応用：先頭の位の数

一様分布定理の「小数部分」が登場する話題が先頭の位の数である。
例えば$n = 1, 2, 3, dots$に対して$2^n$の先頭の位の数$a_n$を考えてみよう。
$2^n$を並べて書き出すと
#quote(block: true)[
$2$, $4$, $8$, $16$, $32$, $64$, $128$, $256$, $512$, $1024$, $2048$,
$4096$, $8192$, $16384$, $32768$, $65536$, $131072$, $262144$, $524288$,
$1048576$, $dots$
]
なのでその先頭の位の数$a_n$は
#quote(block: true)[
$2$, $4$, $8$, $1$, $3$, $6$, $1$, $2$, $5$, $1$, $2$, $4$, $8$, $1$,
$3$, $6$, $1$, $2$, $5$, $1$, $dots$
]
となる。

この数列の中で数字$d = 1, 2, 3, 4, 5, 6, 7, 8, 9$が現れる頻度を計算するときに活躍するのが一様分布定理である。
なお、上に列挙した範囲では$a_n$は$2, 4, 8, 1, 3, 6, 1, 2, 5, 1$の繰り返しに見えるが実際には$2^46 = 70368744177664$なので$a_n$は$7$や$9$の値を取りうることに注意する。

一般に正の整数（または正の実数）$y$について桁数を$l in ZZ$、先頭の位の数を$d = 1, dots, 9$とすると
$
d times 10^(l-1) <= y < (d+1) times 10^(l-1)
$
なので、$10$を底とする対数（常用対数）をとると
$
log_10 d <= log_10 y-(l-1) < log_10 (d+1)
$
となる。
ここから$y$の最上位の数$a$が$d$となる条件は
$
log_10 d <= {log_10 y} < log_10 (d+1)
$
となることであり、$x in \[0, 1\)$に対して関数$D$の値を$log_10 d <= x < log_10 (d+1)$の場合に$D (x) = d$として定義すると
$a = D({log_10 y})$となる。

$2^n$の問題に戻ると
$
a_n = D({n log_10 2})
$
である。
ここで$log_10 2$は無理数なので、${n log_10 2}$は$\[0, 1\)$上一様分布する。
$a_n$のうち$d = 1, dots, 9$の割合を
$
lim_(N -> oo) 1/N \#{ n <= N mid(|) a_n = d }
$
として考えると、この値は一様分布定理より
$
lim_(N -> oo) 1/N \#{ n <= N mid(|) a_n = d }
= lim_(N -> oo) 1/N \#{ n <= N mid(|) log_10 d <= {n log_10 2} < log_10 (d+1) }
= log_10 (d+1)-log_10 d
$
となることがわかる。
また、$a_n$の期待値に相当する
$
lim_(N -> oo) 1/N sum_(n <= N) a_n
$
は
$
lim_(N -> oo) 1/N sum_(n <= N) a_n
= lim_(N -> oo) 1/N sum_(n <= N) D({n log_10 2})
= integral_0^1 D(x) dd(x)
= 9-log_10 9!
$
である。
以上の値を計算しまとめたのが次の@f_benford_law である。

#figure(
  align(center)[#table(
    columns: 2,
    align: (center,center,),
    table.header([$d$], [割合],),
    table.hline(),
    [$1$], [$0.30102999566398114 dots$],
    [$2$], [$0.1760912590556813 dots$],
    [$3$], [$0.12493873660829985 dots$],
    [$4$], [$0.09691001300805646 dots$],
    [$5$], [$0.07918124604762478 dots$],
    [$6$], [$0.06694678963061318 dots$],
    [$7$], [$0.057991946977686726 dots$],
    [$8$], [$0.05115252244738144 dots$],
    [$9$], [$0.04575749056067513 dots$],
    [期待値], [$3.440236967123207 dots$],
  )]
 , caption: [先頭の位の数の分布]
 , kind: table
) <f_benford_law>

この話題の興味深いところは一様分布すれば底$2$は別の数（$3$や$4$など常用対数が無理数になる数）でも同じ値になることである。
さらには$2^n$の代わりにフィボナッチ数の列$F_n$でも割合や期待値は同じ値になる。
なお、フィボナッチ数は
#quote(block: true)[
$1$, $1$, $2$, $3$, $5$, $8$, $13$, $21$, $34$, $55$, $89$, $144$,
$233$, $377$, $610$, $987$, $1597$, $2584$, $4181$, $6765$, $10946$,
$17711$, $dots$
]
でその最上位の位の数は
#quote(block: true)[
$1$, $1$, $2$, $3$, $5$, $8$, $1$, $2$, $3$, $5$, $8$, $1$, $2$, $3$,
$6$, $9$, $1$, $2$, $4$, $6$, $1$, $1$, $dots$
]
である。

これはフィボナッチ数の一般項が
$
F_n = 1/sqrt(5) (((1+sqrt(5))/2)^n-((1-sqrt(5))/2)^n)
$
のように計算され、主要な部分の底$(1+sqrt(5))/2$の常用対数が無理数であることによる。
より詳しくは$alpha = (1+sqrt(5))/2$, $beta = (1-sqrt(5))/2$とすると、
任意の$x > -1$に対して不等式$log(1+x) <= x$が成り立つことに注意して、
$
abs(log_10 F_n-(n log_10 alpha-log_10 sqrt(5)))
<= log_10 (1+abs(beta/alpha)^n)
<= 1/log(10) abs(beta/alpha)^n
$
で、$(n log_10 alpha-log_10 sqrt(5))_n$は一様分布し、$lim_(n -> oo) abs(beta/alpha)^n = 0$なので、$(log_10 F_n)_n$も一様分布することがわかる。

このように様々な数列の最上位の位の数は@f_benford_law で示されたある特定の分布に従う。
このことはより複雑な機構によって決まると考えられる現実世界の様々な数にもみられてベンフォードの法則と呼ばれている。
