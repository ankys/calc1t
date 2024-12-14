
= 極限

#import "deps/theorem.typ": thmrules, theorem, proposition, definition, example, remark, proof
#show: thmrules.with()

== $epsilon$論法

ある実数が正でないつまり$0$以下であることを直接示すのが難しい時でも、条件を緩和していくらでも小さくできる正の数$epsilon$よりも小さいことが言えたらその数は正でないと結論付けられる。
次の定理はそのような論法の正当性を保証する。

#theorem[
$a$, $b$を実数とするとき次が成立する。

- 任意の正の数$epsilon$に対して$a <= b+epsilon$ならば$a <= b$である。
- 任意の正の数$epsilon$に対して$a >= b-epsilon$ならば$a >= b$である。
] <t_ep_real>

#remark[
この定理は$a < b+epsilon$の時でも使えるが結論は$a <= b$であって、その場合でも$a < b$は得られない。
例えば$a = b = 0$の時、$0 < 0+epsilon$だが$0 < 0$ではない。
あくまでも等号付き不等号のみが従う。
]

#proof[
最初の内容のみ証明する。
背理法でもし$a-b > 0$とすると$epsilon = (a-b)/2 > 0$と取ることができ、
$
a-b <= epsilon = (a-b)/2.
$
よって、$a-b > 0$で両辺を割ることで$2 <= 1$を得て、これは$1 < 2$であることに矛盾する。
したがって$a-b <= 0$つまり$a <= b$である。

二つ目は$a$, $b$を入れ替えて同じ議論をすればよい。
]

特に次のバリエーションがある。

#theorem[
$a$, $b$を数とするとき次が成立する。
任意の正の数$epsilon$に対して$abs(a-b) <= epsilon$ならば$a = b$である。
] <t_ep_number>

#proof[
$abs(a-b)$は非負の実数なので、@t_ep_real より$abs(a-b) <= 0$で$abs(a-b) = 0$がわかり、これは$a = b$である。
]

== 数列の極限

数列とは数の並びのこと全般をいうが、ここでは順序を持ち無限に続くものをいう。
そのため順序を表現するため添え字として自然数を用いる。
つまり_数列_とは各自然数$n in NN$に対して一つの数$a_n$を対応させたものであり$(a_n)_(n in NN)$や一部省略して$(a_n)_n$あるいは$(a_n)$と表す。
また、最初の自然数（または整数）を明示したり変更したい場合は$(a_n)_(n = 1)^oo$などと表す。
数列の中でも数が入るクラスに応じて、各$a_n$が実数ならば$(a_n)$は実数列、有理数ならば有理数列、整数ならば整数列、自然数ならば自然数列、複素数ならば複素数列という。
このテキストでは特に指定がなければ数列といったら複素数列である。

#example[
$(2 n)_(n = 0)^oo$, $(5^n)_(n = 0)^oo$, $(3)_(n = 0)^oo$, $(1/n)_(n = 1)^oo$などは（実）数列である（最初の3つは自然数列でもある）。
]

数列の極限はいわゆる$epsilon$論法によって次のように定義される。

#definition([数列の極限])[
数列$(a_n)_(n in NN)$が$n -> oo$で数$a$に_収束する_あるいは$a$が$(a_n)_(n in NN)$の$n -> oo$での_極限である_とは
#quote(block: true)[
任意の正の数$epsilon > 0$に対して、ある自然数$N$が存在して、$N$以上のすべての自然数$n$に対して$abs(a_n-a) < epsilon$が成り立つ
]
ことを言う。
なお、この条件を論理記号で書くと以下になる。
$
forall epsilon > 0, exists N in NN, forall n in NN, n >= N ==> abs(a_n-a) < epsilon.
$
また、この時$a_n -> a$ ($n -> oo$)や$lim_(n -> oo) a_n = a$と書くが、しばしば$lim_n a_n = a$や$lim a_n = a$などと省略される。

数列$(a_n)_(n in NN)$が何らかの数に収束する時この数列は_収束する_といい、そうでない時_発散する_という。
]

#example[
$a$を定数として定数列$(a)_(n in NN)$の極限は$a$である。
]

この定義の中で「ある自然数$N$が存在して、$N$以上のすべての自然数$n$に対して」の部分はしばしば「_十分大きな_すべての自然数$n$に対して」と略し、論理記号では$forall n >> 1$と表す。
つまり、$a_n -> a$は
$
forall epsilon > 0, forall n >> 1, abs(a_n-a) < epsilon.
$
とも表される。
このテキストではこの記号$>>$は極限に関係する上記の意味でのみ使い、必ず$forall$を伴う。
$a >> b$のようには用いないので注意する。
また、$forall epsilon$と$forall n >> 1$は一般には交換できないので注意する。

なお、$abs(a_n-a) = abs(abs(a_n-a)-0)$であることから数列$(a_n)$が$a$に収束することは実数列$(abs(a_n-a))_n$が$0$に収束することと同値である。

それはさておき、極限は存在したら一意である。

#proposition[
数列$(a_n)$が収束したらその極限は一つしかない、つまり$(a_n)$が$a$に収束し$b$にも収束したとすると$a = b$である。
]

#proof[
$epsilon > 0$を任意の正の数として、$abs(a-b) < epsilon$を示す。
ここで、$(a_n)$が$a$に収束することからある自然数$N_a$が存在して$N_a$以上の任意の自然数$n$に対して$abs(a_n-a) < epsilon/2$であり、
$(a_n)$が$b$に収束することからある自然数$N_b$が存在して$N_b$以上の任意の自然数$n$に対して$abs(a_n-b) < epsilon/2$である。
よって$N = max { N_a, N_b }$とおくと、三角不等式より
$
abs(a-b) = abs(a-a_N+a_N-b) <= abs(a-a_N)+abs(a_N-b) < epsilon.
$
ここで@t_ep_number より$a = b$と結論付けられる。
]

発散の中でも次の二つは後でわかるように収束に近い性質を持っている。

#definition([数列の発散])[
$(a_n)_(n in NN)$を実数列とする。

- $(a_n)_(n in NN)$が$n -> oo$で_$+oo$に発散する_とは
  #quote(block: true)[
  任意の$M > 0$に対して、十分大きいすべての自然数$n$に対して$a_n > +M$が成り立つ
  ]
  ことを言う。 この条件を論理記号で書くと以下になる。
  $
  forall M > 0, forall n >> 1, a_n > +M.
  $
  また、この時$a_n -> +oo$ ($n -> oo$)や$lim_(n -> oo) a_n = +oo$と書く。
- $(a_n)_(n in NN)$が$n -> oo$で_$-oo$に発散する_とは
  #quote(block: true)[
  任意の$M > 0$に対して、十分大きいすべての自然数$n$に対して$a_n < -M$が成り立つ
  ]
  ことを言う。 この条件を論理記号で書くと以下になる。
  $
  forall M > 0, forall n >> 1, a_n < -M.
  $
  また、この時$a_n -> -oo$ ($n -> oo$)や$lim_(n -> oo) a_n = -oo$と書く。
- $(a_n)_(n in NN)$が$n -> oo$で収束せず$+oo$にも$-oo$にも発散しない時、$(a_n)$は_振動する_という。
]

極限の具体的な計算において基礎となるのは次の事実である。

#proposition[
数列$(n)_(n in NN)$は$n -> oo$で$+oo$に発散する。
] <t_limid>

このことは自明のように思えるが、数列の添え字の$n$は自然数なのに対して数列の項は実数であり、自然数と実数の差を埋める必要がある。

#proof([@t_limid の証明])[
$M > 0$とする。
天井を使って整数$N = ceil(M)+1$とおくことで、$N$は$N > M > 0$を満たす自然数である。
この時$N$以上のすべての自然数$n$に対して$n >= N > M$より、数列$(n)_(n in NN)$は$n -> oo$で$+oo$に発散することがわかる。
]

以下に述べる収束する数列の性質は今後の議論をするうえで非常に重要である。

#theorem[
収束する数列は有界である。
] <t_conv_bdd>

#proof[
数列$(a_n)_(n in NN)$が実数$a$に収束するとする。
この時、収束することの定義で$epsilon = 1$とすることで、ある自然数$N$が存在して$N$以上のすべての自然数$n$に対して$abs(a_n-a) < 1$であるので、三角不等式から
$
abs(a_n) = abs(a_n-a+a) <= abs(a_n-a)+abs(a) <= abs(a)+1
$
が成り立つ。
$N$未満の自然数は$n = 0, 1, 2, 3, dots, N-1$の有限個なので、
$
M = max { abs(a_0), abs(a_1), abs(a_2), abs(a_3), dots, abs(a_(N-1)), abs(a)+1 }
$
とおくと$M$は実数で、任意の自然数$n$に対して$abs(a_n) <= M$である。
つまり$(a_n)$は有界であることが示された。
]

#proposition([極限と大小関係])[
$(a_n)$, $(b_n)$を実数列とし、それぞれ実数$a$, $b$に収束するとする。
ここでもし各$n$に対して$a_n <= b_n$が成り立つならば$a <= b$である。
] <t_limord>

#remark[
この命題は$a_n < b_n$の時でも適用できるが、結論は$a <= b$であって、その場合でも$a < b$は得られない。
]

#proof[
$epsilon > 0$を任意の正の数として、$a < b+epsilon$を示す。
ここで、$(a_n)$が$a$に収束することからある自然数$N_a$が存在して$N_a$以上の任意の自然数$n$に対して$abs(a_n-a) < epsilon/2$であり、
$(a_n)$が$b$に収束することからある自然数$N_b$が存在して$N_b$以上の任意の自然数$n$に対して$abs(a_n-b) < epsilon/2$である。
ここで$N = max { N_a, N_b }$とおくと、仮定$a_n <= b_n$より
$
a <= a-a_N+a_N < a_N+epsilon/2 <= b_N+epsilon/2 <= b_N-b+b+epsilon/2 < b+epsilon.
$
よって@t_ep_real より$a <= b$と結論付けられる。
]

#proposition([はさみうちの原理])[
$(a_n)$, $(b_n)$を実数列とし、それぞれ実数$a$, $b$に収束するとする。
さらに$(c_n)$を実数列として各$n$に対して$a_n <= c_n <= b_n$が成り立ち$a = b$の時、$(c_n)$は$a = b$に収束する。
] <t_squeeze>

この命題をもちいれば極限値の決定に加えて収束すること自体いえて便利である。

#proof[
$epsilon > 0$を任意の正の数とする。
ここで、$(a_n)$が$a$に収束することから十分大きなすべての自然数$n$に対して$abs(a_n-a) < epsilon$であり、
$(b_n)$が$b$に収束することから十分大きなすべての自然数$n$に対して$abs(b_n-b) < epsilon$である。
ここで十分大きなすべての自然数$n$に対して、仮定から
$
c_n-a >= a_n-a >-epsilon,
quad c_n-b <= b_n-b < epsilon
$
でまとめると
$
abs(c_n-a) = abs(c_n-b) < epsilon
$
なので、$c_n$は$a = b$に収束する。
]

#corollary[
$(a_n)$を数列で$a$を数、$(b_n)$を$0$に収束する実数列とする。
ここでもし各$n$に対して$abs(a_n-a) <= b_n$が成り立つならば、$(a_n)$は$a$に収束する。
] <t_squeeze2>

#block[
$0 <= abs(a_n-a) <= b_n$であり、$(0)$, $(b_n)$は$0$に収束することから、はさみうちの原理（@t_squeeze）より、実数列$(abs(a_n-a))_n$は$0$に収束する。
したがって$(a_n)$は$a$に収束することが示された。
]

#proposition([極限と四則演算])[
$(a_n)$, $(b_n)$をそれぞれ数$a$, $b$に収束する数列とする。
$c$を定数とする。
この時、以下が成り立つ。

+ $a_n+b_n -> a+b$.
+ $c a_n -> c a$.
+ $a_n-b_n -> a-b$.
+ $a_n b_n -> a b$.
+ $b eq.not 0$の時、$a_n/b_n -> a/b$.
+ $abs(a_n|) -> abs(a|)$.
+ $max { a_n, b_n } -> max { a, b }$.
+ $min { a_n, b_n } -> min { a, b }$.
]

#remark[
証明でも触れるが、五つ目の商の極限について$b_n -> b eq.not 0$だと十分大きいすべての$n$について$b_n eq.not 0$であり、そのような$n$に対して$a_n/b_n$を考えることに注意する。
]

これらのうち極限の定義に立ち返って証明されるのは最初の二つで、他ははさみうちの原理を使うことで見通しよく証明できる。
また、二つ目は四つ目の特殊な場合($b_n = c$)であるが、先に二つ目を示すことでその内容を使って四つ目を示す。

#proof[
+ $epsilon > 0$を固定する。
  $a_n -> a$より極限の定義で$epsilon$として$epsilon/2 > 0$として取れば、十分大きな自然数$n$に対して$abs(a_n-a) < epsilon/2$である。
  $b_n -> b$より同様にして、十分大きな自然数$n$に対して$abs(b_n-b) < epsilon/2$である。
  したがって、三角不等式より十分大きな自然数$n$に対して、
  $
  abs((a_n+b_n)-(a+b)) = abs(a_n-a+b_n-b) <= abs(a_n-a)+abs(b_n-b) < epsilon/2+epsilon/2 = epsilon.
  $
  よって$a_n+b_n -> a+b$である。
+ $c = 0$の時、$c a_n = 0$,
  $c a = 0$なので$c a_n -> c a$であるため、$c eq.not 0$の場合を考えればよい。
  $a_n -> a$より極限の定義で$epsilon$として$epsilon/abs(c) > 0$として取れば、十分大きな自然数$n$に対して$abs(a_n-a) < epsilon/abs(c)$である。
  よって、十分大きな自然数$n$に対して、
  $
  abs(c a_n-c a) = abs(c(a_n-a)) <= abs(c)abs(a_n-a) < abs(c) epsilon/abs(c) = epsilon.
  $
  よって、$c a_n -> c a$である。
+ 二つ目で$a_n$として$b_n$、$c$として$-1$として適用すれば$-b_n -> -b$である。
  よって、一つ目より
  $
  a_n-b_n = a_n+(-b_n) -> a+(-b) = a-b
  $
  である。
+ 計算すると
  $
  abs(a_n b_n-a b) = abs(a_n (b_n-b)+(a_n-a) b) <= abs(a_n)abs(b_n-b|)+abs(b) abs(a_n-a).
  $
  ここで、$(a_n)$は収束するので命題@t_conv_bdd より有界であるからある実数$M$が存在してすべての自然数$n$に対して$abs(a_n-a) <= M$とできることから、
  $
  abs(a_n b_n-a b) <= M abs(b_n-b)+abs(b) abs(a_n-a).
  $
  したがって一つ目と二つ目を使うことで右辺は$0$に収束することがわかる。
  よって、@t_squeeze2 より$a_n b_n -> a b$が結論付けられる。
+ まず、$b_n -> b eq.not 0$より極限の定義で$epsilon$として$abs(b)/2 > 0$として取れば、十分大きな自然数$n$に対して$abs(b_n-b) < abs(b)/2$である。
  したがって三角不等式より、
  $
  abs(b_n|) = abs((b_n-b)+b) >= abs(abs(b)-abs(b_n-b)) >= abs(b)-abs(b_n-b) > abs(b)-abs(b)/2 = abs(b)/2 > 0.
  $
  よって特に$b_n eq.not 0$である。 また、計算すると
  $
  abs(a_n/b_n-a/b)
  = abs(a_n b-a b_n)/abs(b)abs(b_n)
  = abs((a_n-a)b-a(b_n-b))/abs(b)abs(b_n)
  <= (abs(b)abs(a_n-a)+abs(a)abs(b_n-b))/abs(b)abs(b_n)
  <= 2 (abs(b)abs(a_n-a)+abs(a)abs(b_n-b))/abs(b)abs(b).
  $
  ここで一つ目と二つ目を使うことで右辺は$0$に収束することがわかる。
  よって、@t_squeeze2 より$a_n/b_n -> a/b$が結論付けられる。
+ 三角不等式より、
  $
  abs(abs(a_n)-abs(a)) <= abs(a_n-a)
  $
  なので、@t_squeeze2 より$abs(a_n) -> abs(a)$がわかる。
+ 一般に実数$x$, $y$に対して
  $
  max { x, y } = (x+y)/2+abs(y-x)/2
  $
  が成り立つことに注意する。
  よって
  $
  max { a_n, b_n } = (a_n+b_n)/2+abs(b_n-a_n)/2 -> (a+b)/2+abs(b-a)/2 = max { a, b }
  $
  である。
+ 一般に実数$x$, $y$に対して
  $
  min { x, y } = (x+y)/2-abs(y-x)/2
  $
  が成り立つことに注意する。 よって
  $
  max { a_n, b_n } = (a_n+b_n)/2-abs(b_n-a_n)/2 -> (a+b)/2-abs(b-a)/2 = max { a, b }
  $
  である。
]
これらの計算は$plus.minus oo$に発散する場合でもある程度拡張できる。
以下では特に重要な場合を示す。

#proposition[
$(a_n)$を実数列とする。

+ $a_n -> +oo$ならば$a_n^(-1) -> 0$が成り立つ。
+ $a_n -> -oo$ならば$a_n^(-1) -> 0$が成り立つ。
+ 十分大きい任意の自然数$n$に対して$a_n > 0$かつ$a_n -> 0$ならば$a_n^(-1) -> +oo$が成り立つ。
+ 十分大きい任意の自然数$n$に対して$a_n < 0$かつ$a_n -> 0$ならば$a_n^(-1) -> -oo$が成り立つ。
]

#proof[
一つ目を示す。
まず、$a_n -> +oo$の定義で$M = 1$とすることで十分大きい自然数$n$に対して$a_n > 1 > 0$であることに注意する。
$epsilon > 0$を固定する。
この時、$a_n -> +oo$の定義で$M = epsilon^(-1) > 0$とすることで十分大きい自然数$n$に対して$a_n > M$である。
よって、十分大きい自然数$n$に対して
$
abs(a_n^(-1)-0) = a_n^(-1) <= M^(-1) = epsilon.
$
よって、$a_n^(-1) -> 0$である。
二つ目は同様にして証明できる。

三つ目を示す。
$M > 0$を固定する。
この時、$a_n -> 0$の定義で$epsilon = M^(-1) > 0$とすることで十分大きい自然数$n$に対して$abs(a_n) < epsilon$である。
ここでもう一つの仮定より十分大きい自然数$n$に対して$abs(a_n) = a_n < epsilon$であるから、
$
a_n^(-1) > epsilon^(-1) = M.
$
よって、$a_n^(-1) -> +oo$である。
四つ目も同様にして証明できる。
]

拡大実数のところで紹介した不定形$oo-oo$, $0 times oo$, $oo/oo$,
$0/0$以外の極限は$plus.minus oo$を含んでいても基本的に正当化される。

以上を用いると様々な数列の極限を求めることができる。

#example[
$n -> oo$において、
- $1/n -> 0$.
- $(n+2)/(3 n+4) = (1+2 n^(-1))/(3+4 n^(-1)) -> frac(1+2 dot 0, 3+4 dot 0) = 1/3$.
]

同じ$+oo$に発散する数列でも発散の速度は
$
n, quad n^2, quad n^3, quad 2^n, quad 3^n, quad n!
$
の順に早くなる。
つまり、左にあるものをそれより右にあるもので割って得られる数列は$0$に収束する。

#proposition([等比数列の極限])[
$c$を実数とする。
この時、$(c^n)_n$の$n -> oo$での極限は以下のようになる。

+ $c > 1$の時、$c^n -> +oo$である。
+ $c = 1$の時、$c^n -> 1$である。
+ $-1 < c < 1$の時、$c^n -> 0$である。
+ $c <= -1$の時、$(c^n)$は発散する（$plus.minus oo$に発散もしない）。
] <t_limgeomseq>

#proof[
+ $c > 1$の時、$c = 1+a$とする$a > 0$が取れ、二項定理より$n >= 1$において
  $
  c^n = (1+a)^n = 1+n a+binom(n, 2) a^2+dots+binom(n, n) a^n >= n a.
  $
  ここで最右辺は$n -> oo$で$+oo$に発散するので、$c^n -> oo$である。
+ TODO
]

#proposition[
数列$(a_n)$に対して、実数列$(abs(a_(n+1)/a_n))$がある$1$より小さい実数$c$に収束したとする。
この時、$a_n -> 0$である。
]

#proof[
$0 <= c < 1$より$d = (1+c)/2$とおくと$0 <= d < 1$で$d$を公比とする等比数列に帰着させたい。
そこで$epsilon = d-c = (1-c)/2 > 0$とおくと、十分大きいすべての自然数$n$に対して
$
abs(a_(n+1)/a_n) <= c+epsilon = d.
$
つまり、$abs(a_(n+1)) <= d abs(a_n)$である。
したがってこれを繰り返し用いることで、
$
abs(a_n) <= d abs(a_(n-1)) <= d^2 abs(a_(n-2)) <= dots <= d^n abs(a_0).
$
よって、$0 <= d < 1$より@t_limgeomseq から最右辺は$0$に収束するので、はさみうちの原理から$a_n -> 0$である。
]

#example[
$a$を実数として、$a^n$と$n!$の発散の速さについて、
$
abs(((a^(n+1))/((n+1)!))/((a^n)/(n!))) = abs(a/(n+1)) -> 0 (n -> oo).
$
よって、$n!$の方が早く発散する。
]

== 単調数列の極限
<単調数列の極限>
一般に数列は収束するとは限らないがそれを保証する単調収束定理がある。
その中で重要になる概念が次の単調性と有界性である。

#block[
$(a_n)_(n in NN)$を実数列とする。

- 任意の自然数$n$に対して$a_n <= a_(n+1)$が成り立つ、つまり
  $ a_0 <= a_1 <= a_2 <= a_3 <= dots $
  のとき、$(a_n)$は_単調増加_という。

- 任意の自然数$n$に対して$a_n >= a_(n+1)$が成り立つ、つまり
  $ a_0 >= a_1 >= a_2 >= a_3 >= dots $
  のとき、$(a_n)$は_単調減少_という。

]
#block[
$(n)_(n = 0)^oo$は単調増加であり、$(1/n)_(n = 1)^oo$は単調減少である。

]
#block[
$(a_n)_(n in NN)$を実数列とする。

- 集合${ a_n divides n in NN }$が上に有界の時、すなわちある実数$M$が存在して任意の$n in NN$に対して$a_n <= M$の時、$(a_n)$は上に有界という。

- 集合${ a_n divides n in NN }$が下に有界の時、すなわちある実数$M$が存在して任意の$n in NN$に対して$a_n >= M$の時、$(a_n)$は下に有界という。

- 上に有界かつ下に有界の時、$(a_n)$は有界であるという。

]
#block[
実数列$(a_n)_(n in NN)$が有界であることとある実数$M$が存在して任意の$n in NN$に対して$abs(a_n|) <= M$が成り立つことは同値である。

]
#block[
<t_mono_conv> $(a_n)_(n in NN)$を実数列とする。

- $(a_n)$が単調増加かつ上に有界のとき、$(a_n)$は収束する。

- $(a_n)$が単調減少かつ下に有界のとき、$(a_n)$は収束する。

]
#block[
証明を見ればわかるが実は極限は、$(a_n)$が単調増加かつ上に有界のとき上限$sup_n a_n$で、$(a_n)$が単調減少かつ下に有界のとき下限$inf_n a_n$である。
また、有界性の仮定は極限を実数の範囲に収めるためで、$(a_n)$が単調増加かつ上に有界でないときは$+oo$に発散し、$(a_n)$が単調減少かつ下に有界でないときは$-oo$に発散することがわかる。
そのため$plus.minus oo$を考慮に入れれば、$(a_n)$が単調増加のとき$a_n -> sup_n a_n$で、$(a_n)$が単調減少のとき$a_n -> inf_n a_n$とまとめて書くことができる。

]
#block[
$(a_n)$が単調増加かつ上に有界の場合のみ証明する。
まず、$(a_n)$が上に有界であることから集合${ a_n divides n in NN }$には上限$sup_n a_n in bb(R)$が存在する。
$epsilon > 0$を固定すると、上限の同値な条件から$a_N > sup_n a_n-epsilon$を満たす自然数$N$が存在する。
ここで、$(a_n)$が単調増加であることから$N$以上の自然数$n$に対して$a_n >= a_N > sup_n a_n-epsilon$、また$a_n <= sup_n a_n$であるから、$abs(a_n-sup_n a_n|) < epsilon$である。
したがって、$a_n -> sup_n a_n$が得られ、特に$(a_n)$は収束する。

]
有理数からなる集合でも上限・下限が無理数になりうるように、有理数列でも無理数に収束することがありうる。
そのため有理数は極限操作について閉じていないが、実数だとある程度閉じていることになる。
実は自然数列の極限は存在したら自然数であり、整数列では整数である。
極限操作について閉じることは自然数や整数では成り立っていたものが有理数で崩れてしまい、実数になってまた成り立つようになっている。

このような数列の収束を保証する定理を用いると、次のような手法で数列の極限を求めることができる。

つまり、関数$F$が与えられたときに_漸化式] $ a_(n+1) = F (a_n) $
を考える。
これは_初期値_$a_0$が与えられたら、$n = 0, 1, 2, 3, dots$に対して$a_(n+1) = f (a_n)$で$a_0, a_1, a_2, a_3, dots$が（数学的帰納法から）求まり、数列$(a_n)_(n = 0)^oo$が定まりその極限を考える。
ここでもし$(a_n)$が何らかの数$a$に収束したとする。
後で示す命題から$(a_(n+1))$も$a$に収束することと、さらにもし$(F (a_n))$が$F (a)$に収束したとする（これを保証するのが関数の連続性である）と
$ a = F (a) $ が成り立つ。
式#link(<e_limiteq>)[\[e\_limiteq\]_は$a$についての方程式とみなすと漸化式#link(<e_rec>)[\[e\_rec\]_の_極限方程式_と呼ばれ、これに解がただ一つ存在する場合は極限$a$はその解以外にあり得ないので極限が求まる。

つまり、単調収束定理などで収束を保証して極限方程式の解の一意存在をいえば極限が求まる。
これによって、一般項を求めることが難しい問題でも極限を計算することができる。

#block[
$c >= 0$として、漸化式
\$\$a\_{n+1} = \\frac{1}{2}\\lrparen\*{a\_n+\\frac{c}{a\_n}}\$\$
を考える。
これは$x^2-c$の根つまり$sqrt(c)$をニュートン法によって求める際に現れる漸化式である。

$a_0 >= sqrt(c)$とするとき、算術平均・幾何平均の不等式から$n = 0, 1, 2, 3, dots$に対して
\$\$a\_{n+1} = \\frac{1}{2}\\lrparen\*{a\_n+\\frac{c}{a\_n}} \\ge \\sqrt{a\_n\\cdot\\frac{c}{a\_n}} = \\sqrt{c}\$\$
で特に$(a_n)$は下に有界である。 さらに
\$\$a\_{n+1}-a\_n = \\frac{1}{2}\\lrparen\*{\\frac{c}{a\_n}-a\_n} = \\frac{c-a\_n^2}{2 a\_n} \\le 0\$\$
より、$(a_n)$は単調減少である。
よって単調収束定理より$(a_n)$は何らかの実数$a$に収束するが極限方程式
\$\$a = \\frac{1}{2}\\lrparen\*{a+\\frac{c}{a}}\$\$
を満たしこれを解くと$a = plus.minus sqrt(c)$である。
ここで$a_n >= sqrt(c)$なので命題@t_limordより$a >= sqrt(c)$から$a = sqrt(c)$のみ適。
よって、$a_n -> sqrt(c)$ ($n -> oo$)が結論付けられる。

この問題は極限方程式の解が$a = sqrt(c)$であることから$a_n -> sqrt(c)$を示すために、
$ abs(a_(n+1)-sqrt(c)|) = frac((a_n-sqrt(c))^2, 2 abs(a_n|)) <= 1/2 abs(a_n-sqrt(c)|) $
と計算することで
$ abs(a_n-sqrt(c)|) <= 1/2^n abs(a_0-sqrt(c)|) -> 0 $
より同じ結論を得ることができる。
後者の解法の方が収束の速さまでわかる一方、前者の方が計算が楽といえる。

]
#block[
漸化式 $ a_(n+1) = sqrt(2+a_n) $ を考える。
これは$sqrt(2+sqrt(2+sqrt(2+sqrt(2))))$のような面白い項からなる数列を作る。

$0 <= a_n <= 2$ならば$a_(n+1) = sqrt(2+a_n) >= sqrt(2) > 0$かつ$a_(n+1) = sqrt(2+a_n) <= sqrt(2+2) = 2$なので、$0 <= a_0 <= 2$とすると任意の$n = 0, 1, 2, 3, dots$に対して$0 <= a_n <= 2$で特に$(a_n)$は上に有界である。
さらに
$ a_(n+1)^2-a_n^2 = 2+a_n-a_n^2 =-(a_n+1) (a_n-2) >= 0 $
より$a_n >= 0$に注意して、$(a_n)$は単調増加である。
よって単調収束定理より$(a_n)$は何らかの実数$a$に収束するが極限方程式
$ a = sqrt(2+a) $ を満たしこれを解くと$a = 2$である。
よって、$a_n -> 2$ ($n -> oo$)が結論付けられる。

この問題も前回の問題同様に、極限方程式の解が$a = 2$であることから$a_n -> 2$を示すために、
$ abs(a_(n+1)-2|) = abs(sqrt(2+a_n)-2|) = frac(abs(2+a_n-4|), sqrt(2+a_n)+2) <= 1/2 abs(a_n-2|) $
と計算することで $ abs(a_n-2|) <= 1/2^n abs(a_0-2|) -> 0 $
より同じ結論を得ることができる。

]
== 部分列の極限
<部分列の極限>
$plus.minus 1$を交互に取る数列$((-1)^n)_(n = 0)^oo$はそれ自身は極限の定義に照らし合わせるとどのような数にも収束しない（発散する）が、
奇数番目の項や偶数番目の項に制限すれば$plus.minus 1$に収束するので、それらを極限のようなものとして扱いたい場合がある。
そのような場合に重要になる概念が部分列である。

#block[
$(a_n)_(n in NN)$を数列とする。
ここで、$(n_k)_(k in NN)$を自然数列であって、各$k$に対して$n_k < n_(k+1)$が成り立つ、つまり
$ n_0 < n_1 < n_2 < n_3 < dots $
のとき、$(a_n)$のうち項を$n = n_k$に制限して得られる数列$(a_(n_k))_(k in NN)$を$(a_n)$の_部分列_という。

部分列$(a_(n_k))_(k in NN)$が何らかの数$a$に収束する時、もとの数列$(a_n)$は$a$に_部分列収束_するあるいは$a$が$(a_n)$の_部分列極限_であるという。

]
#block[
- $n_k = k$として取ると$(a_(n_k))_k = (a_k)_k$なので、$(a_n)$自身は$(a_n)$の部分列であり、特に部分列は常に存在する。

- 部分列極限は部分列の取り方によって変わるので一意とは限らない。
  また、部分列は収束するとは限らないので存在とも限らない。

]
#block[
- 数列$((-1)^n)_(n = 0)^oo$に対して$n$が偶数に制限すると$((-1)^(2 k))_(k = 0)^oo = (+ 1)_(k = 0)^oo$で$+ 1$に部分列収束し、$n$が奇数に制限すると$((-1)^(2 k+1))_(k = 0)^oo = (-1)_(k = 0)^oo$で$-1$に部分列収束することがわかる。

- 実は数列$(sin n)_(n = 0)^oo$の部分列極限全体からなる集合は閉区間$[-1, 1]$になる（三角関数の周期$2 pi$が無理数であることに注意する）。

]
もとの数列が収束するならば部分列は同じ極限に収束する。

#block[
数列$(a_n)_(n in NN)$が数$a$に収束するとすると、任意の部分列$(a_(n_k))_(k in NN)$も$a$に収束する。

]
#block[

定義から$n_k >= k$がわかることに注意する（特に$n_k -> oo$
($k -> oo$)である）。
$epsilon > 0$に対して、$a_n -> a$より任意の$N$以上の自然数$n$に対して$abs(a_n-a|) < epsilon$となるような自然数$N$が存在する。
ここで$K = N$とおくと任意の$K$以上の自然数$k$に対して、$n_k >= k >= N$なので、$abs(a_(n_k)-a|) < epsilon$である。
よって、$a_(n_k) -> oo$である。

]
これを用いれば$a_n -> a$のとき$a_(n+1) -> a$などがいえる。

部分列極限の中でも最大のものと最小のものはそれぞれ上極限、下極限と呼ばれる。

#block[
$(a_n)_(n in NN)$を実数列とする。

- 上限・下限を使って定義される次の数を$(a_n)$の$n -> oo$での_上極限_という。
  $ limsup_(n -> oo) a_n = inf_(k in NN) sup { a_n divides n in NN, n >= k } . $

- 上限・下限を使って定義される次の数を$(a_n)$の$n -> oo$での_下極限_という。
  $ liminf_(n -> oo) a_n = sup_(k in NN) inf { a_n divides n in NN, n >= k } . $

]
上極限・下極限は上限・下限で定義されるので（$plus.minus oo$を認めれば）必ず存在するという利点がある。

#block[
自然数$n$に対して$n$以上の自然数の集合は$n$が増えると小さくなるので$sup { a_k divides k in NN, k >= n }$は単調減少である。
したがって上極限の定義の中の下限は極限にかえることができる。
下極限も同様で、つまり
$ limsup_(n -> oo) a_n = lim_(k -> oo) sup { a_n divides n in NN, n >= k }, quad liminf_(n -> oo) a_n = lim_(k -> oo) inf { a_n divides n in NN, n >= k } $
が成立する。

]
また、定義から$liminf a_n <= limsup a_n$である。
この等号が成立するための条件が極限が存在することになる。

#block[
$(a_n)_(n in NN)$を数列とする。

- $(a_n)$が収束するならば、$liminf a_n = limsup a_n = lim a_n$である。

- $liminf a_n = limsup a_n$ならば$(a_n)$はその値に収束する。

]
#block[
この定理は$a_n -> plus.minus oo$の場合も同様のものが成立する。

]
#block[
前半はすぐわかるので証明を省略する。
後半について任意の自然数$k$に対して
$ inf { a_n divides n in NN, n >= k } <= a_k <= sup { a_n divides n in NN, n >= k } $
であり最左辺と最右辺がともに$liminf a_n = limsup a_n$に収束するので、
はさみうちの原理より$a_n -> liminf a_n = limsup a_n$である。

]
#block[
<t_ord_slim> $(a_n)_(n in NN)$,
$(b_n)_(n in NN)$を十分大きい任意の自然数$n$に対して$a_n <= b_n$を満たす実数列とする。

- $limsup a_n <= limsup b_n$.

- $liminf a_n <= liminf b_n$.

]
この命題は命題@t_limordを一般化したものになっている。

#block[
この命題は上極限・下極限が$plus.minus oo$の場合でも成立する。

]
#block[

上極限・下極限の定義から容易に証明できるので詳細は省略する。

]
#block[
<t_max_ulim> $(a_n)_(n in NN)$を実数列とする。

- $a_(n_k) -> limsup a_n$となる部分列$(a_(n_k))$が存在する。

- $a_(n_k) -> liminf a_n$となる部分列$(a_(n_k))$が存在する。

]
#block[
この命題は上極限・下極限が$plus.minus oo$の場合でも成立する。

]
#block[
上極限のみ示す。
$limsup_(n -> oo) a_n$が$+oo$でないつまり実数の場合を証明する。
各$k in NN$に対して実数$b_k = limsup a_n-frac(1, k+1)$を定めると$b_k -> limsup a_n$であり、$b_k < sup { a_n divides n in NN, n >= k }$であることに注意する。
よって$b_k < a_n$となる自然数$n >= k$が存在するので、自然数列$n_k$を
$ n_(k+1) = min { n in NN divides b_(k+1) < a_n, n >= n_k+1 > n_k }, quad n_0 = min { n in NN divides b_0 < a_n } $
で定義すると、$(a_(n_k))$は$(a_n)$の部分列であり、
$ b_k < a_(n_k) <= sup { a_n divides n in NN, n >= k } $
を満たす。
最左辺も再右辺も$limsup_(n -> oo) a_n$に収束するので、はさみうちの原理より部分列$(a_(n_k))$も$limsup_(n -> oo) a_n$に収束する。

$limsup_(n -> oo) a_n =+oo$の場合は$b_k = k$として同じようなことをすればよい。
下極限については同様に証明できる（詳細省略）。

]
特に次が従う。

#block[
有界な実数列は収束する部分列を持つ。

]
#block[

実数列$(a_n)$の上極限$limsup a_n$はその定義から$(a_n)$が有界だと$plus.minus oo$でないことがわかる。
よって、命題@t_max_ulimを用いれば$(a_n)$は実数$limsup a_n$に収束する部分列が存在することがわかるので、定理が示された。

]
#block[
$(a_n)_(n in NN)$を数列、$a$を数とする。
もし$(a_n)$の任意の部分列$(a_(n_k))$が$a$に部分列収束する、つまり$a$に収束する部分列$(a_(n_(k_l)))$が存在するとき、$(a_n)$は$a$に収束する。

]
#block[

実数列$(abs(a_n-a|))_n$を考えると命題@t_max_ulimより上極限$limsup_n abs(a_n-a|)$に収束する部分列$(abs(a_(n_k)-a|))_k$が取れる。
仮定より$(a_(n_k))_k$は$a$に部分列収束するので$abs(a_(n_(k_l))-a|) -> 0$となる$(abs(a_(n_k)-a|))_k$の部分列$(abs(a_(n_(k_l))-a|))_l$が存在する。
$(abs(a_(n_(k_l))-a|))_l$は$limsup_n abs(a_n-a|)$にも収束すると言え、極限の一意性から$limsup_n abs(a_n-a|) = 0$である。
したがって、$0 <= liminf_n abs(a_n-a|) <= limsup_n abs(a_n-a|) = 0$より、$(abs(a_n-a|))_n$は$0$に収束し、つまり$(a_n)$は$a$に収束する。

]
以上の内容をもとに漸化式で定まる数列の極限について一般論を述べる。

#block[
$I$を実数の集合、$F = F (a, n)$, $G = G (a)$を関数とする。

- $I$, $F$, $G$が

 +任意の$a in I$と$n in NN$に対して$F (a, n) in I$、つまり$F (I, NN) subset I$。

 +$I$は上に有界である。

 +任意の$a in I$と$n in NN$に対して$a >= F (a, n)$。

 +任意の$(a_n)_(n in NN)$
    ($a_n in I$)と$a in I$に対して$a_n -> a ==> F (a_n, n) -> G (a)$。

 +$a = G (a)$を満たす$a in I$は一意である。

  を満たす時、漸化式$a_(n+1) = F (a_n, n)$によって任意の$a_0 in I$に対して数列$(a_n)_(n in NN)$
  ($a_n in I$)が定義でき、$(a_n)$は上に有界かつ単調増加より収束し極限を$a$とおくと、$a$は極限方程式$a = G (a)$の一意解であり$a = max I$である。

- $I$, $F$, $G$が

 +任意の$a in I$と$n in NN$に対して$F (a, n) in I$、つまり$F (I, NN) subset I$。

 +$I$は下に有界である。

 +任意の$a in I$と$n in NN$に対して$a <= F (a, n)$。

 +任意の$(a_n)_(n in NN)$
    ($a_n in I$)と$a in I$に対して$a_n -> a ==> F (a_n, n) -> G (a)$。

 +$a = G (a)$を満たす$a in I$は一意である。

  を満たす時、漸化式$a_(n+1) = F (a_n, n)$によって任意の$a_0 in I$に対して数列$(a_n)_(n in NN)$
  ($a_n in I$)が定義でき、$(a_n)$は下に有界かつ単調減少より収束し極限を$a$とおくと、$a$は極限方程式$a = G (a)$の一意解であり$a = min I$である。

]
#block[
三つ目の仮定は一般には外せない。 例えば$I = [-1, 1]$,
$F (a, n) = G (a) =-a$とおくと、三番目以外の仮定を満たすが、
$a_n = (-1)^n a_0$となり$a_0 eq.not 0$のとき$(a_n)$は発散する。

]
数列の極限の最後に次のような極限に関する定理を紹介する。

#block[
<t_average_conv> 数列$(a_n)_(n = 1)^oo$が$a$に収束するとする。 この時、
$ frac(a_1+dots+a_n, n) -> a quad (n -> oo) $
が成り立つ。

]
#block[
$(a_n)_(n = 1)^oo$が$plus.minus oo$に発散する時でも同様の結果が成り立つ。

]
この定理の証明にはある程度極限の定義に立ち戻る必要がある。

#block[
三角不等式より$n = 1, 2, 3, dots$に対して
\$\$\\lrabs{\\frac{a\_1+\\cdots+a\_n}{n}-a} = \\frac{|(a\_1-a)+\\cdots+(a\_n-a)|}{n} \\le \\frac{|a\_1-a|+\\cdots+|a\_n-a|}{n}\$\$
であることに注意する。
$epsilon > 0$に対して、$a_n -> a$であることから、$N$以上のすべての自然数$n$に対して$abs(a_n-a|) < epsilon$となるような$N = 1, 2, 3, dots$が存在するので、$N$以上の自然数$n$に対して、
\$\$\\lrabs{\\frac{a\_1+\\cdots+a\_n}{n}-a}
\< \\frac{|a\_1-a|+\\cdots+|a\_N-a|+(n-N)\\varepsilon}{n}
= \\varepsilon+\\frac{|a\_1-a|+\\cdots+|a\_N-a|-N\\varepsilon}{n}\$\$
である。 ここで$n -> oo$とすると最右辺は$epsilon$に収束するので、
\$\$\\limsup\_{n \\to \\infty}\\lrabs{\\frac{a\_1+\\cdots+a\_n}{n}-a} \\le \\varepsilon\$\$
で、$epsilon$は任意の正の数なので、ほしかった極限の式が得られる。

]
== 関数の極限
<関数の極限>
この節では実数の集合$X$上で定義された実数値関数$f : X -> bb(R)$を考える。
この時、$epsilon$論法により$f$の極限を定義する。
$f$の極限を定義するにあたって、実数$a$は任意の正の数$delta$に対して、$0 < abs(x-a|) < delta$を満たす$x in X$の存在を暗に仮定している。
このような$a$を$X$の_極限点_という。
$X$として閉区間から有限個の点を取り除いて得られる集合を想定していてその場合は$a$はもとの閉区間の点なら何でもよいが、
${ 1/n divides n = 1, 2, 3, dots }$のような集合の場合は極限点は$0$のみでありそれ以外の点では極限を考えられないことに注意する。

#block[
$f$を実数の集合$X$上で定義された実数値関数、$a$を$X$の極限点、$l$を実数とする。

関数$f (x)$が$x -> a$で実数$l$に_収束する_あるいは$l$が$f (x)$の$x -> a$での_極限である_とは

#quote(block: true)[
任意の$epsilon > 0$に対して、ある$delta > 0$が存在して、$0 < abs(x-a|) < delta$を満たす任意の$x in X$に対して$abs(f (x)-l|) < epsilon$が成り立つ
]

ことをいう。 なお、この条件を論理記号で書くと以下になる。
$ forall epsilon > 0, exists delta > 0, forall x in X, 0 < abs(x-a|) < delta ==> abs(f (x)-l|) < epsilon . $
この時、$f (x) -> l$
($x -> a$)や$lim_(x -> a) f (x) = l$と書く。

関数$f (x)$が$x -> a$で_正の無限大に発散する_とは

#quote(block: true)[
任意の$M > 0$に対して、ある$delta > 0$が存在して、$0 < abs(x-a|) < delta$を満たす任意の$x in X$に対して$f (x) >+M$が成り立つ
]

ことをいう。 なお、この条件を論理記号で書くと以下になる。
$ forall M > 0, exists delta > 0, forall x in X, 0 < abs(x-a|) < delta ==> f (x) >+M . $
この時、$f (x) ->+oo$
($x -> a$)や$lim_(x -> a) f (x) =+oo$と書く。

関数$f (x)$が$x -> a$で_負の無限大に発散する_とは

#quote(block: true)[
任意の$M > 0$に対して、ある$delta > 0$が存在して、$0 < abs(x-a|) < delta$を満たす任意の$x in X$に対して$f (x) <-M$が成り立つ
]

ことをいう。 なお、この条件を論理記号で書くと以下になる。
$ forall M > 0, exists delta > 0, forall x in X, 0 < abs(x-a|) < delta ==> f (x) <-M . $
この時、$f (x) ->-oo$
($x -> a$)や$lim_(x -> a) f (x) =-oo$と書く。

]
ここで「ある$delta > 0$が存在して、$0 < abs(x-a|) < delta$を満たす任意の$x in X$に対して」の部分はしばしば「$a$でなく_十分$a$に近い_任意の$x in X$に対して」と略し、論理記号では$forall x in X, 0 < abs(x-a|) lt.double 1$と表す。

$f (x) -> l$は$abs(f (x)-l|) -> 0$と同値である。

#block[
$f$を実数の集合$X$上で定義された実数値関数、$l$を実数とする。

関数$f (x)$が$x ->+oo$で実数$l$に収束するあるいは$l$が$f (x)$の$x ->+oo$での極限であるとは

#quote(block: true)[
任意の$epsilon > 0$に対して、ある$N > 0$が存在して、$x >+N$を満たす任意の$x in X$に対して$abs(f (x)-l|) < epsilon$が成り立つ
]

ことをいう。 なお、この条件を論理記号で書くと以下になる。
$ forall epsilon > 0, exists N > 0, forall x in X, x >+N ==> abs(f (x)-l|) < epsilon . $
この時、$f (x) -> l$
($x ->+oo$)や$lim_(x ->+oo) f (x) = l$と書く。

関数$f (x)$が$x ->+oo$で正の無限大に発散するとは

#quote(block: true)[
任意の$M > 0$に対して、ある$N > 0$が存在して、$x >+N$を満たす任意の$x in X$に対して$f (x) >+M$が成り立つ
]

ことをいう。 なお、この条件を論理記号で書くと以下になる。
$ forall M > 0, exists N > 0, forall x in X, x >+N ==> f (x) >+M . $
この時、$f (x) ->+oo$
($x ->+oo$)や$lim_(x ->+oo) f (x) =+oo$と書く。

関数$f (x)$が$x ->+oo$で負の無限大に発散するとは

#quote(block: true)[
任意の$M > 0$に対して、ある$N > 0$が存在して、$x >+N$を満たす任意の$x in X$に対して$f (x) <-M$が成り立つ
]

ことをいう。 なお、この条件を論理記号で書くと以下になる。
$ forall M > 0, exists N > 0, forall x in X, x >+N ==> f (x) <-M . $
この時、$f (x) ->-oo$
($x ->+oo$)や$lim_(x ->+oo) f (x) =-oo$と書く。

$x ->-oo$での極限は同様にして定義される（詳細省略）。

]
ここで「ある$N > 0$が存在して、$x >+N$を満たす任意の$x in X$に対して」の部分はしばしば「_十分大きい_任意の$x in X$に対して」と略し、論理記号では$forall x in X, x >>+0$と表す。
省略してしまったが「ある$N > 0$が存在して、$x <-N$を満たす任意の$x in X$に対して」の部分はしばしば「_十分小さい_任意の$x in X$に対して」と略し、論理記号では$forall x in X, x lt.double-0$と表す。

関数$f (x)$が$x -> a$で（$a = plus.minus oo$も含む）何らかの実数に収束する時$f (x)$は$x -> a$で_収束する_といい、そうでない時は_発散する_という。
収束せず正の無限大にも負の無限大にも発散しない時、$f (x)$は$x -> a$で_振動する_という。

数列同様、極限は一意であることに注意する。

また、数列の時同様以下が成立する。

#block[
関数$f$, $g$, $h$が、$a$でなく十分$a$に近い任意の$x in X$に対して
$ f (x) <= h (x) <= g (x) $
と$lim_(x -> a) f (x) = lim_(x -> a) g (x) = l$が成り立つとき$h (x) -> l$
($x -> a$)である。

系として関数$f$に対して、$a$でなく十分$a$に近い任意の$x in X$に対して
$ abs(f (x)-l|) <= g (x) $
で$x -> a$で$g (x) -> 0$となる実数値関数$g$が存在する時、$f (x) -> l$
($x -> a$)である。

]
#block[
関数$f$,
$g$が$x -> a$で（$a = plus.minus oo$も含む）$f (x) -> l$,
$g (x) -> m$を満たしているとする。

+ $f (x)+g (x) -> l+m$.

+ $f (x)-g (x) -> l-m$.

+ $f (x) g (x) -> l m$.

+ $m eq.not 0$の時$frac(f (x), g (x)) -> l/m$.

+ $abs(f (x)|) -> abs(l|)$.

+ \$\\max\\lrset{ f(x), g(x) } \\to \\max\\lrset{ l, m }\$.

+ \$\\min\\lrset{ f(x), g(x) } \\to \\min\\lrset{ l, m }\$.

なお、これらは不定形以外なら$l, m = plus.minus oo$でもよい。

]
関数の極限が数列のそれと大きく異なる点の一つに極限を取る方向が一通りではないことがある。
先述の極限の定義は点に近づける様々な方向をまとめて考えているが、ここでは数直線の右側（正の側）からと左側（負の側）からとで分ける。

右側から近づけるために、実数$a$が任意の正の数$delta$に対して、$a < x < a+delta$を満たす$x in X$が存在するとき、$a$を$X$の_右側極限点_といい、
左側から近づけるために、実数$a$が任意の正の数$delta$に対して、$a-delta < x < a$を満たす$x in X$が存在するとき、$a$を$X$の_左側極限点_ということにする。

#block[
$f$を実数の集合$X$上で定義された実数値関数、$a$を$X$の右側極限点、$l$を実数とする。

関数$f (x)$が$x -> a +$で実数$l$に収束するあるいは$l$が$f (x)$の$x -> a +$での_右側極限である_とは

#quote(block: true)[
任意の$epsilon > 0$に対して、ある$delta > 0$が存在して、$a < x < a+delta$を満たす任意の$x in X$に対して$abs(f (x)-l|) < epsilon$が成り立つ
]

ことをいう。 なお、この条件を論理記号で書くと以下になる。
$ forall epsilon > 0, exists delta > 0, forall x in X, a < x < a+delta ==> abs(f (x)-l|) < epsilon . $
この時、$f (x) -> l$
($x -> a +$)や$lim_(x -> a +) f (x) = l$と書く。

関数$f (x)$が$x -> a +$で正の無限大に発散する（$f (x) ->+oo$
($x -> a +$)や$lim_(x -> a +) f (x) =+oo$）ことは同様に定義される（詳細省略）。
関数$f (x)$が$x -> a +$で負の無限大に発散する（$f (x) ->-oo$
($x -> a +$)や$lim_(x -> a +) f (x) =-oo$）ことは同様に定義される（詳細省略）。

$a$を$X$の左側極限点とするとき$x -> a -$での極限（左側極限）は同様にして定義される（詳細省略）。

]
右側極限点かつ左側極限点な点を$X$の_両側極限点_という。
両側極限点は極限点であることに注意する。
次の命題によって、通常の極限を求めるには右側極限と左側極限が一致することを示せばよい。

#block[
<t_lim_oslim>
$f$を実数の集合$X$上で定義された実数値関数、$a$を$X$の両側極限点とする。
極限$lim_(x -> a) f (x)$が存在するための必要十分条件は右側極限$lim_(x -> a +) f (x)$と左側極限$lim_(x -> a -) f (x)$が存在して両者の値が一致することである。
またこの時、
$ lim_(x -> a) f (x) = lim_(x -> a +) f (x) = lim_(x -> a -) f (x) $
が成り立つ。

]
#block[
極限の定義からわかる（詳細省略）。

]
== 連続関数
<連続関数>
関数に対してそのグラフがつながっているという連続性は極限を使って定義される。

#block[
$f$を実数の集合$X$上で定義された実数値関数として、$a$を$X$の極限点であり$X$は$a$を元として含むとする。
ここで$f (x)$が$x -> a$で$f (a)$に収束する、つまり
$ lim_(x -> a) f (x) = f (a) $
の時、関数$f (x)$は点$x = a$であるいは関数$f$は点$a$で_連続_であるという。

同様に、$f$を実数の集合$X$上で定義された実数値関数として、$a$を$X$の右側極限点であり$X$は$a$を元として含むとする。
ここで$f (x)$が$x -> a +$で$f (a)$に収束する、つまり
$ lim_(x -> a +) f (x) = f (a) $
の時、関数$f (x)$は点$x = a$であるいは関数$f$は点$a$で_右連続_であるという。

$f$を実数の集合$X$上で定義された実数値関数として、$a$を$X$の左側極限点であり$X$は$a$を元として含むとする。
ここで$f (x)$が$x -> a -$で$f (a)$に収束する、つまり
$ lim_(x -> a -) f (x) = f (a) $
の時、関数$f (x)$は点$x = a$であるいは関数$f$は点$a$で_左連続_であるという。

]
#block[
集合$X$上の関数$f (x)$が点$x = a$で連続であることをまとめなおすと

#quote(block: true)[
任意の$epsilon > 0$に対して、ある$delta > 0$が存在して、$abs(x-a|) < delta$を満たす任意の$x in X$に対して（十分$a$に近い任意の$x in X$に対して）$abs(f (x)-f (x)|) < epsilon$が成り立つ
]

となる。

]
関数の極限の性質を引き継いで連続性について以下が成立する。

#block[
関数$f (x)$, $g (x)$が点$x = a$で連続とする。
この時点$x$に対して以下の値を対応させる関数も点$x = a$で連続である。

+ $f (x)+g (x)$.

+ $f (x)-g (x)$.

+ $f (x) g (x)$.

+ $g (a) eq.not 0$の時、$frac(f (x), g (x))$.

+ $abs(f (x)|)$.

+ \$\\max\\lrset{ f(x), g(x) }\$.

+ \$\\min\\lrset{ f(x), g(x) }\$.

右連続・左連続についても同様のことが成り立つ。

]
#block[
関数$f (x)$が両側極限点$x = a$で連続であるための必要十分条件は関数$f (x)$が点$x = a$で右連続かつ左連続であることである。

]
#block[
関数$f (x)$が点$x = a$で連続で関数$g (y)$が点$y = f (a)$で連続である時、
合成関数$g (f (x))$は点$x = a$で連続である。

]
次の命題は連続性が点の列を表す数列（点列）を使った表現で特徴づけられることを主張する。

#block[
関数$f (x)$が点$x = a$で連続であることは

#quote(block: true)[
$a$に収束する任意の点列$(a_n)$に対して$f (a_n) -> f (a)$が成り立つ
]

ことと同値である。

]
#block[

$f (x)$が$x = a$で連続として、$a$に収束する点列$(a_n)$を考える。
$epsilon > 0$に対して、連続性からある$delta > 0$が存在して$abs(x-a|) < delta$を満たす任意の点$x$に対して$abs(f (x)-f (a)|) < epsilon$である。
さらにこの$delta > 0$に対して、数列の収束から自然数$N$が存在して$n >= N$を満たす任意の自然数$n$に対して$abs(a_n-a|) < delta$である。
よって、$x$として$a_n$を考えることで、十分大きいすべての$n$に対して$abs(f (a_n)-f (a)|) < epsilon$、つまり$f (a_n) -> f (a)$を得る。

逆に$a$に収束する任意の点列$(a_n)$に対して$f (a_n) -> f (a)$のとき、$f$の連続性を示すが、背理法で連続でなかったとする。
この時、ある$epsilon > 0$が存在して、任意の$delta > 0$に対して$abs(x-a|) < delta$かつ$abs(f (x)-f (a)|) >= epsilon$となる点$x$が存在する。
ここで$n = 1, 2, 3, dots$ごとに$delta = 1/n$を考えて上記の条件を満たす$x$が存在することからそのうち一つを$a_n$とおく。
そうして点列$(a_n)_(n = 0)^oo$を定めるとき、$abs(a_n-a|) < 1/n$なので$(a_n)$は$a$に収束する。
一方で$abs(f (a_n)-f (a)|) >= epsilon$より$(f (a_n))$は$f (a)$に収束しないので仮定に矛盾する、よって$f (x)$は$x = a$で連続である。

]
この命題の前半部分は特に重要で以降の議論で頻繁に用いられる。
後半部分はこのテキストではあまり用いられないが、連続性を証明するときに便利である。

集合上のすべての点で連続な関数を連続関数という。

#block[
$f$を実数の集合$X$上で定義された実数値関数として、$X$の点はすべて$X$の極限点であるとする。
ここで、すべての点$a in X$で$f$が連続である時、関数$f$は集合$X$上の_連続関数_であるという。

]
#block[
「$X$の点はすべて$X$の極限点である」を満たす集合$X$として区間やいくつかの区間の和集合が挙げられる。

]
#block[
<t_ex_conti>
$c$を実数定数として、定数関数$f (x) = c$と恒等関数$f (x) = x$はともに$bb(R)$上の連続関数である。

]
直ちに以下が成立する。

#block[
<t_conti_arith> 関数$f$, $g$を集合$X$上の連続関数とする。
この時$x in X$に対して以下の値を対応させる関数も集合$X$で連続である。

+ $f (x)+g (x)$.

+ $f (x)-g (x)$.

+ $f (x) g (x)$.

+ すべての$x in X$で$g (x) eq.not 0$の時$frac(f (x), g (x))$.

+ $abs(f (x)|)$.

+ \$\\max\\lrset{ f(x), g(x) }\$.

+ \$\\min\\lrset{ f(x), g(x) }\$.

]
#block[
関数$f (x)$が集合$X$で連続で関数$g (y)$が集合$Y supset f (X)$で連続である時、
合成関数$g (f (x))$は集合$X$で連続である。

]
== 中間値の定理、最大値最小値定理、逆関数の定理
<中間値の定理最大値最小値定理逆関数の定理>
ここでは有界閉区間上の連続関数特有の定理として中間値の定理と最大値最小値定理を示す。

#block[
関数$f$を有界閉区間$[a, b]$上の連続関数とする。
この時、任意の$min { f (a), f (b) } <= y <= max { f (a), f (b) }$に対して
$ f (x) = y, quad a <= x <= b $ となる点$x$が存在する。

また、$min { f (a), f (b) } < y < max { f (a), f (b) }$の時は$a < x < b$と取れる。

]
#block[
関数$f$を有界閉区間$[a, b]$からそこへの連続関数とする$f ([a, b]) subset [a, b]$。
この時、$x = f (x)$を満たす不動点$x in [a, b]$が存在する。

]
#block[
関数$f$を有界閉区間$[a, b]$上の連続関数とする。
この時、関数$f$は$[a, b]$上で最大と最小を持つ。

]
この二つの定理はともに区間を左と右に二等分し（中間値の定理ならば$x$、最大値最小値定理ならば最大点・最小点）が入る区間を選ぶという操作を繰り返し行い$1$点に縮小させるという論法で証明される。
次の補題はその議論を支えるものである。

#block[
実数列$(a_n)$と$(b_n)$が各自然数$n$に対して$a_n <= a_(n+1) <= b_(n+1) <= b_n$と$abs(b_n-a_n|) -> 0$を満たすとする。
この時$a_n -> x$, $b_n -> x$となる実数$x$が存在する。

特に$(a_n)$,
$(b_n)$を、各自然数$n$に対して$c_n = frac(a_n+b_n, 2)$として$a_(n+1) = a_n$,
$b_(n+1) = c_n$または$a_(n+1) = c_n$,
$b_(n+1) = b_n$が成立するように定義する時、$a_n -> x$,
$b_n -> x$となる実数$x$が存在する。

]
#block[

仮定から$(a_n)$は単調増加かつ上に有界なので極限$a$が存在し、$(b_n)$は単調減少かつ下に有界なので極限$b$が存在する。
ここで$abs(b_n-a_n|) -> abs(b-a|)$であるが、もう一つの仮定より$a = b$であり、これを$x$とおけばよい。

後半部分は$(a_n)$,
$(b_n)$の定義から$a_n <= a_(n+1) <= b_(n+1) <= b_n$と$abs(b_n-a_n|) = 1/2^n abs(b-a|) -> 0$が言えるので$x$が存在することが示される。

]
#block[
_中間値の定理の証明.] $f (a) <= f (b)$の場合を示す。
$f (a) <= y <= f (b)$とする。 ここで$(a_n)_(n = 0)^oo$,
$(b_n)_(n = 0)^oo$を次のように定める。 まず、$a_0 = a$,
$b_0 = b$とする。 $n = 0, 1, 2, 3, dots$に対して$a_n$,
$b_n$が定義できた時$c_n = frac(a_n+b_n, 2)$として、

- $f (c_n) >= y$の時、$a_(n+1) = a_n$, $b_(n+1) = b_n$とおき、

- $f (c_n) < y$の時、$a_(n+1) = c_n$, $b_(n+1) = a_n$とおく。

この時、常に$f (a_n) <= y <= f (b_n)$であり、補題より$(a_n)$,
$(b_n)$はともにある$a <= x <= b$に収束する。
よって$f$が連続関数であることから$f (x) <= y <= f (x)$より、ほしかった式$f (x) = y$を得る。

$f (a) >= f (b)$の場合も同様に示される。
$min { f (a), f (b) } < y < max { f (a), f (b) }$の時は$x eq.not a, b$なので$a < x < b$と取れる。

]
#block[
この証明は方程式$f (x) = y$の解の構成の計算可能なアルゴリズムにもなっており、_二分法_と呼ばれる。

]
#block[
_最大値最小値定理の証明.] 最大を持つことを示す。
ここで$(a_n)_(n = 0)^oo$, $(b_n)_(n = 0)^oo$を次のように定める。
まず、$a_0 = a$, $b_0 = b$とする。
$n = 0, 1, 2, 3, dots$に対して$a_n$,
$b_n$が定義できた時$c_n = frac(a_n+b_n, 2)$として、

- $sup_([a_n, c_n]) f >= sup_([c_n, b_n]) f$の時、$a_(n+1) = a_n$,
  $b_(n+1) = c_n$とおき、

- $sup_([a_n, c_n]) f < sup_([c_n, b_n]) f$の時、$a_(n+1) = c_n$,
  $b_(n+1) = b_n$とおく。

この時、常に$sup_([a_n, b_n]) f = sup_([a, b]) f$であり、補題より$(a_n)$,
$(b_n)$はともにある$a <= x <= b$に収束する。

ここで$f$が連続関数であることから任意の$epsilon > 0$に対して十分$x$に近い任意の$x' in [a, b]$に対して$abs(f (x ')-f (x)|) < epsilon$より、
ある$n = 0, 1, 2, 3, dots$が存在して、任意の$x' in [a_n, b_n]$に対して$f (x ') < f (x)+epsilon$である。
よって$sup_([a, b]) f <= f (x)+epsilon$で$epsilon$は任意より$sup_([a, b]) f <= f (x)$で関数$f$は点$x$で最大になることが示された。

最大を持つことも同様に示される。

]
#block[
$x$についての方程式$x^3+x-1 = 0$を考える。
$f (x) = x^3+x-1$とおくとこれは連続関数で、$f (0) =-1 < 0$,
$f (1) = 1 > 0$より中間値の定理から$f (x) = 0$は少なくとも$0$と$1$の間に実数解をもつ。

]
実数に対して実数値を対応させる関数が逆関数をもつことを保証するのが以下に定義する（狭義）単調性である。

#block[
$f$を区間$I$上の実数値関数とする。

- 任意の$a < b$を満たす$a, b in I$に対して$f (a) < f (b)$が成立するとき$f$は$I$上で_狭義単調増加_するという。

- 任意の$a < b$を満たす$a, b in I$に対して$f (a) <= f (b)$が成立するとき$f$は$I$上で_広義単調増加_するという。

- 任意の$a < b$を満たす$a, b in I$に対して$f (a) > f (b)$が成立するとき$f$は$I$上で_狭義単調減少_するという。

- 任意の$a < b$を満たす$a, b in I$に対して$f (a) >= f (b)$が成立するとき$f$は$I$上で_広義単調減少_するという。

]
広義単調増加・広義単調減少の「広義」は省略される。

#block[
$f$を有界閉区間$[a, b]$上の連続関数とする。

- $f$が$[a, b]$上で狭義単調増加するとき、逆関数$f^(-1)$が有界閉区間$[f (a), f (b)]$上の狭義単調増加する連続関数として存在する。

- $f$が$[a, b]$上で狭義単調減少するとき、逆関数$f^(-1)$が有界閉区間$[f (b), f (a)]$上の狭義単調減少する連続関数として存在する。

]
#block[
$f$が狭義単調増加するとき示す。
$f (a) <= y <= f (b)$を満たす点$y$に対して中間値の定理より$f (x) = y$となる$a <= x <= b$が存在する。
次にこのような$x$は一意であることを示す。
もし$f (x) = f (x ') = y$となる2点$x, x' in [a, b]$が存在して$x eq.not x'$だったとする。
ここで$f$が狭義単調増加することから$x < x'$の場合は$f (x) < f (x ')$となり矛盾、$x > x'$の場合は$f (x) > f (x ')$となりやはり矛盾である。
よって$x = x'$なので、$f (x) = y$を満たす$x$は一意に存在し$f^(-1) (y)$とおいて$[f (a), f (b)]$上の関数$f^(-1)$を得る。
$f^(-1)$が狭義単調増加であることは同様の議論をすることで証明できる。
つまり、$y < y' in [f (a), f (b)]$として$f^(-1) (y) >= f^(-1) (y ')$だったとすると、$f$の単調増加性より$y = f (f^(-1) (y)) <= f (f^(-1) (y ')) = y'$で矛盾するので、$f^(-1) (y) < f^(-1) (y ')$である。

]
== 一様連続性
<一様連続性>
証明のためにハイネ・カントールの定理などと呼ばれる次の補題を用意する。

#block[
<t_unif_conti>
有界閉区間$[a, b]$上の連続関数$f$は$[a, b]$上一様連続である。

]
#block[

$f$が一様連続でないと仮定すると、ある$epsilon > 0$が存在して任意の$delta > 0$に対して$x, y in [a, b]$,
$abs(x-y|) < delta$が存在して$abs(f (x)-f (y)|) >= epsilon$である。
ここで$n = 1, 2, 3, dots$に対して$delta = n^(-1)$として取れば、$x_n, y_n in [a, b]$が存在して$abs(x_n-y_n|) < n^(-1)$,
$abs(f (x_n)-f (y_n)|) >= epsilon$が成り立つ。
$[a, b]$は有界なのでボルツァーノ・ワイエルシュトラスの定理より部分列を取れば数列$(x_n)$,
$(y_n)$は収束し極限をそれぞれ$x^(‾)$,
$y^(‾)$とおくと、$abs(x_n-y_n|) < n^(-1) -> 0$より$x^(‾) = y^(‾)$である。
また、$[a, b]$は閉区間より$x^(‾) = y^(‾) in [a, b]$もわかる。
ここで$f$は$x^(‾) = y^(‾)$で連続より、ある$delta > 0$が存在して任意の$x in [a, b]$に対して$abs(x-x^(‾)|) < delta$ならば$abs(f (x)-f (x^(‾))|) < epsilon/2$が成り立つことに注意する。
$n$が大きいと$abs(x_n-x^(‾)|), abs(y_n-y^(‾)|) < delta$となるので、そのような$n$に対して三角不等式より
\$\$\\varepsilon \\le |f(x\_n)-f(y\_n)| \\le |f(x\_n)-f(\\bar{x})|+|f(\\var{x})-f(\\bar{y})|+|f(\\bar{y})-f(y\_n)| \< \\varepsilon\$\$
となり矛盾が導かれた。 よって関数$f$は$[a, b]$上一様連続である。

]
== 連続性の度合い
<連続性の度合い>
実数の集合$X$上の関数$f (x)$と点$a in X$に対して
\$\$\\omega(r) = \\sup\\lrset{ |f(x)-f(a)| \\mid x \\in X, |x-a| \\le r }\$\$
で定義される関数$omega (r)$を考える。
この関数は$\[ 0, oo \)$上定義された非負値関数であり$omega = 0$で$r$が大きくなると上限を取る$x$の範囲が広くなるので広義単調増加し、
定義から任意の$x in X$に対して
$ abs(f (x)-f (a)|) <= omega (abs(x-a|)) $ が成立することわかる。

この式で連続性の特徴づけをするのが連続性の度合いである。

#block[
条件 $ omega (r) -> 0 quad (r -> 0 +) $
を満たす$\[ 0, oo \)$上定義された非負値の広義単調増加関数$omega$を_連続性の度合い_という。

]
#block[
$f (x)$を実数の集合$X$上の関数とする。

- 関数$f (x)$が点$x = a in X$で連続であることは連続性の度合い$omega$が存在して任意の$x in X$に対して
  $ abs(f (x)-f (a)|) <= omega (abs(x-a|)) $
  が成立することと同値である。

- 関数$f (x)$が連続関数であることは各$a in X$に対して連続性の度合い$omega_a$が存在して任意の$x in X$に対して
  $ abs(f (x)-f (a)|) <= omega_a (abs(x-a|)) $
  が成立することと同値である。

- 関数$f (x)$が一様連続関数であることは連続性の度合い$omega$が存在して任意の$x, y in X$に対して
  $ abs(f (x)-f (y)|) <= omega (abs(x-y|)) $
  が成立することと同値である。

]