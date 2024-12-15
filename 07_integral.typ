= 積分
<積分>
== 積分の導入
<積分の導入>
有界閉区間$[a , b]$上の関数$f (x)$が与えられたときに、特に$f (x)$が常に正のとき、$x$軸と$y = f (x)$、$x = a$および$x = b$で囲まれた部分の「面積」を計算するにはどうすればよいだろうか。
この疑問から出発する数学の理論が#emph[積分];である。
もし$f$が定数関数ならば囲まれた部分は長方形になるので「たてかけるよこ」で面積が計算できる。
$f$が一次関数の場合は囲まれた部分は台形になるので台形の面積の公式が使えるだろう。
しかしながらより一般の関数の場合はたとえ二次関数であっても一筋縄ではいかないことがわかる。
これは面積（積分）を考える際にどうしても無限や極限の概念が必要になるためである。
以下で展開するのはこの問題に解決の方法を与えた理論で発案者の名を取ってリーマン積分と呼ばれる。
ちなみに積分の理論はリーマン積分の他に積分の定義の仕方によってルベーグ積分などいろいろあるが、ここでは歴史上最初の積分の厳密な定式化であるリーマン積分について紹介する。

面積を計算する時の基礎は先ほど述べた長方形の面積の公式「たてかけるよこ」であり、
これは$f$が定数関数の$f (x) = c$である場合$x$軸と$y = c$、$x = a$および$x = b$で囲まれた部分（長方形）の「面積」が$c (b - a)$で計算できることに対応する。
ここで、$c$が負の場合も$c (b - a)$は負の値として定義できることに注意する。

ここから一気に一般の関数$f (x)$を考える。
リーマン積分の基礎的な考え方は区間$[a , b]$を細かい区間に分割することである。

そのためにまず、区間$[a , b]$の分割を定式化する。
区間$[a , b]$の#emph[分割];$P$とは
$ a = p_0 lt.eq p_1 lt.eq p_2 lt.eq p_3 lt.eq dots.h.c lt.eq p_N = b $
を満たす点の並び$p_0 , p_1 , p_2 , p_3 , dots.h.c , p_N$のことである($N = 1 , 2 , 3 , dots.h.c$)。
つまり、区間$[a , b]$を#emph[小区間];$[p_0 , p_1] , [p_1 , p_2] , [p_2 , p_3] , dots.h.c , [p_(N - 1) , p_N]$に分割している。
また、#emph[分割の大きさ];を小区間の大きさの中で最も大きいもの、つまり
\$\$\\abs{P} = \\max\\lrset{ p\_n-p\_{n-1} \\mid n = 1, 2, 3, \\cdots, N }\$\$
とする。

ここで小区間$[p_(n - 1) , p_n]$
($n = 1 , 2 , 3 , dots.h.c , N$)において$x$軸と$y = f (x)$、$x = p_(n - 1)$および$x = p_n$で囲まれた部分を考えると一般には長方形とは限らないが、分割の大きさが小さいと長方形とみなしても全体の面積を計算するのには差し支えないと考える。
そこで点$t_n in [p_(n - 1) , p_n]$をとりあえずは好きにとって、長方形の「たて」に相当するとして$f (t_n)$を採用し、（たてに細長の）長方形の面積を$f (t_n) (p_n - p_(n - 1))$とする。
この時の$t_n$を小区間$[p_(n - 1) , p_n]$の#emph[代表点];という。
これらの面積を足し合わせて得られる全体の面積
$ sum_(n = 1)^N f (t_n) (p_n - p_(n - 1)) $
を$f$の区間$[a , b]$の分割$p_0 , p_1 , p_2 , p_3 , dots.h.c , p_N$と代表点$t_1 , t_2 , t_3 , dots.h.c , t_N$の#emph[リーマン和];という。

#emph[リーマン積分];はリーマン和の分割の大きさを$0$に近づけるときの極限として定義する。
より詳しくは分割$P$や代表点$t_n$の取り方によらず\$\\abs{P} \\to 0\$となるように分割の個数を$N arrow.r oo$とするときにリーマン和がある実数$l$に収束するならば関数$f$は区間$[a , b]$上で#emph[リーマン積分可能];といいその$l$を関数$f$の区間$[a , b]$上の#emph[定積分];といい$integral_a^b f (x) ⅆ x$と表す。
また、この時の関数$f$を#emph[被積分関数];という。
ただし、この表現だと「分割や代表点の取り方によらず」というあいまいな部分があり、上限・下限を用いたより正確で洗練された定義を後で導入する。

ひとまずはこれを定積分の定義として簡単な関数の積分を求めてみよう。
最初に考えるのは基礎的な関数である定数関数$f (x) = c$である。
この時、分割と代表点に対してリーマン和は
$ sum_(n = 1)^N f (t_n) (p_n - p_(n - 1)) = sum_(n = 1)^N c (p_n - p_(n - 1)) = c sum_(n = 1)^N (p_n - p_(n - 1)) = c (p_N - p_0) = c (b - a) $
となり、分割や代表点の取り方によらない値になっているので、定積分は
$ integral_a^b c ⅆ x = c (b - a) $
となり、長方形の面積の公式と等価である。

次に$f$が一次関数$f (x) = k x + m$のとき、いきなり一般の分割と代表点を考えるのは難しいので、
特殊な分割として区間$[a , b]$の$N = 1 , 2 , 3 , dots.h.c$等分つまり$p_n = a + n / N (b - a)$
($n = 0 , 1 , 2 , 3 , dots.h.c , N$)を代表点として小区間の右端点$t_n = p_n$
($n = 1 , 2 , 3 , dots.h.c , N$)をそれぞれ感がることにしよう。
この時、リーマン和は \$\$\\begin{aligned}
\\sum\_{n = 1}^N f(t\_n)(p\_n-p\_{n-1})
&= \\frac{1}{N}(b-a)\\sum\_{n = 1}^N f(a+\\frac{n}{N}(b-a))
= \\frac{1}{N}(b-a)\\sum\_{n = 1}^N k(a+\\frac{n}{N}(b-a))+m \\\\
% = \\frac{1}{N}(b-a)\\sum\_{n = 1}^N k a+m+\\frac{1}{N}k(b-a)n \\\\
&= \\frac{1}{N}(b-a)\\qty((k a+m)N+\\frac{1}{N}k(b-a)\\frac{1}{2}N(N+1)) \\\\
&= (b-a)\\qty((k a+m)+\\frac{1}{2}k(1+N^{-1})(b-a))
\\end{aligned}\$\$
となり、$N arrow.r oo$つまり分割を細かくすることを考えると、このリーマン和は
\$\$(b-a)\\qty((k a+m)+\\frac{1}{2}k(b-a)) = \\frac{1}{2}((k a+m)+(k b+m))(b-a)\$\$
に収束し、これは台形の面積の公式と等価である。
ただし、これはあくまで特殊な分割と代表点に対してしか示していないので、まだこれが定積分とは言えない。
しかしながらリーマン積分可能である十分条件を後でいくつか紹介し、それによれば一次関数は常にリーマン積分可能で上記の値が定積分である。
また、上記の計算方法は一般のリーマン積分可能な関数に適用でき、特殊な分割や代表点の取り方にもとづいて定積分を計算することを#emph[区分求積法];という。
例えば、
$ integral_a^b f (x) ⅆ x = lim_(N arrow.r oo) 1 / N (b - a) sum_(n = 1)^N f (a + n / N (b - a)) $
とする計算法である。

二次関数や$n$次関数に対しても区分求積法により定積分が計算できるが、リーマン和を計算する段階で式が複雑になりがちである。
そこで定積分の計算を微分との兼ね合いで容易に計算する手法が知られていて、これによれば積分の計算は被積分関数の原始関数や不定積分と呼ばれる関数を見つけることに帰着される。
この時に原理的な役割を果たすのが微分積分学の基本定理と呼ばれる定理になる。
この計算方法は非常に強力で様々な関数の定積分が計算できるようになる。
そのため区分求積法を反対に使って今までの知識では扱えなかった極限の問題を積分の問題に帰着させることもできたりする。

また、これまで定積分は定義の都合上有界閉区間上の有界関数、例えば連続関数を主に考えていたが、
応用上重要なガンマ関数やベータ関数を定義するには開区間や有界でない区間で定積分を考える必要がある。
つまり端点までは連続でなく発散している場合や無限遠方を考えたい場合などがある。
このような要求に対する積分の理論が広義積分であり、定積分が定義される関数の範囲の拡張を試みる。

この章では以上の流れで説明を進めていく。

== 上積分下積分と定積分
<上積分下積分と定積分>
$f (x)$を有界閉区間$[a , b]$上の有界な関数とする。
区間$[a , b]$の分割$P$を$a = p_0 lt.eq p_1 lt.eq p_2 lt.eq p_3 lt.eq dots.h.c lt.eq p_N = b$とする。
この時、リーマン和の代わりに次の#emph[上リーマン和];と#emph[下リーマン和];を考える。
$ overline(S) (f , P) = sum_(n = 1)^N sup_(x in [p_(n - 1) , p_n]) f (x) (p_n - p_(n - 1)) , quad underline(S) (f , P) = sum_(n = 1)^N inf_(x in [p_(n - 1) , p_n]) f (x) (p_n - p_(n - 1)) . $
$f$を有界な関数としているので、$overline(S) (f , P)$,
$underline(S) (f , P)$は無限大にならず実数値になることに注意する。

#block[
任意の分割$P$に対して、$inf_(x in [a , b]) f (x) (b - a) lt.eq underline(S) (f , P) lt.eq overline(S) (f , P) lt.eq sup_(x in [a , b]) f (x) (b - a)$。

]
#block[
#emph[Proof.]
これは$inf_(x in [a , b]) f (x) lt.eq inf_(x in [p_(n - 1) , p_n]) f (x) lt.eq sup_(x in [p_(n - 1) , p_n]) f (x) lt.eq sup_(x in [a , b]) f (x)$から自然に示される。~◻

]
ここから分割$P$を細かくすることを考える。
分割$P'$を$a = p'_0 lt.eq p'_1 lt.eq p'_2 lt.eq p'_3 lt.eq dots.h.c lt.eq p'_M = b$として、\$\\lrset{ p\_0, p\_1, p\_2, p\_3, \\cdots, p\_N } \\subset \\lrset{ p\'\_0, p\'\_1, p\'\_2, p\'\_3, \\cdots, p\'\_M }\$となっている時、分割$P'$は分割$P$の#emph[細分];という。

#block[
任意の分割$P$とその細分$P'$に対して、$overline(S) (f , P ') lt.eq overline(S) (f , P)$と$underline(S) (f , P) lt.eq underline(S) (f , P ')$が成り立つ。

]
#block[
#emph[Proof.]
まず、$overline(S) (f , P) lt.eq sup_(x in [a , b]) f (x) (b - a)$,
$inf_(x in [a , b]) f (x) (b - a) lt.eq underline(S) (f , P)$から、$P$が区間を複数に分けないような分割の時に成り立っていることに注意する。
一般の場合では細分は小区間ごとに分割したものをまとめていることからそれらを足し合わせると主張が成り立つことがわかる。~◻

]
#block[
任意の分割$overline(P)$と$underline(P)$に対して、$underline(S) (f , underline(P)) lt.eq overline(S) (f , overline(P))$が成り立つ。

]
#block[
#emph[Proof.]
これは分割$overline(P)$と$underline(P)$の点をまとめて並び替えなおして得られる分割を$P'$とすると、$P'$は$overline(P)$と$underline(P)$の細分になることから、
今までに示した二つの命題より
$ underline(S) (f , underline(P)) lt.eq underline(S) (f , P ') lt.eq overline(S) (f , P ') lt.eq overline(S) (f , overline(P)) $
が得られる。~◻

]
ここから$overline(P)$を固定したまま$underline(P)$についての上限を取ったのち$overline(P)$についての下限を取ることを考える。
積分の候補として次の上積分と下積分
$ overline(S) (f) = inf_P overline(S) (f , P) , quad underline(S) (f) = sup_P underline(S) (f , P) $
を導入すると以上の議論から $ underline(S) (f) lt.eq overline(S) (f) $
を得る。

#block[
関数$f$が有界閉区間$[a , b]$上で#emph[積分可能];あるいは#emph[可積分];であるとは上記の式において等号が成り立つ場合をいい、その時の等しい値$underline(S) (f) = overline(S) (f)$を関数$f$の区間$[a , b]$上の#emph[定積分];といい
$ integral_([a , b]) f (x) ⅆ x , quad integral_a^b f (x) ⅆ x $
などで表す。 また$a < b$に対して、
$ integral_b^a f (x) ⅆ x = - integral_a^b f (x) ⅆ x $ と定義する。

]
#block[
1点からなる区間の時は $ integral_a^a f (x) ⅆ x = 0 $
であることに注意する。

]
#block[
導入でも触れた通り定数関数$f (x) = c$は任意の有界閉区間で積分可能で
$ integral_a^b c ⅆ x = c (b - a) $ が成り立つ。

]
#block[
有界な関数$f (x)$を$x in [0 , 1]$に対して$x$が有理数のとき$f (x) = 1$で$x$が無理数のとき$f (x) = 0$と定義する。
この時任意の小区間$[p , q]$
($p < q$)に対して間に有理数と無理数が存在するので、$overline(S) (f , P) = 1$と$overline(S) (f , P) = 0$が成り立ち、この関数$f$は積分可能でない。

]
以下では積分可能であることの十分条件として主に単調関数と連続関数を紹介する。
まず、準備として次を示す。

#block[
$f$を有界閉区間$[a , b]$上の有界な関数とする。
この時、$f$が$[a , b]$上で積分可能であることの必要十分条件は、
分割の列$(P_n)$であって\$\\abs{P\_n} \\to 0\$かつ$overline(S) (f , P_n) - underline(S) (f , P_n) arrow.r 0$を満たすものが存在することである。

]
#block[
#emph[Proof.]
まず、上積分下積分が下限上限で定義されていることから分割の列$(overline(P)_n)$と$(underline(P)_n)$であって$overline(S) (f , overline(P)_n) arrow.r overline(S) (f)$と$underline(S) (f , underline(P)_n) arrow.r underline(S) (f)$を満たすものが存在することに注意する。
ここで各$n$に対して$overline(P)_n$と$underline(P)_n$をまとめて並び替えなおして必要があれば分割をさらに細かくすることで\$\\abs{P\_n} \\to 0\$となる分割の列$(P_n)$を作る。
この時$P_n$は$overline(P)_n$と$underline(P)_n$の細分になっているので、
$ overline(S) (f , P_n) - underline(S) (f , P_n) lt.eq overline(S) (f , overline(P)_n) - underline(S) (f , underline(P)_n) arrow.r overline(S) (f) - underline(S) (f) $
が成り立つ。
よって、$f$が積分可能であるときほしかった分割の列が得られた。

逆に$P_n$が存在するとき、
$ overline(S) (f) - underline(S) (f) lt.eq overline(S) (f , P_n) - underline(S) (f , P_n) arrow.r 0 $
となっていることから、$f$は積分可能である。~◻

]
#block[
$f$を有界閉区間$[a , b]$上の広義単調増加または広義単調減少な関数とする。
この時、$f$は$[a , b]$上で積分可能である。

]
#block[
#emph[Proof.] 議論はほぼ同じなので、広義単調増加の場合のみ示す。
関数の単調性から$f$の小区間$[p_(n - 1) , p_n]$での上限と下限は端点で達成するので、上リーマン和と下リーマン和は
$ overline(S) (f , P) = sum_(n = 1)^N f (p_n) (p_n - p_(n - 1)) , quad underline(S) (f , P) = sum_(n = 1)^N f (p_(n - 1)) (p_n - p_(n - 1)) $
となりその差は
$ overline(S) (f , P) - underline(S) (f , P) = sum_(n = 1)^N (f (p_n) - f (p_(n - 1))) (p_n - p_(n - 1)) $
となる。 これを評価すると
\$\$\\overline{S}(f, P)-\\underline{S}(f, P) \\le \\sum\_{n = 1}^N (f(p\_n)-f(p\_{n-1}))\\abs{P} = (f(b)-f(a))\\abs{P}\$\$
であり、分割を細かくすると右辺はいくらでも小さくできるので、最終的に$f$が可積分であることがわかる。~◻

]
#block[
$f$を有界閉区間$[a , b]$上の連続関数とする。
この時、$f$は$[a , b]$上で積分可能である。

]
証明のためには有界閉区間上の連続関数は一様連続に更新できることを思い出す（定理@t_unif_conti）。
また、ここでは連続性の度合いを使って一様連続性を書き下している。

#block[
#emph[Proof.]
$f$は有界閉区間$[a , b]$上の連続関数なので定理@t_unif_contiより$f$は$[a , b]$上の一様連続関数、つまり連続性の度合い$omega$が存在し任意の$x , y in [a , b]$に対して$lr(|f (x) - f (y)|) < omega (lr(|x - y|))$が成り立つ。
ここから小区間$[p , q] subset [a , b]$に対して、$[p , q]$上の連続関数$f$の最大点$x^(‾)$と最小点\$\\var{y}\$を取ると、
$ sup_(x in [p , q]) f (x) - inf_(x in [p , q]) f (x) = f (x^(‾)) - f (y^(‾)) lt.eq omega (lr(|x^(‾) - y^(‾)|)) lt.eq omega (q - p) $
である。 これを踏まえると上リーマン和と下リーマン和のその差は
\$\$\\overline{S}(f, P)-\\underline{S}(f, P)
\\le \\sum\_{n = 1}^N \\omega(p\_n-p\_{n-1})(p\_n-p\_{n-1})
\\le \\sum\_{n = 1}^N \\omega(\\abs{P})(p\_n-p\_{n-1})
= \\omega(\\abs{P})(b-a)\$\$ となる。
よって、分割を細かくすると右辺は$0$に収束するので、最終的に$f$が可積分であることがわかる。~◻

]
以降では定積分の性質をいくつか述べる。

#block[
区間$[a , b]$上で積分可能な関数$f$, $g$と実数の定数$c$に対して、
$ integral_a^b (f (x) + g (x)) ⅆ x = integral_a^b f (x) ⅆ x + integral_a^b f (x) ⅆ x , quad integral_a^b c f (x) ⅆ x = c integral_a^b f (x) ⅆ x $
が成り立つ。

]
#block[
#emph[Proof.]
和の上限はそれぞれの上限を取ったものの和で上から抑えられることから、
$ overline(S) (f + g , P) = sum_(n = 1)^N sup_(x in [p_(n - 1) , p_n]) (f (x) + g (x)) (p_n - p_(n - 1)) lt.eq overline(S) (f , P) + overline(S) (g , P) . $
同様にして
$ underline(S) (f + g , P) = sum_(n = 1)^N inf_(x in [p_(n - 1) , p_n]) (f (x) + g (x)) (p_n - p_(n - 1)) gt.eq underline(S) (f , P) + underline(S) (g , P) . $
したがって
$ underline(S) (f , P) + underline(S) (g , P) lt.eq underline(S) (f + g , P) lt.eq overline(S) (f + g , P) lt.eq overline(S) (f , P) + overline(S) (g , P) $
であり、$underline(S) (f) + underline(S) (g) lt.eq underline(S) (f + g) lt.eq overline(S) (f + g) lt.eq overline(S) (f) + overline(S) (g)$が言える。
ここで、$f$と$g$が積分可能であることから$f + g$も積分可能でほしい式が成り立つことがわかる。
もう一つの定数倍の式は簡単に示されるので詳細は省略する。~◻

]
この命題では和と定数倍またそれを組み合わせて差の積分の公式が得られるが、関数の積や商については一般に定積分の公式はない。
代わりに後に述べる部分積分を用いて積分を計算することになる。

#block[
<t_int_order> 区間$[a , b]$上で積分可能な関数$f$,
$g$が各$x in [a , b]$に対して$f (x) lt.eq g (x)$を満たすとき、
$ integral_a^b f (x) ⅆ x lt.eq integral_a^b g (x) ⅆ x $ が成り立つ。
特に区間$[a , b]$上で積分可能な関数$f$に対して、
\$\$\\abs{\\int\_a^b f(x)\\dd{x}} \\le \\int\_a^b \\abs{f(x)}\\dd{x}\$\$
が成り立つ。

]
積分とは和のようなものだと思えば、和を取って絶対値を取るよりも絶対値の和を考えた方が大きいということで、自然に受け入れられるはずである。

#block[
#emph[Proof.]
下限や上限は大小関係を保つことから、$overline(S) (f , P) lt.eq overline(S) (g , P)$が成り立ち、ここから$overline(S) (f) lt.eq overline(S) (g)$なので、求めたい不等式が得られる。
また、\$-\\abs{f(x)} \\le f(x) \\le \\abs{f(x)}\$なので、もう一つの不等式もいえる。~◻

]
#block[
区間$[a , b]$上の関数$f$に対して、区間$[a , b]$上で積分可能な関数$tilde(f)$であって各$x in (a , b)$で$f (x) = tilde(f) (x)$が成り立つものが存在したとするとき、
$f$も積分可能で
$ integral_a^b f (x) ⅆ x = integral_a^b tilde(f) (x) ⅆ x $ が成り立つ。

]
#block[
#emph[Proof.];~◻

]
#block[
<t_int_interval>
$a lt.eq c lt.eq b$として、関数$f$は区間$[a , c]$と区間$[c , b]$上で積分可能とする。
このとき、
$ integral_a^b f (x) ⅆ x = integral_a^c f (x) ⅆ x + integral_c^b f (x) ⅆ x $
が成り立つ。

]
#block[
#emph[Proof.]
区間$[a , c]$の分割$P_1$と区間$[c , b]$の分割$P_2$を任意にとって、それらを合わせて得られる区間$[a , b]$の分割を$P$とおく。
この時、
$ overline(S) (f , P) = overline(S) (f , P_1) + overline(S) (f , P_2) , quad underline(S) (f , P) = underline(S) (f , P_1) + underline(S) (f , P_2) $
が成り立つ。 ここで$P_1$, $P_2$は任意の分割で$P$は特殊な分割なので、
$ overline(S) (f) lt.eq integral_a^c f (x) ⅆ x + integral_c^b f (x) ⅆ x , quad underline(S) (f) gt.eq integral_a^c f (x) ⅆ x + integral_c^b f (x) ⅆ x $
となるからほしかった等式が得られる。~◻

]
#block[
この命題は積分の区間を分割できることを示していて例えば有限個の区間にわけて関数$f$がどの小区間でも積分可能であれば全体で積分可能である。
つまり、小区間で（端点で修正して）連続または単調になっていればよい。

]
== 微分積分学の基本定理
<微分積分学の基本定理>
微分と積分の間の関係性を示すのが微分積分学の基本定理である。
その表現のために必要になる概念が原始関数と不定積分である。
高校数学ではこの二つは同じようなものであったが、微分の理論で生じるのが原始関数で積分の理論で生じるのが不定積分であるという違いがある。

#block[
$f (x)$を開区間$I$上の関数とする。
$I$上の微分可能な関数$F (x)$であって各$x in I$に対して
$ F' (x) = f (x) $ が成り立つとき、$F$を$f$の#emph[原始関数];という。

]
これに対して、定積分の端点を変数にして得られる関数が不定積分である。

#block[
$f (x)$を閉区間$I$上の積分可能な関数として、$a in I$とする。
ここで$x in I$に対して $ F (x) = integral_a^x f (t) ⅆ t $
とすることで定義される$I$上の関数$F$を$f$の#emph[不定積分];という。

]
#emph[微分積分学の基本定理];は連続関数の不定積分はその関数の原始関数であることを主張する。

#block[
$f$を開区間$I$上の連続関数とする。

- このとき$a in I$に対して#link(<e_indef_int>)[\[e\_indef\_int\]];で定まる不定積分$F (x)$は$f (x)$の原始関数である、つまり#link(<e_prim>)[\[e\_prim\]];が成り立つ。

- $F$を$f$の原始関数の一つとすると任意の$a , b in I$に対して、
  $ integral_a^b f (x) ⅆ x = F (b) - F (a) $ が成り立つ。

]
#block[
#emph[Proof.]

- $x in I$に対して$F' (x)$を書き下すと命題@t_int_intervalを使って、
  \$\$F\'(x)
  = \\lim\_{h \\to 0}\\frac{F(x+h)-F(x)}{h}
  = \\lim\_{h \\to 0}\\frac{1}{h}\\qty(\\int\_a^{x+h} f(t)\\dd{t}-\\int\_a^x f(t)\\dd{t})
  = \\lim\_{h \\to 0}\\frac{1}{h}\\int\_x^{x+h} f(t)\\dd{t}\$\$
  となり、$f$の$x$での連続性の度合い$omega$を取ることで、
  \$\$\\abs{\\frac{1}{h}\\int\_x^{x+h} f(t)\\dd{t}-f(x)}
  = \\abs{\\frac{1}{h}\\int\_x^{x+h} (f(t)-f(x))\\dd{t}}
  \\le \\frac{1}{h}\\int\_x^{x+h} \\abs{f(t)-f(x)}\\dd{t}
  \\le \\frac{1}{h}\\int\_x^{x+h} \\omega(h)\\dd{t}
  = \\omega(h)\$\$
  右辺は$h arrow.r 0$で$0$に収束するので、結論として$F' (x) = f (x)$がわかる。

- $f$の不定積分を$G$とおく、つまり $ G (x) = integral_a^x f (t) ⅆ t $
  とすると(1)より$G$は$f$の原始関数である。
  したがって、$G (x) - F (x)$は、微分導関数が$f (x) - f (x) = 0$より、定数関数なので、
  $ F (b) - F (a) = G (b) - G (a) = integral_a^b f (x) ⅆ x - integral_a^a f (x) ⅆ x = integral_a^b f (x) ⅆ x $
  である。

~◻

]
この微分積分学の基本定理を用いれば定積分を計算することは原始関数を一つ見つけることに帰着される。
また、$F (b) - F (a)$のことを
\$\$\\lreval{F}\_a^b, \\quad \\lreval{F(x)}\_{x = a}^b, \\quad \\lreval{F(x)}\_a^b\$\$
などと略記する。

#block[
一次関数$f (x) = k x + m$に対して、二次関数$F (x) = k / 2 x^2 + m x$は$f (x)$の原始関数であることがすぐわかるので、
\$\$\\int\_a^b (k x+m)\\dd{x} = \\lreval\*{\\frac{k}{2}x^2+m x}\_a^b = \\frac{k}{2}(b^2-a^2)+m(b-a) = \\frac{1}{2}((k a+m)+(k b+m))(b-a)\$\$
と（区分求積法より）簡単に計算できる。

]
ここでは連続関数$f (x)$が与えられたときに$f の$すべての原始関数、つまり$f$の原始関数全体の集合について考えよう。
この集合を $ integral f (x) ⅆ x $ と書くことにする。 $F$,
$G$を$f$の原始関数とすると、$G (x) - F (x)$は、微分導関数が$f (x) - f (x) = 0$より、定数関数になる。
つまり、$f$の原始関数$F$を一つ見つけたら原始関数全体の集合は
\$\$\\int f(x)\\dd{x} = \\lrset{ F(x)+C }\$\$
とでき、この時の$C$を積分定数という。 上の記述はしばしば
$ integral f (x) ⅆ x = F (x) + C $ と略記される。
積分定数もしばしば省略されるが、微分方程式の理論では積分定数は省略されないので、このテキストでは省略せずに書くことにする。

以下では微分の公式から直ちに得られる積分の公式を列挙する。
一部被積分関数が連続である範囲が実数全体でない場合もあるので注意する。

#block[
$ integral x^n ⅆ x = frac(1, n + 1) x^(n + 1) + C quad (n = 0 , 1 , 2 , 3 , dots.h.c) , quad integral x^n ⅆ x = frac(1, n + 1) x^(n + 1) + C quad (n = - 2 , - 3 , dots.h.c , x eq.not 0) , $
$ integral lr(|x|)^a ⅆ x = frac(1, a + 1) x lr(|x|)^a + C quad (a eq.not - 1 , x eq.not 0) . $
$ integral e^x ⅆ x = e^x + C , quad integral a^x ⅆ x = frac(1, log a) a^x + C quad (a > 0 , a eq.not 1) . $
$ integral 1 / x ⅆ x = log lr(|x|) + C quad (x eq.not 0) , $
$ integral sin x ⅆ x = - cos x + C , quad integral cos x ⅆ x = sin x + C , quad integral frac(1, cos^2 x) ⅆ x = tan x + C quad (x eq.not pi / 2 + n pi , n in bb(Z)) . $
$ integral 1 / sqrt(1 - x^2) ⅆ x = arcsin x + C quad (- 1 < x < + 1) , quad integral frac(1, 1 + x^2) ⅆ x = arctan x + C . $
$ integral sinh x ⅆ x = cosh x + C , quad integral cosh x ⅆ x = sinh x + C , quad integral frac(1, cosh^2 x) ⅆ x = tanh x + C . $
\$\$\\int \\frac{1}{\\sqrt{1+x^2}}\\dd{x} = \\arsinh x+C,
\\quad \\int \\frac{1}{1-x^2}\\dd{x} = \\frac{1}{2}\\log\\abs{\\frac{1+x}{1-x}}+C \\quad (x \\ne \\pm 1).\$\$

]
#block[
上記では細かく書いたが、いくつかは簡単に
$ integral x^a ⅆ x = cases(delim: "{", frac(1, a + 1) x^(a + 1) + C & upright("(") a eq.not - 1 upright("),"), log lr(|x|) + C & upright("(") a = - 1 upright(")"), ) $
と覚えておけばよい。

]
また、被積分関数が単純な関数についての積分として次が挙げられる。

#block[
$ integral log lr(|x|) ⅆ x = x log lr(|x|) - x + C quad (x eq.not 0) . $
$ integral tan x ⅆ x = - log lr(|cos x|) + C quad (x eq.not pi / 2 + n pi , n in bb(Z)) . $
$ integral tanh x ⅆ x = log (cosh x) + C . $

]
#block[
#emph[Proof.] 証明は右辺を微分することで確かめられるので省略する。~◻

]
== 部分積分と置換積分
<部分積分と置換積分>
まず、次が成り立つことに注意する。

#block[
連続関数$f$, $g$に対して、
$ integral (f (x) + g (x)) ⅆ x = integral f (x) ⅆ x + integral f (x) ⅆ x $
が成り立つ。

]
積の微分や合成関数の微分に対応する積分の計算法が部分積分と置換積分である。

#block[
$f (x)$, $g (x)$を$C^1$級関数とするとき、
$ integral f (x) g' (x) ⅆ x = f (x) g (x) - integral f' (x) g (x) ⅆ x $
が成り立つ。

]
#block[
#emph[Proof.] $F (x) = f (x) g (x)$とおくと積の微分より
\$\$\\dv{x}(F(x)) = f\'(x)g(x)+f(x)g\'(x).\$\$
つまり$f (x) g (x)$は$f' (x) g (x) + f (x) g' (x)$の原始関数より
$ integral f' (x) g (x) + f (x) g' (x) ⅆ x = f (x) g (x) + C . $
よって整理して示すべき式を得る。~◻

]
#block[
部分積分により
$ integral x e^x ⅆ x = integral x (e^x)' ⅆ x = x e^x - integral (x)' e^x ⅆ x = x e^x - integral e^x ⅆ x = (x - 1) e^x + C . $

]
#block[
部分積分により
$ integral log x ⅆ x = integral (x)' log x ⅆ x = x log x - integral x (log x)' ⅆ x = x log x - integral ⅆ x = x log x - x + C . $

]
#block[
$f (x)$を連続関数、$phi.alt (t)$を$C^1$級関数とするとき、$x = phi.alt (t)$とおくと、
$ integral f (phi.alt (t)) phi.alt' (t) ⅆ t = integral f (x) ⅆ x $
が成り立つ。

]
#block[
置換積分は\$\\dv{t}{x}\\dd{t} = \\dd{x}\$と考えると覚えやすい。

]
#block[
#emph[Proof.]
$F$を連続関数$f (x)$の原始関数（の一つ）とおくと合成関数の微分より
\$\$\\dv{t}(F(\\phi(t))) = F\'(\\phi(t))\\phi\'(t) = f(\\phi(t))\\phi\'(t).\$\$
つまり$F (phi.alt (t))$は$f (phi.alt (t)) phi.alt' (t)$の原始関数より、$x = phi.alt (t)$と置換することで
$ integral f (phi.alt (t)) phi.alt' (t) ⅆ x = F (phi.alt (t)) + C = F (x) + C = integral f (x) ⅆ x . $~◻

]
#block[
置換積分により$y = x^2$とおくと
$ integral x e^(x^2) ⅆ x = integral 1 / 2 (x^2)' e^(x^2) ⅆ x = integral 1 / 2 e^y ⅆ y = 1 / 2 e^y + C = 1 / 2 e^(x^2) + C . $

]
部分積分と置換積分を定積分に適用するとき、部分積分はそのままだが置換積分は積分範囲に注意が必要である。

#block[
$f (x)$,
$g (x)$を有界閉区間$[a , b]$を含む開区間で$C^1$級関数とするとき、
\$\$\\int\_a^b f(x)g\'(x)\\dd{x} = \\lreval{f(x)g(x)}\_a^b-\\int\_a^b f\'(x)g(x)\\dd{x}\$\$
が成り立つ。

]
#block[
$[alpha , beta]$を$t$の有界閉区間、$I$を$x$の区間とし、$f$を$I$上の連続関数、$x = phi.alt (t)$を$[alpha , beta]$を含む開区間で$C^1$級関数であって値域が$I$に入っているとする。
ここで$phi.alt (alpha) = a$, $phi.alt (beta) = b$とするとき、
$ integral_alpha^beta f (phi.alt (t)) phi.alt' (t) ⅆ t = integral_a^b f (x) ⅆ x $
が成り立つ。

]
部分積分と置換積分の応用として逆関数の積分がある。

#block[
$f$を連続関数として、$F$を$f$の原始関数の一つとする。
$f$が逆関数$f^(- 1)$を持つとすると、
$ integral f^(- 1) (x) ⅆ x = x f^(- 1) (x) - F (f^(- 1) (x)) + C $
が成り立つ。

]
#block[
#emph[Proof.] $y = f^(- 1) (x)$と置換すると、$x = f (y)$より
$ integral f^(- 1) (x) ⅆ x = integral y f' (y) ⅆ y . $ 部分積分より
$ integral f^(- 1) (x) ⅆ x = y f (y) - integral f (y) ⅆ y = y f (y) - F (y) + C . $
よって、$f (f^(- 1) (x)) = x$に注意して$x$で書き直せばほしかった式が得られる。~◻

]
#block[
$f (x) = exp (x) = e^x$を考えると原始関数は$F (x) = e^x = f (x)$、逆関数は$f^(- 1) (x) = log x$より
$ integral log x ⅆ x = integral f^(- 1) (x) ⅆ x = x f^(- 1) (x) - F (f^(- 1) (x)) + C = x log x - x + C . $

]
== 種々の積分の計算
<種々の積分の計算>
この章では積分を計算する系統だった技法をいくつか紹介することで様々な関数の積分が計算できるようにする。

実数係数の有理式つまり実数係数の多項式$p (x) eq.not 0$と実数係数の多項式$q (x)$の分数の形$frac(q (x), p (x))$になっている関数は積分が計算できる。
これは部分分数分解によりどの有理式も次の形の有理式の和として表されることによる。

- 単項式$a x^n$ ($a in bb(R)$, $n = 0 , 1 , 2 , 3 , dots.h.c$)。

- 一次式の累乗$a / (x - b)^n$ ($a , b in bb(R)$,
  $n = 1 , 2 , 3 , dots.h.c$)。

- 判別式が負な二次式の累乗で次の形$frac(2 a (x - b), ((x - b)^2 + c^2)^n)$
  ($a , b , c in bb(R)$, $n = 1 , 2 , 3 , dots.h.c$)。

- 判別式が負な二次式の累乗$a / ((x - b)^2 + c^2)^n$
  ($a , b , c in bb(R)$, $c eq.not 0$, $n = 1 , 2 , 3 , dots.h.c$)。

これらのうち(i)と(ii)は$x^n$,
$x^(- n)$の積分を使えばよく、(iii)は$y = (x - b)^2 + c^2$と置換することで$y^(- n)$の積分に帰着される。
(iv)は置換$y = frac(x - b, c)$により、
$ I_n = integral 1 / (x^2 + 1)^n ⅆ x $
の計算に帰着され、部分積分からこの$I_n$が満たす漸化式
$ I_(n + 1) = frac(x, 2 n (x^2 + 1)^n) + frac(2 n - 1, 2 n) I_n , quad I_1 = arctan x + C $
により計算できる（一般項は難しいが与えれた$n$に対する$I_n$は計算できる）。

#block[
]
根号を含む関数$R (x , root(n, frac(a x + b, c x + d)))$（$R$は実数係数の有理式、$a , b , c , d in bb(R)$,
$a d - b c eq.not 0$, $n = 1 , 2 , 3 , dots.h.c$）も積分が計算できる。
これは$y = root(n, frac(a x + b, c x + d))$と置換することで$y$についての有理式の積分に帰着されることによる。

#block[
]
別の形の根号を含む関数$R (x , sqrt(a x^2 + b x + c))$も積分が計算できる。

#block[
]
さらに$sin x$,
$cos x$を含む関数$R (sin x , cos x)$（$R$は実数係数の有理式）は$t = tan (x / 2)$という置換により$t$についての有理式の積分に帰着される。

#block[
]
特に$R (sin^2 x , cos^2 x)$（$R$は実数係数の有理式）の形の関数の場合は$t = tan x$という置換によりさらに簡単に積分が求められる。

#block[
]
== 積分の漸化式
<積分の漸化式>
この節では被積分関数に自然数定数$n$があるような積分を考える。
もちろん$integral x^n ⅆ x = frac(1, n + 1) x^(n + 1) + C$のような簡単な例もあるが、一般項が簡単には求まらないことが普通である。
そこで部分積分や置換積分を使って漸化式を立てて目的の積分を計算するという技法が取られる。

#block[
$n = 0 , 1 , 2 , 3 , dots.h.c$に対して積分 $ integral sin^n x ⅆ x $
を考える。 この積分は部分積分を使うことにより$n gt.eq 2$に対して、
$ integral sin^n x ⅆ x = integral (- cos x)' sin^(n - 1) x ⅆ x = - cos x sin^(n - 1) x + integral (n - 1) cos x sin^(n - 2) x cos x ⅆ x = - cos x sin^(n - 1) x + (n - 1) integral sin^(n - 2) x ⅆ x - (n - 1) integral sin^n x ⅆ x $
となるので、積分の漸化式
$ integral sin^n x ⅆ x = - 1 / n cos x sin^(n - 1) x + frac(n - 1, n) integral sin^(n - 2) x ⅆ x $
を得る。 最初の$n = 0 , 1$の場合だけ積分を計算したらこの漸化式から
$  & integral sin^0 x ⅆ x = x + C ,\
 & integral sin^1 x ⅆ x = - cos x + C ,\
 & integral sin^2 x ⅆ x = - 1 / 2 cos x sin x + 1 / 2 x + C ,\
 & integral sin^3 x ⅆ x = - 1 / 3 cos x sin^2 x - 2 / 3 cos x + C $
などと順に計算することができる。

また、定積分
$ I_n = integral_0^(pi / 2) sin^n x ⅆ x = integral_0^(pi / 2) cos^n x ⅆ x $
の場合を考えよう。
なお、$sin$の定積分と$cos$の定積分が等しいことは$x$を$pi / 2 - x$と置換すればわかる。
この積分$I_n$を#emph[ウォリス積分];という。
不定積分が得られているので定積分に対する漸化式は
$ I_n = frac(n - 1, n) I_(n - 2) quad (n gt.eq 2) , quad I_0 = pi / 2 , quad I_1 = 1 $
となる。

]
#block[
<t_wallis_limit>
ウォリス積分#link(<e_wallis_int>)[\[e\_wallis\_int\]];で定まる数列$(I_n)_(n = 0)^oo$は
$ lim_(n arrow.r oo) sqrt(n) I_n = sqrt(pi / 2) $

]
#block[
#emph[Proof.] ウォリス積分の漸化式より
$ (n + 1) I_(n + 1) I_n = n I_n I_(n - 1) $
なので、数列$(n I_n I_(n - 1))_n$は定数列であり、
$ n I_n I_(n - 1) = I_1 I_0 = pi / 2 $ がわかる。

ここで、$0 lt.eq x lt.eq pi / 2$で$sin^(n + 1) x lt.eq sin^n x lt.eq sin^(n - 1) x$より
$ I_(n + 1) lt.eq I_n lt.eq I_(n - 1) $ であり、$n I_n gt.eq 0$をかけて
$ n I_(n + 1) I_n = frac(n, n + 1) pi / 2 lt.eq n I_n^2 lt.eq n I_n I_(n - 1) = pi / 2 $
を得る。 したがってはさみうちの原理より結論の式を得る。~◻

]
== 積分の不等式
<積分の不等式>
この節では積分を含んだいくつかの有名な不等式を紹介し、応用として（本来の応用先ではないが）積分が計算できない問題に対して評価を与える。

#block[
$f (x)$, $g (x)$を有界閉区間$[a , b]$上の連続関数とする。
各$x in [a , b]$に対して$f (x) lt.eq g (x)$を満たすとき、
$ integral_a^b f (x) ⅆ x lt.eq integral_a^b g (x) ⅆ x $ が成り立つ。
等号成立条件は任意の$x in [a , b]$に対して$f (x) = g (x)$が成り立つことである。

]
#block[
#emph[Proof.];~◻

]
#block[
$f (x)$, $g (x)$を有界閉区間$[a , b]$上の連続関数とする。 このとき不等式
\$\$\\qty(\\int\_a^b f(x)g(x)\\dd{x})^2 \\le \\qty(\\int\_a^b f(x)^2\\dd{x})\\qty(\\int\_a^b g(x)^2\\dd{x})\$\$
が成り立つ。

]
#block[
#emph[Proof.] 任意の実数$t$に対して
\$\$\\int\_a^b (f(x)t+g(x))^2\\dd{x} = \\qty(\\int\_a^b f(x)^2\\dd{x})t^2+2\\qty(\\int\_a^b f(x)g(x)\\dd{x})t+\\qty(\\int\_a^b g(x)^2\\dd{x}) \\ge 0\$\$
に注意する。
これは$t$についての二次不等式なので判別式が非正であり、ほしかった不等式を得る。~◻

]
#block[
$[a , b] = [0 , 1]$, $f (x) = sqrt(1 - x^4)$,
$g (x) = 1$としてコーシー・シュワルツの不等式を用いれば、
$ integral_0^1 sqrt(1 - x^4) ⅆ x lt.eq sqrt(integral_0^1 (1 - x^4) ⅆ x) = 2 / sqrt(5) $
を得る。

]
#block[
$f (x)$, $g (x)$を有界閉区間$[a , b]$上の連続関数として、$p$,
$q$を#link(<e_holder_conj>)[\[e\_holder\_conj\]];を満たす実数とする。
このとき不等式
\$\$\\int\_a^b |f(x)g(x)|\\dd{x} \\le \\qty(\\int\_a^b |f(x)|^p\\dd{x})^{\\frac{1}{p}}\\qty(\\int\_a^b |g(x)|^q\\dd{x})^{\\frac{1}{q}}\$\$
が成り立つ。

]
#block[
#emph[Proof.] \$\$A = \\qty(\\int\_a^b |f(x)|^p\\dd{x})^{\\frac{1}{p}},
\\quad B = \\qty(\\int\_a^b |g(x)|^q\\dd{x})^{\\frac{1}{q}}\$\$ とおく。
$A = 0$のときは$f (x) = 0$、$B = 0$のときは$g (x) = 0$となり不等式は成立するので、$A > 0$かつ$B > 0$の場合を考える。
各$x in [a , b]$に対してヤングの不等式（命題@t_young_ineq）より
\$\$\\abs{\\frac{f(x)}{A}\\cdot\\frac{g(x)}{B}} \\le \\frac{1}{p}\\frac{\\abs{f(x)}^p}{A^p}+\\frac{1}{q}\\frac{\\abs{g(x)}^q}{B^q}\$\$
なので、積分して
\$\$\\int\_a^b \\abs{\\frac{f(x)}{A}\\cdot\\frac{g(x)}{B}}\\dd{x} \\le \\frac{1}{p}+\\frac{1}{q} = 1.\$\$
よってほしかった不等式が得られる。~◻

]
#block[
$p = 2$,
$q = 2$のヘルダーの不等式はコーシー・シュワルツの不等式に他ならない。

]
#block[
$p = 1$に対応する場合は$q = oo$となり、そのままでは考えられないが、
\$\$\\int\_a^b |f(x)g(x)|\\dd{x} \\le \\qty(\\int\_a^b |f(x)|\\dd{x})\\max\_{x \\in \[a, b\]}|g(x)|\$\$
が対応する不等式と考えることができる。

]
#block[
$f (x)$,
$g (x)$を有界閉区間$[a , b]$上の連続関数として、$p$を$1$以上の実数とする。
このとき不等式
\$\$\\qty(\\int\_a^b |f(x)+g(x)|^p\\dd{x})^{\\frac{1}{p}} \\le \\qty(\\int\_a^b |f(x)|^p\\dd{x})^{\\frac{1}{p}}+\\qty(\\int\_a^b |g(x)|^p\\dd{x})^{\\frac{1}{p}}\$\$
が成り立つ。

]
#block[
#emph[Proof.] 途中で三角不等式を一回使うことで
$ integral_a^b lr(|f (x) + g (x)|)^p ⅆ x & = integral_a^b lr(|f (x) + g (x)|) lr(|f (x) + g (x)|)^(p - 1) ⅆ x\
 & lt.eq integral_a^b lr(|f (x)|) lr(|f (x) + g (x)|)^(p - 1) ⅆ x + integral_a^b lr(|g (x)|) lr(|f (x) + g (x)|)^(p - 1) ⅆ x $
を得る。
$p = 1$のときはすでに結論を得ていることに注意して、以降では$p > 1$の場合を考える。
ここで、 \$\$A = \\qty(\\int\_a^b |f(x)|^p\\dd{x})^{\\frac{1}{p}},
\\quad B = \\qty(\\int\_a^b |g(x)|^p\\dd{x})^{\\frac{1}{p}}\$\$ とおき、
$q$を#link(<e_holder_conj>)[\[e\_holder\_conj\]];を満たす実数つまり$q = frac(p, p - 1)$として取ると、ヘルダーの不等式から
\$\$\\begin{aligned}
\\int\_a^b |f(x)+g(x)|^p\\dd{x}
&\\le A\\qty(\\int\_a^b |f(x)+g(x)|^{(p-1)q}\\dd{x})^{\\frac{1}{q}}+B\\qty(\\int\_a^b |f(x)+g(x)|^{(p-1)q}\\dd{x})^{\\frac{1}{q}} \\\\
&= (A+B)\\qty(\\int\_a^b |f(x)+g(x)|^p\\dd{x})^{\\frac{p-1}{p}}
\\end{aligned}\$\$ よってほしかった不等式が得られる。~◻

]
#block[
$x (t)$,
$p (t)$を有界閉区間$I$上の連続関数で任意の$t in [a , b]$に対して$p (t) gt.eq 0$と$integral_I p (t) ⅆ t = 1$を満たし、$f$を$[inf x , sup x]$上の連続関数とする。

- $f$が凸関数のとき、
  \$\$f\\qty(\\int\_I p(t)x(t)\\dd{t}) \\le \\int\_I p(t)f(x(t))\\dd{t}\$\$
  が成り立つ。

- $f$が凹関数のとき、
  \$\$f\\qty(\\int\_I p(t)x(t)\\dd{t}) \\ge \\int\_I p(t)f(x(t))\\dd{t}\$\$
  が成り立つ。

]
#block[
#emph[Proof.] 凸関数の方について示す。
命題@t_convex_suppより$f (x) gt.eq f (x) + k (x - a)$を満たす実数$k$が存在する。
ここで$a = integral_I p (t) x (t) ⅆ t$、$x = x (t)$
($t in I$)として$p (t)$倍して積分すると、$integral_I p (t) ⅆ t = 1$に注意して、
\$\$\\int\_I p(t)f(x(t))\\dd{t} \\ge \\int\_I p(t)(f(a)+k(x(t)-a))\\dd{t} = f(a)+k\\qty(\\int\_I p(t)x(t)\\dd{t}-a) = f(a).\$\$
よってほしかった不等式を得る。

凹関数の方は同様なので詳細は省略する。~◻

]
== 積分型の平均値の定理
<積分型の平均値の定理>
== 区分求積法の応用
<区分求積法の応用>
== 広義積分
<広義積分>
有界閉区間とは限らない区間上の連続関数あるいは単調関数（広義単調増加関数と広義単調減少関数）に対する定積分である広義積分は区間を有界閉区間で近似することで定義される。
このとき、極限の有無によって広義積分の可能性が分かれることに注意する。

#block[
$f$を区間$I$上の連続関数あるいは単調関数とする。

- $I = \[ a , b \)$（$b$は実数または正の無限大）の場合、極限
  $ lim_(t arrow.r b -) integral_a^t f (x) ⅆ x $
  が存在するとき$f$は$\[ a , b \)$上で#emph[広義積分可能];であるまたは#emph[広義積分が収束する];といい、その極限を$f$の$\[ a , b \)$上の#emph[広義積分];という。

- $I = \( a , b \]$（$a$は実数または負の無限大）の場合、極限
  $ lim_(t arrow.r a +) integral_t^b f (x) ⅆ x $
  が存在するとき$f$は$\( a , b \]$上で#emph[広義積分可能];であるまたは#emph[広義積分が収束する];といい、その極限を$f$の$\( a , b \]$上の#emph[広義積分];という。

- $I = (a , b)$（$a$は実数または負の無限大、$b$は実数または正の無限大）の場合、$a < c < b$に対して極限
  $ lim_(t arrow.r a +) integral_t^c f (x) ⅆ x , quad lim_(t arrow.r b -) integral_c^t f (x) ⅆ x $
  の両方が存在するとき$f$は$(a , b)$上で#emph[広義積分可能];であるまたは#emph[広義積分が収束する];といい、その極限の和を$f$の$(a , b)$上の#emph[広義積分];という。

ここで、$f$の$I = [a , b \) , \( a , b] , (a , b)$上の広義積分を
$ integral_I f (x) ⅆ x , quad integral_a^b f (x) ⅆ x $ で表す。

]
#block[
開区間$I = (a , b)$において、広義積分可能かどうかや広義積分の値は$c$の取り方によらない。

]
次の命題は広義積分の理論において重要であり、指数が$a = - 1$のところで切り替わることは記憶するに値する。

#block[
$a$を実数とするとき、
$ integral_1^oo x^a ⅆ x = cases(delim: "{", + oo & (a gt.eq - 1) ,, frac(1, - a - 1) & (a < - 1) .) $
$ integral_0^1 x^a ⅆ x = cases(delim: "{", frac(1, a + 1) & (a > - 1) ,, + oo & (a lt.eq - 1) .) $

]
#block[
#emph[Proof.] 前半は$a eq.not - 1$のとき$t arrow.r oo$で、
\$\$\\int\_1^t x^a\\dd{x} = \\lreval\*{\\frac{1}{a+1}x^{a+1}}\_1^t = \\frac{1}{a+1}t^{a+1}-\\frac{1}{a+1} \\to
\\begin{cases}
+\\infty & (a \> -1), \\\\
\\frac{1}{-a-1} & (a \< -1).
\\end{cases}\$\$ また、$a = - 1$のときは
\$\$\\int\_1^t x^{-1}\\dd{x} = \\lreval\*{\\log x}\_1^t = \\log t \\to +\\infty.\$\$
後半は$a eq.not - 1$のとき$t arrow.r 0 +$で、
\$\$\\int\_t^1 x^a\\dd{x} = \\lreval\*{\\frac{1}{a+1}x^{a+1}}\_t^1 = \\frac{1}{a+1}-\\frac{1}{a+1}t^{a+1} \\to
\\begin{cases}
\\frac{1}{a+1} & (a \> -1). \\\\
+\\infty & (a \< -1).
\\end{cases}\$\$ また、$a = - 1$のときは
\$\$\\int\_t^1 x^{-1}\\dd{x} = \\lreval\*{\\log x}\_t^1 = -\\log t \\to +\\infty.\$\$
以上より示された。~◻

]
以下では広義積分の値を追求するよりも収束するかどうかについて議論する。

#block[
区間$I$上の連続関数あるいは単調関数$f$に対して広義積分
$ integral_I lr(|f (x)|) ⅆ x $
が収束する時、$f$は$I$上で#emph[絶対広義積分可能];または広義積分が#emph[絶対収束];するという。

]
#block[
広義積分が絶対収束する場合 $ integral_I lr(|f (x)|) ⅆ x < oo $ と表し、
絶対収束しない場合 $ integral_I lr(|f (x)|) ⅆ x = oo $ と表す。

]
#block[
$f$を区間$I$上の連続関数あるいは単調関数とする。
$f$の$I$上の広義積分が絶対収束するならばそれは収束している。

]
#block[
#emph[Proof.] $I = \[ a , b \)$の場合のみ示す。 $t in I$に対して、
\$\$F(t) = \\int\_a^t f(x)\\dd{x},
\\quad \\bar{F}(t) = \\int\_a^t \\abs{f(x)}\\dd{x}\$\$ とおくと、
\$\$\\abs{F(t\_+)-F(t\_-)} = \\abs{\\int\_{t\_-}^{t\_+} f(x)\\dd{x}} \\le \\abs{\\int\_{t\_-}^{t\_+} \\abs{f(x)}\\dd{x}} = \\abs{\\bar{F}(t\_+)-\\bar{F}(t\_-)}.\$\$
よって、$t_(+)$について上極限を$t_(-)$について下極限をそれぞれ取ると$F^(‾) (t_(+))$,
$F^(‾) (t_(-))$は仮定より収束することに注意して、
$ limsup_(t arrow.r b -) F (t) - liminf_(t arrow.r b -) F (t) lt.eq lim_(t arrow.r b -) F^(‾) (t) - lim_(t arrow.r b -) F^(‾) (t) = 0 . $
したがって上極限と下極限が一致したので$F (t)$さらには広義積分は収束する。~◻

]
#block[
$f$を区間$I$上の連続関数あるいは単調関数とする。

- 二つの条件
  $ lr(|f (x)|) lt.eq g (x) quad forall x in I , quad integral_I g (x) < oo $
  を満たす$I$上の非負値の連続関数あるいは単調関数$g$が存在するならば、
  $f$の$I$上での広義積分は絶対収束し、
  \$\$\\abs{\\int\_I f(x)\\dd{x}} \\le \\int\_I \\abs{f(x)}\\dd{x} \\le \\int\_I g(x)\\dd{x}\$\$
  が成り立つ。

- 二つの条件
  $ lr(|f (x)|) gt.eq g (x) quad forall x in I , quad integral_I g (x) = oo $
  を満たす$I$上の非負値の連続関数あるいは単調関数$g$が存在するならば、
  $f$の$I$上での広義積分は絶対収束せず、
  \$\$\\int\_I \\abs{f(x)}\\dd{x} = \\infty\$\$ である。

]
#block[
この時の非負値関数$g$を$f$の#emph[優関数];という。

]
#block[
広義積分 $ integral_0^oo e^(- x^2) ⅆ x $ は絶対収束する。 実際
\$\$e^{-x^2} \\le \\min\\lrset{ \\frac{1}{e x^2}, 1 }\$\$
であることから従う（$e^(- x^2) lt.eq e^(- 1) x^(- 2)$については例@t_gauss_est参照）。

]
#block[
広義積分 $ integral_0^oo frac(sin x, x) ⅆ x $
は収束するが、絶対収束しない。

]