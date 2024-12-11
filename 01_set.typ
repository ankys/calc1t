= 集合と論理

== 集合、命題、写像

_集合_とはいくつかの「もの」の集まりであり、その集合に所属するかしないか判定できるものをいう（ことにする）。
ここでいう集合に所属する「もの」のことを_元_または_要素_という。
「もの」としては整数や実数のような「数」を想定しているが、関数や図形さらには集合自体まで「もの」として認めることがある。
つまり、集合の集合などもあり得て、実際後に述べる実数の実体は特殊な集合でありその集合が実数の集合としてこのテキストで頻繁に出てくる（が、集合としての実数は最初に基礎的な性質を示す時のみに使われてあとは集合であることを意識せずに数として扱うことができる）。
集合$A$と「もの」$a$に対して$a$が$A$の元であるとき、$a$は$A$に_属する_や含まれるあるいは入っているなどと表現し、$a in A$と表す。
そうでない時は、$a in.not A$と書く。

集合を記述する方法にはいくつかありこのテキストでは四種類使う。
そのうち一つが外延記法といって元を列挙して記述する方法であり、例えば$1 , 2 , 3$の三つの元からなる集合は
$
{ 1, 2, 3 }
$
と書かれる。
なお、この集合に対しては$1 in { 1, 2, 3 }$で、$5 in.not { 1, 2, 3 }$である。
集合で重要なことは元が属するかどうかであり、属する順番は関係がない。
また、上記の記法で重複したものがあっても重複分は無視される。 つまり、
$
{ 1, 2, 3 } = { 3, 2, 1 } = { 1, 1, 2, 2, 3, 3 }
$
である。

このテキストでは元の列挙の際に誤解の余地がない場合にいくつかの元を省略する。
その際には記号$dots$を用いる。 例えば、
$
{ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 } = { 0, 1, 2, 3, dots, 9 } = { 0, dots, 9 }
$
や、$N$を自然数として
$
{ 0, 1, 2, 3, dots, N }
$
などである（このテキストでは$0$も自然数として扱う）。

この省略に関係して、集合の二つ目の記法があり、列挙が無限に続く場合にも省略を用いた外延記法を認める。
これにより自然数全体の集合は
$
{ 0, 1, 2, 3, dots }
$
と表される。
さらにこのテキストでは前方にも省略を使うことを認めて、整数全体の集合を
$
{ dots, -3, -2, -1, 0, 1, 2, 3, dots }
$
や偶数全体の集合を
$
{ dots, -6, -4, -2, 0, 2, 4, 6, dots }
$
などと記述する。

上記二つの外延記法を使っている場合に限り、例えば「任意の$n in { 0, 1, 2, 3, dots, N }$に対して」という記述を「任意の$n = 0 , 1 , 2 , 3 , dots , N$に対して」などと書くことがある。

三つ目の記法に関連する概念が命題である。
_命題_とは真か偽か判定可能な条件を記述した文字列である。
例えば$1 in { 1, 2, 3 }$は真の命題で、$5 in { 1, 2, 3 }$は偽の命題である。
命題はしばしば$P$や$Q$の文字が割り当てられ、命題の中に変数$x$や$y$がある場合は$P(x)$や$Q(x , y)$などと書かれる。
集合$X$が与えられてその元$x in X$のうち命題$P(x)$が真になるようなものを集めて得られる集合を
$
{ x in X mid(|) P(x) }
$
と記述する。
命題については次の節で詳しく述べる。

四つ目の集合の記法を説明するために写像の概念を導入する。
集合$X$から集合$Y$への_写像_とは$X$の各元$x$に対して$Y$のただ一つの元$y$を対応させる規則である。
この時の集合$X$を写像の定義域、集合$Y$を写像の値域といい、値域$Y$が数の集合のとき写像は特に関数と呼ばれる。
写像を
$
F: X -> Y
$
や$x$を$y$に対応させていることを明示する際は
$
F: x in X |-> y in Y
$
のように記述する。
また、$x$に対して対応する$y$のことを$F(x)$と書き、写像$F$のことを$F(x)$や$y = F(x)$などと書くこともある。

四つ目の集合の記法はこの写像$F$を使ったものであり、$X$の各元$x$を集合$Y$の元$F(x)$に対応させ集めた集合を
$
{ F(x) mid(|) x in X}
$
と書く。
三つ目と四つ目の記法を同時に用いて
$
{ F(x) mid(|) x in X, P(x) }
$
と記述することもある。

三つ目と四つ目の記法を合わせて内包記法という。
この内包記法を用いることで様々な集合を記述することができる。

元を一つも持たない集合を_空集合_といい$nothing$で表す。
元の個数が有限個の集合を_有限集合_といい、有限集合でない集合は_無限集合_と呼ぶ。

== 命題と論理

命題から次のようにして新しい命題を作る。

#block[
命題$P$, $Q$に対して以下を定める。

- $P$, $Q$の両方が真のときのみ真とする命題を「$P$_かつ_$Q$」といい$P and Q$と表す。
- $P$, $Q$の両方または片方が真のときのみ真とする命題を「$P$_または_$Q$」といい$P or Q$と表す。
- $P$が真のとき偽、偽のとき真とする命題を「$P$_でない_」といい$not P$と表す。
- $Q$が真または$P$が偽のときのみ真とする命題を「$P$_ならば_$Q$」といい$P ==> Q$と表す。

]
このうち「$P$ならば$Q$」の定義で$P$が偽のときならばの命題は真としていることは不自然に思えるかもしれない。
例えば極端な例では「円周率が$3$ならば$1 = 0$」という命題は真ということになる。
命題$1 = 0$は偽なのでおかしく感じるかもしれないが、以降の数学の議論を行う上ではこのようにした方が都合がよい。
論理と言語の間にはすこし隙間があると考えるとよいかもしれない。

これらの命題の演算を表にまとめると以下になる。

#figure(
  align(center)[#table(
    columns: 7,
    align: (center,center,center,center,center,center,center,),
    table.header([$P$], [$Q$], [$P and Q$], [$P or Q$], [$not P$], [$not Q$], [$P ==> Q$],),
    table.hline(),
    [真], [真], [真], [真], [偽], [偽], [真],
    [真], [偽], [偽], [真], [偽], [真], [偽],
    [偽], [真], [偽], [真], [真], [偽], [真],
    [偽], [偽], [偽], [偽], [真], [真], [真],
  )]
  , caption: [命題の演算]
  , kind: table
  )

命題$P$と$Q$の真偽が一致するとき「$P$と$Q$は_同値_」といい$P <=> Q$あるいは$P = Q$と表す。

前節でも述べたように命題中に変数$x$や$y$がある場合は$P(x)$や$Q(x , y)$などと書かれる。
この変数付き命題から以下の新しい命題を作る。

#block[
$X$を集合として各元$x in X$に対して命題$P(x)$が与えられるとする。

- すべての$x in X$に対して命題$P(x)$が真であるときのみ真である命題を「_任意_の$x in X$に対して$P(x)$」といい$forall x in X , P(x)$と表す。
- 命題$P(x)$が真である$x in X$が一つでもあるときのみ真である命題を「ある$x in X$が_存在_して$P(x)$」といい$exists x in X , P(x)$と表す。

]
#block[
$X$が空集合のとき、命題「任意の$x in X$に対して$P(x)$」は真とする。

]

命題の演算の性質として以下が挙げられる。

+ （結合法則）任意の命題$P$, $Q$, $R$に対して、$(P and Q) and R = P and (Q and R)$, $(P or Q) or R = P or (Q or R)$が成り立つ。
+ （交換法則）任意の命題$P$, $Q$に対して、$P and Q = Q and P$, $P or Q = Q or P$が成り立つ。
+ （分配法則）任意の命題$P$, $Q$, $R$に対して、$P and (Q or R) = (P and Q) or (P and R)$, $P or (Q and R) = (P or Q) and (P or R)$が成り立つ。
+ （二重否定）任意の命題$P$に対して、$not (not P) = P$が成り立つ。
+ （ド・モルガンの法則）任意の命題$P$, $Q$に対して、$not (P and Q) = not P or not Q$, $not (P or Q) = not P and not Q$が成り立つ。
+ （背理法の原理）任意の命題$P$, $Q$に対して、$not (P ==> Q) = P and not Q$が成り立つ。
+ （対偶）任意の命題$P$, $Q$に対して、$P ==> Q = not Q ==> not P$が成り立つ。
+ 任意の命題$P(x)$に対して、$not (forall x in X , P(x)) = exists x in X , not P(x)$が成り立つ。
+ 任意の命題$P(x)$に対して、$not (exists x in X , P(x)) = forall x in X , not P(x)$が成り立つ。

背理法の原理にもとづいて命題$P ==> Q$が真であることを示すために$P and not Q$が偽であることつまり$P$と$not Q$を仮定して矛盾を導くことを示す証明法を_背理法_という。
また、命題$P ==> Q$が真であることを示すために_対偶_$not Q ==> not P$が真であることを示す証明法を_対偶論法_という。

== 集合の演算

集合と集合の関係で重要なものとして以下の_包含_がある。

#block[
$A$, $B$を集合とする。

- 任意の$x in A$が$x in B$となっている時、集合$A$は集合$B$に_含まれる_あるいは集合$A$は集合$B$の_部分集合_であるといい、$A subset B$あるいは$B supset A$と表す。
- $A subset B$かつ$A supset B$のとき、集合$A$と集合$B$は_等しい_といい、$A = B$と表す。

]

集合と集合から以下の集合を定義する。

#block[
$X$を集合として、$A$, $B$をその部分集合とする。

- 集合${ x in X mid(|) x in A and x in B }$を$A$と$B$の_共通部分_といい$A sect B$と表す。
- 集合${ x in X mid(|) x in A or x in B }$を$A$と$B$の_和集合_といい$A union B$と表す。
- 集合${ x in X mid(|) x in A and x in.not B }$を$A$と$B$の_差集合_といい$A \\ B$と表す。
- 特に集合${ x in X mid(|) x in.not A } = X\\A$を$A$の_補集合_といい$A^c$と表す。
  この時の$X$を_全体集合_と表現することがある。
]
命題の演算の性質に対応して集合の演算には次の性質がある。

+ （結合法則）任意の集合$A$, $B$, $C$に対して、$(A sect B) sect C = A sect (B sect C)$, $(A union B) union C = A union (B union C)$が成り立つ。
+ （交換法則）任意の集合$A$, $B$に対して、$A sect B = B sect A$, $A union B = B union A$が成り立つ。
+ （分配法則）任意の集合$A$, $B$, $C$に対して、$A sect (B union C) = (A sect B) union (A sect C)$, $A union (B sect C) = (A union B) sect (A union C)$が成り立つ。
+ 任意の集合$A$に対して、$(A^c)^c = A$が成り立つ。
+ （ド・モルガンの法則）任意の集合$A$, $B$に対して、$(A sect B)^c = A^c union B^c$, $(A union B)^c = A^c sect B^c$が成り立つ。

== 写像の像と逆像

写像は集合の元を別の集合の元に対応させるものであるが、そこから発展させて部分集合を対応させることを考えることが今後必要になってくる。

#block[
$F$を集合$X$から集合$Y$への写像として、$A$を$X$の部分集合、$B$を$Y$の部分集合とする。

- 集合${ F(x) mid(|) x in A }$は$Y$の部分集合であり$A$の$F$による_像_といい$F(A)$と表す。

- 集合${ x in X mid(|) F(x) in B }$は$X$の部分集合であり$B$の$F$による_逆像_といい$F^(- 1) (A)$と表す。

]

#block[
$f(x) = x^2$を考えると、$f({0, 1}) = {0, 1}$,
$f({0, 1, -1}) = {0, 1}$。
また、$f^(-1) ({0, 1}) = {0, 1, -1}$,
$f^(-1) ({-1}) = nothing$。
]

写像の像と逆像については以下の性質がある。
ただし、$F$は集合$X$から集合$Y$への写像である。

+ 任意の$X$の部分集合$A_1 , A_2$に対して、$A_1 subset A_2$ならば$F(A_1) subset F(A_2)$が成り立つ。
+ 任意の$Y$の部分集合$B_1 , B_2$に対して、$B_1 subset B_2$ならば$F^(-1) (B_1) subset F^(-1) (B_2)$が成り立つ。
+ 任意の$X$の部分集合$A_1 , A_2$に対して、$F(A_1 sect A_2) subset F(A_1) sect F(A_2)$が成り立つ。
+ 任意の$X$の部分集合$A_1 , A_2$に対して、$F(A_1 union A_2) = F(A_1) union F(A_2)$が成り立つ。
+ 任意の$Y$の部分集合$B_1 , B_2$に対して、$F^(-1) (B_1 sect B_2) = F(B_1) sect F(B_2)$が成り立つ。
+ 任意の$Y$の部分集合$B_1 , B_2$に対して、$F^(-1) (B_1 union B_2) = F(B_1) union F(B_2)$が成り立つ。
+ 任意の$X$の部分集合$A$に対して、$F^(-1) (F (A)) supset A$が成り立つ。
+ 任意の$Y$の部分集合$B$に対して、$F (F^(-1) (B)) subset B$が成り立つ。

== 逆写像

写像には可逆と呼ばれる特殊な扱いのできるものがある。

#block[
$F$を集合$X$から集合$Y$への写像とする。
集合$Y$から集合$X$への写像$G$であって、任意の$x in X$に対して$G(F(x)) = x$と、任意の$y in Y$に対して$F(G(y)) = y$が成り立つとき、$F$は_可逆_であるといい$G$は$F$の_逆写像_という。
また、逆写像$G$を$F^(- 1)$と表す。
]

つまり、$F^(-1) (F(x)) = x$, $F(F^(-1) (y)) = y$である。
逆写像は存在すれば一つしかない。
逆像も逆写像も同じ記号$F^(-1)$を用いるがそれぞれ集合の元と部分集合を当てはめて対象が違う概念である。
とはいえ可逆つまり逆写像がある写像に対しては$F^(-1) ({y}) = { F^(-1) (y) }$という関係式が成り立つ。
ここで、左辺の$F^(-1)$は逆像であり右辺の$F^(-1)$は逆写像として用いられている。

可逆は全単射とも呼ばれ、次の特徴づけがある。

#block[
集合$X$から集合$Y$への写像$F$が可逆であることは次の二つの条件が成り立つことと同値である。

+ （全射性）$F(X) = Y$である。
  すなわち、任意の$y in Y$に対してある$x in X$が存在して$F(x) = y$が成り立つ。
+ （単射性）任意の$y in Y$に対して$F(x) = y$となる$x in X$は一意である。
  すなわち$x_1, x_2 in X$が$F(x_1) = F(x_2)$を満たすならば$x_1 = x_2$が成り立つ。
]
#block[
$F$が可逆の時、逆写像$F^(-1)$が存在する。
全射性を示すために$y in Y$を取ると$x = F^(-1) (y)$とすることで$F(x) = F(F^(-1) (y)) = y$。
よって$F (X) supset Y$なので、$F(X) = Y$である。
単射性を示すために$F(x_1) = F(x_2)$を満たす$x_1, x_2 in X$を取ると$x_1 = F^(-1) (F (x_1)) = F^(-1) (F(x_2)) = x_2$である。
以上より全射性と単射性が示された。

逆に$F$が全射性と単射性を満たす時、$y in Y$に対して$F(x) = y$となる$x$が一意に存在するのでそれを$G(y)$とおいて$Y$から$X$への写像$G$を定める。
この時、$F(G(y)) = y$であり$G(F(x)) = G(y) = x$なので、$G$は$F$の逆写像となっている。
]
