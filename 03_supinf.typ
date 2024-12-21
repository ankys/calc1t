
= 極値

#import "deps/theorem.typ": thmrules, theorem, proposition, definition, example, remark, proof
#show: thmrules.with()

== 最大・最小

$A$を実数の集合つまり$RR$の部分集合とする。
$A$の最大元とは$A$の元の中で最も大きいもので、$A$の最小元とは$A$の元の中で最も小さいものであり、正確には以下で定義される。

#definition([集合の最大元と最小元])[
$A$を実数の集合とする。

- 次の二つの条件を満たす実数$a$が存在したら$a$は$A$の_最大元_といい、$max A$と表す。
 +任意の$x in A$に対して$x <= a$が成り立つ。
 +$a in A$。
- 次の二つの条件を満たす実数$a$が存在したら$a$は$A$の_最小元_といい、$min A$と表す。
 +任意の$x in A$に対して$x >= a$が成り立つ。
 +$a in A$。
] <d_max>

重要な事実として最大元、最小元は一意である。

#proposition[
$A$を実数の集合とする。

- $A$の最大元は存在したら一つしかない、つまり$a$, $b$を$A$の最大元とすると$a = b$である。
- $A$の最小元は存在したら一つしかない、つまり$a$, $b$を$A$の最小元とすると$a = b$である。
]

#proof[
最大元について証明する。
$a, b$は$A$の最大元より最大元の定義の二つ目の条件から$a, b in A$である。
ここで$a$は$A$の最大元より最大元の定義の一つ目の条件で$x = b$とすることで、$b <= a$である。
同様に$b$は$A$の最大元より最大元の定義の一つ目の条件で$x = a$とすることで、$a <= b$である。
これら二つの大小関係から$a = b$が従う。

最小元についても同様なので証明は省略する。
]

最大元、最小元は一意ではあるが存在するとは限らない。
特に空集合には（最大元、最小元の定義の二つ目の条件が問題になって）最大元、最小元が存在しない。

一方で存在が保証される場合がいくつかある。
最大・最小の基礎は有限集合である。

#proposition[
$A$を実数の空でない有限集合とする。
このとき$A$には最大元と最小元が存在する。
] <t_maxfin>

#example[
$A$が2つの数$a$, $b$からなる$2$点集合$A = { a, b }$の時を考える。
このとき$a <= b$の場合と$b <= a$の場合がある。
- $a <= b$の場合は$b$が$A$の最大元で$a$が$A$の最小元である。
- $b <= a$の場合は$a$が$A$の最大元で$b$が$A$の最小元である。
よって、どちらの場合でも最大元と最小元が存在する。
なお、両方の場合は$a = b$なのでそもそも$A$は$1$点集合であるが、最大元と最小元がともに$a = b$となっているともいえる。
]

#proof([@t_maxfin の証明])[
証明は元の個数に関する数学的帰納法による。
最大元についてのみ示す。
$A$の元の個数が$1$つのとき、その元こそ$A$の最大元である。
$n = 1, 2, 3, dots$個の元からなる集合に対して最大元が存在することが示されたとする。
ここで$n+1$個の元からなる集合$A = { a_1, a_2, a_3, dots, a_n, a_(n+1) }$について、
帰納法の仮定より$n$個の元からなる部分集合${ a_1, a_2, a_3, dots, a_n }$には最大元$a$が存在する。
- $a <= a_(n+1)$の場合は$a_(n+1)$が$A$の最大元である。
- $a_(n+1) <= a$の場合は$a$が$A$の最大元である。
よって、どちらの場合でも$A$に最大元が存在し、数学的帰納法より証明が完成する。

最小元についても同様なので証明は省略する。
]

いくつかの区間（特に閉区間）はその定義から最大・最小がすぐ求まる。

#example[
区間$[a, b], \(a, b\], \(-oo, b\]$の最大元は$b$であり、区間$[a, b], \[a, b\), \[a, +oo\)$の最小元は$a$である。
これら以外の区間には最大元、最小元は存在しない。
]

包含関係があると最大・最小に大小関係が従う。

#proposition([包含関係と最大・最小])[
$A$, $B$を実数の集合とする。

- $A$, $B$に最大元が存在して、$A subset B$ならば、$max A <= max B$が成り立つ。
- $A$, $B$に最小元が存在して、$A subset B$ならば、$min A >= min B$が成り立つ。
] <t_inc_max>

#proof[
最大についてのみ示す。
最大元の定義から、$max A in A subset B$より$max A <= max B$である。
最小についても同様なので証明は省略する。
]

== 上限・下限

実数の集合$A$に対して最大元や最小元は存在しないがそれに準じる数がある場合がある。
例えば開区間$(0, 1)$を考えると$1$は最大元の$0$は最小元の一つ目の条件を満たしているが開区間の定義からそれぞれ$(0, 1)$の元ではないため最大元や最小元ではない。
このようなぎりぎりまで近い数を取れるがそれ自身は元でないため最大元・最小元にならないような数のために上限・下限の概念がある。

#definition([集合の上限と下限])[
$A$を実数の集合とする。

- 任意の$x in A$に対して$x <= m$が成り立つような実数$m$は$A$の_上界_であるという。
  $A$の上界からなる集合に最小元がある時、その最小元を$A$の_上限_といい$sup A$と表す。
- 任意の$x in A$に対して$x >= m$が成り立つような実数$m$は$A$の_下界_であるという。
  $A$の下界からなる集合に最大元がある時、その最大元を$A$の_下限_といい$inf A$と表す。
]

上限・下限が何らかの集合の最小元・最大元で定義されているので、上限・下限も一意である。

上限・下限の同値な言い換えを一つ紹介する。

#proposition[
$A$を実数の集合、$a$を実数とする。

- $a$が$A$の上限であることは次の二つの条件が成り立つことと同値である。
  +任意の$x in A$に対して$x <= a$が成り立つ。
  +任意の実数$b < a$に対してある$x in A$が存在して$b < x$が成り立つ。
- $a$が$A$の下限であることは次の二つの条件が成り立つことと同値である。
  +任意の$x in A$に対して$x >= a$が成り立つ。
  +任意の実数$b > a$に対してある$x in A$が存在して$b > x$が成り立つ。
]

#proof[
上限について証明する。
$a$が$A$の上限である時、$a$は$A$の上界なので一つ目の条件が満たされる。
二つ目の条件について背理法でもし成り立たないとするとある実数$b < a$が存在して任意の$x in A$に対して$b >= x$である。
したがって$b$も$A$の上界だが、$b < a$より$a$が$A$の上界からなる集合の最小元だったことに矛盾する。
よって、二つ目の条件が成立する。
逆に、二つの条件が満たされるとき、まず一つ目から$a$は$A$の上界である。
$b$を$A$の上界とするとき$b >= a$を示すが背理法で$b < a$だったとする。
二つ目の条件から$b < x$となる$x in A$が存在するが、これは$b$が$A$の上界でなく矛盾である。
したがって$A$の上界$b$は$b >= a$を満たすので、$a$は$A$の上限である。
以上より同値性が成り立つ。

下限についても同様に証明できる。
]

上限・下限が存在する条件について考えるために上限・下限が存在しない場合を二つ紹介する。
一つは実数の集合$A$に対して上界・下界が存在しない場合で$A$の上界・下界からなる集合が空になるので上限・下限が存在しない。
この場合を排除するために次の有界性の概念を導入する。

#definition([集合の有界性])[
$A$を実数の集合とする。

- ある実数$M$が存在して任意の$x in A$に対して$x <= M$が成り立つような時$A$は_上に有界_であるという。
- ある実数$M$が存在して任意の$x in A$に対して$x >= M$が成り立つような時$A$は_下に有界_であるという。
- 上に有界かつ下に有界の時$A$は_有界_であるという。
] <d_bdd>

#remark[
実数の集合$A$が有界であることとある実数$M$が存在して任意の$x in A$に対して$abs(x) <= M$が成り立つことは同値である。
]

上限・下限が存在しないもう一つの場合は$A$自身が空集合の場合で、この時$A$の上界からなる集合と下界からなる集合は実数全体になってしまい最大元・最小元は存在しない。
しかしながらこれら二つの場合を除けば常に実数の集合には上限・下限が存在する。
より正確には以下が成立する。

#proposition([実数の連続性])[
$A$を実数の集合とする。

- もし$A$が上に有界かつ空でないならば$A$の上限が存在する。
- もし$A$が下に有界かつ空でないならば$A$の下限が存在する。
- もし$A$が有界かつ空でないならば$A$の上限と下限が存在する。
]

また、$A$が上に有界でない場合$sup A = +oo$、下に有界でない場合$inf A = -oo$、$A$が空集合の場合$inf A = +oo$, $sup A = -oo$と書くことにする。
この時、任意の実数の集合$A$に対して$sup A$, $inf A$が定義できることになる。

#example[
区間の上限について
$sup [a, b] = sup [a, b\) = sup \(a, b] = sup (a, b) = sup \(-oo, b\] = sup (-oo, b) = b$,
$sup \[a, +oo\) = sup (a, +oo) = sup (-oo, +oo) = +oo$である。
下限については
$inf [a, b] = inf \[a, b\) = inf [a, +oo\) = inf \(a, b] = inf (a, b) = inf (a, +oo) = a$,
$inf \(-oo, b\] = inf (-oo, b) = inf (-oo, +oo) = -oo$である。
]

冒頭に述べたように最大元・最小元と上限・下限は密接な関係がある。

#theorem[
$A$を実数の集合とする。

- もし$A$が最大元を持つならばそれは$A$の上限でもある。
- もし$A$が最小元を持つならばそれは$A$の下限でもある。
]

#proof[
最大元についてのみ示す。
$a$を$A$の最大元とするとき、任意の$x in A$に対して$x <= a$なので$a$は$A$の上界である。
$m$を$A$の上界とするとき、$a in A$を考えると$a <= m$である。
すなわち$a$は$A$の上界の集合の最小元なので下限に他ならない。

最小元については同様なので証明は省略する。
]

#proposition([包含関係と上限・下限])[
$A$, $B$を実数の集合とする。
ここで、$A subset B$が成り立つならば、
$
sup A <= sup B,
quad inf A >= inf B
$
が成り立つ。
]

#proof[
上限についてのみ示す。
まず、$B$が空のとき$A subset B$も空で$sup A = sup B = -oo$である。
$B$が上に有界でないとき、$sup B = +oo$より不等号は成立する。
$A$が空のとき$sup A = -oo$であるので不等号は成立する。
$A$が上に有界でない場合、$B supset A$も上に有界でない。

それら以外の場合、$m$を$B$の上界とすると、任意の$x in A subset B$に対して$x <= m$より、$m$は$A$の上界である。
つまり、$B$の上界からなる集合は$A$の上界からなる集合の部分集合なので、命題@t_inc_max より$sup A <= sup B$である。

下限についても同様なので証明は省略する。
]

最後に実数の連続性に関連して整数や自然数の集合では上限・下限どころか最大元・最小元が存在することを示す。

#proposition[
次が成立する。

- もし整数の集合$A$が上に有界かつ空でないならば$A$の最大元が存在する。
- もし整数の集合$A$が下に有界かつ空でないならば$A$の最小元が存在する。
- もし自然数の集合$A$が上に有界かつ空でないならば$A$の最大元が存在する。
- もし自然数の集合$A$が空でないならば$A$の最小元が存在する。
] <t_maxdisc>

#proof[
まず、最初の内容を示す。
$A$は空でないので整数$N in A$が存在する。
また、$A$は上に有界なので任意の$x in A$に対して$x <= M$となるような整数$M$が存在する。
ここで$A$のうち$N$以上$M$以下のものに制限して得られる集合$A sect { N, dots, M }$は高々$M - N+1$個の元からなる有限集合なので命題@t_maxfin より最大元$a$が整数として存在する。
この時、任意の$x in A sect { N, dots, M }$に対して$x <= a$かつ$a in A$かつ$N <= a <= M$である。
ここで$x in A$に対して$x <= N$の時は$x <= N <= a$で、$N <= x <= M$の時は上より$x <= a$で、$M$の取り方から$x > M$は起こりえないので、どの場合でも$x <= a$である。
加えて$a in A$だったので整数$a$が$A$の最大元である。

二つ目の内容も同様にして証明できる。
三つ目の内容は自然数の集合は整数の集合とみなすことができるので、一つ目から直ちに従う。
四つ目の内容は自然数の集合は整数の集合とみなすことができることと、自然数の集合は常にどの元も$0$以上より下に有界なので、二つ目から直ちに従う。
]

== 関数の最大・最小

関数の最大・最小はその像の最大・最小として定義される。

#definition([関数の最大・最小・上限・下限])[
$f$を集合$X$上の実数値関数とする。

- 像$f(X)$の最大を関数$f$の_最大値_といい、
  $
  max f, quad max_X f, quad max_x f(x), quad max_(x in X) f(x)
  $
  などと表す。
- 像$f(X)$の上限を関数$f$の_上限_といい、
  $
  sup f, quad sup_X f, quad sup_x f(x), quad sup_(x in X) f(x)
  $
  などと表す。
- 像$f(X)$の最小を関数$f$の_最小値_といい、
  $
  min f, quad min_X f, quad min_x f(x), quad min_(x in X) f(x)
  $
  などと表す。
- 像$f(X)$の下限を関数$f$の_下限_といい、
  $
  inf f, quad inf_X f, quad inf_x f(x), quad inf_(x in X) f(x)
  $
  などと表す。
- $f(a) = max f$となる$a in X$のことを$f$の_最大点_といい、$f$は点$a$で最大という。
  つまり、$a$を$f$の最大点とすると任意の$x in X$に対して$f(x) <= f(a)$が成り立つ。
- $f(a) = min f$となる$a in X$のことを$f$の_最小点_といい、$f$は点$a$で最小という。
  つまり、$a$を$f$の最小点とすると任意の$x in X$に対して$f(x) >= f(a)$が成り立つ。
]

この上限・下限の性質として次が重要である。

#proposition([和と上限・下限])[
$f$, $g$を集合$X$上の実数値関数とする。
このとき、
$
sup_(x in X) (f(x)+g(x)) <= sup_(x in X) f(x)+sup_(x in X) g(x),
quad inf_(x in X) (f(x)+g(x)) <= inf_(x in X) f(x)+inf_(x in X) g(x)
$
が成り立つ。
]

#proof[
上限についてのみ示す。
任意の$x in X$に対して、$f(x) <= sup f$, $g(x) <= sup g$なので、足して$f(x)+g(x) <= sup f+sup g$。
よって、$x$についての上限を取ることでほしい不等式を得る。
下限についても同様なので証明は省略する。
]

次の命題は今後の議論で用いることがある。

#proposition[
$f$, $g$をそれぞれ集合$X$, $Y$上の実数値関数とする。
ここで任意の$x in X$と任意の$y in Y$に対して$f(x) <= g(y)$が成り立つとき、$sup f <= inf g$が成り立つ。
] <t_supinf_indep>

#proof[
任意の$x in X$を固定すると、$y$についての下限を取ることで$f(x) <= inf g$となる。
よって$x$についての上限を取ることで$sup f <= inf g$を得る。
]

== 絶対値

実数$a$に対して$a$と$-a$のうち大きい方の値を実数$a$の_絶対値_といい$abs(a)$で表す。
絶対値は$a$と$-a$の大小関係つまり$a$の符号によって特徴づけられ、常に非負の値をとる。
つまり、
$
abs(a) = max { a, -a } =
cases(
a & "(" a >= 0 "),",
-a & "(" a <= 0 ")",
)
$
である。
絶対値は符号を取り除いた数値といえるし、$0$からの距離ともみなせる。

絶対値において重要な事項は次の三角不等式である。
$abs(-a) = abs(a)$であることに注意する。

#proposition([実数の絶対値の三角不等式])[
実数$a$, $b$に対して次の不等式が成り立つ。
$
abs(abs(a)+abs(b)) <= abs(a+b) <= abs(a)+abs(b),
quad abs(abs(a)-abs(b)) <= abs(a-b) <= abs(a)+abs(b).
$
]

四つの不等式があるが実質的には二つ目の$abs(a+b) <= abs(a)+abs(b)$が重要で、他の三つはこの不等式からすぐに得られる。

#proof[
絶対値の定義より$abs(a) >= a, -a$なので$-abs(a) <= a <= abs(a)$であり、同様に$-abs(b) <= b <= abs(b)$である。
よって、辺々足せば
$
-abs(a)-abs(b) <= a+b <= abs(a)+abs(b).
$
特に$a+b <= abs(a)+abs(b)$かつ$-a-b <= abs(a)+abs(b)$なので、
$
abs(a+b) = max { a+b, -a-b } <= abs(a)+abs(b)
$
を得る。

あとはこの式の$a$を$a+b$、$b$を$-b$とすれば$abs(a) = abs((a+b)+(-b)) <= abs(a+b)+abs(- b) = abs(a+b)+abs(b)$より$abs(a)-abs(b) <= abs(a+b)$。
また$a$を$a+b$、$b$を$-a$とすれば$abs(b) = abs((a+b)+(-a)) <= abs(a+b)+abs(-a) = abs(a+b)+abs(a)$より$abs(b)-abs(a) <= abs(a+b)$。
よって、$abs(abs(a)-abs(b)) = max { abs(a)-abs(b), -abs(a)+abs(b)} <= abs(a+b)$である。

さらに$b$を$-b$とすれば、$abs(abs(a)-abs(-b)) <= abs(a-b) <= abs(a)+abs(-b)$でこれは$abs(abs(a)-abs(b)) <= abs(a-b) <= abs(a)+abs(b)$に他ならない。
]

== 平方根と絶対値

平方根は逆関数の定理で導入した方が理論の統一感があり連続性や単調性もいえて便利であるが、ここで上限・下限の応用として導入する。
理由としては複素数での極限の定義において絶対値を準備するために平方根が必要だからである（ただし実際には実数の絶対値はすでに前の節で導入されたので、実数の極限が定義でき平方根が定義できた時点で改めて極限のところに戻って複素数に対して定義すればよい）。

非負の実数$a$に対して集合$A = { x >= 0 mid(|) x^2 <= a }$を考える。
この集合は$0 in A$なので空でなく、任意の$x in A$に対して$x >= 1$なら$x <= x^2 <= a$より$max { 1, a }$が上界になっている。
したがって、実数の連続性より$A$には上限が存在し、それを$a$の_平方根_といい$sqrt(a)$で表す。

平方根の重要な性質は$sqrt(a) = 0$と$a = 0$が同値であることである。
実際、$a = 0$ならば、$A = { 0 }$なので、$sqrt(a) = 0$である。
$a > 0$のとき、$min { 1, a } > 0$は$A$の元になるので、$sqrt(a) > 0$である。

実数を二乗して平方根を取ると絶対値になる。

#proposition([平方根と実数の絶対値])[
実数$a$に対して、
$
sqrt(a^2) = abs(a)
$
が成り立つ。
]

#proof[
$a >= 0$のとき、$A = { x >= 0 mid(|) x^2 <= a^2 } = [0, a]$より、$sqrt(a^2) = a = abs(a)$である。
$a <= 0$のとき、$sqrt(a^2) = sqrt((-a)^2) = -a = abs(a)$である。
]

複素数の絶対値も平方根との関係が強い。
複素数$z = a+b i$に対して、
$
abs(z) = sqrt(a^2+b^2)
$
を複素数$z = a+b i$の_絶対値_という。
絶対値$abs(z)$が$0$になる条件は$a^2+b^2 = 0$つまり$a = b = 0$で$z = 0$であることに注意する。

また、複素数の絶対値に対しても三角不等式が成立する。

#proposition([複素数の絶対値の三角不等式])[
複素数$z$, $w$に対して次の不等式が成り立つ。
$
abs(abs(z)-abs(w)) <= abs(z+w) <= abs(z)+abs(w),
quad abs(abs(z)-abs(w)) <= abs(z-w) <= abs(z)+abs(w)
$
が成り立つ。
]

#proof[
$abs(-z) = abs(z)$に注意して二つ目の不等式$abs(z+w) <= abs(z)+abs(w)$を示す。
$z = a+b i$, $w = c+d i$に注意して、
$
(abs(z)+abs(w))^2-abs(z+w)^2
= (sqrt(a^2+b^2)+sqrt(c^2+d^2))^2-((a+c)^2+(b+d)^2)
= 2 sqrt(a^2+b^2)sqrt(c^2+d^2)-2(a c+b d)
$
ここでコーシー・シュワルツの不等式よりこれは$0$以上であることがわかる。

他の三つの不等式は実数のときと同様に示される。
]
