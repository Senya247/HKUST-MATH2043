#set page(
    paper: "a4",
)

#set text(font: "Times New Roman")
#set par(justify: true)
// #set math.lr(size: 1em)


#let indent = pad.with(left: 1em)

#let liminf = math.op(math.underline(math.lim), limits: true)
#let limsup = math.op(math.overline(math.lim), limits: true)

#let numbered_eq(content) = math.equation(
    block: true,
    numbering: "(1)",
    content,
)

#show title: set text(size: 17pt)
#show title: set align(center)
#show title: set block(below: 1.2em)

#show grid: set block(below: 5em)

#show heading.where(level: 2): it => text(
    size: 10pt,
    it.body + h(0.67em),
)

#show heading.where(level: 3): it => text(
    size: 10pt,
    v(1em) + it.body + h(0.67em),
)

#show heading.where(level: 4): it => text(
    size: 10pt,
    v(1em) + it.body + h(0.67em),
)

#show regex("\bsup\b"): it => {
    it.text
    h(0.2em)
}


#show regex("\binf\b"): it => {
    it.text
    h(0.2em)
}

#title[
    MATH2043 HW1
]

#grid(
    columns: 1fr,
    align(center)[
        Agastya Singh \
        #link("mailto:asinghao@connect.ust.hk") \
        21103283
    ]
)

== §1.8(5)
Let $epsilon_1 = 2 epsilon$. For any $epsilon>0, exists N: |x_n-l|<=2 epsilon equiv |x_n-l|<=epsilon_1$.
Since $epsilon_1 = 2 epsilon$, The second statement is true for all $epsilon_1>0$.

== §1.15
For all $epsilon>0$, There is $N$ such that for all $n>N$, $|x_n - l|<epsilon$. For
even $n$, $exists k: 2 k = n$. \
Hence, above implies $x_(2k)-l|<epsilon$. For odd $n$, $exists k: 2 k + 1 = n$. Hence, $|x_(2k+1) - l|<epsilon$. \
For the converse, there exists $K_1$ such that $k>=K_1 => |x_(2k)-l| < epsilon$,
and $K_2$ such that $k>=K_2 => |x_(2k+1)-l| < epsilon$. Set $N = max{2K_1, 2K_2+1}$.
FOr any $n>N$,\
if $n$ is even, write $n = 2k$. Since $n>2K_1$, $k>K_1$ so $|x_(2k)- l| < epsilon$. \
if $n$ is odd, write $n = 2k+1$. Since $n>2K_2+1$, $k>K_2$ so $|x_(2k+1)- l| < epsilon$.

== §1.19
The error in this proof is assuming $lim_(n->infinity) x_n$ exists and performing
mathematical operations on it.

== §1.22
No, the converse is not true. Consider
$ x_n = cases(n "if" n "is even", 0 "if" n "is odd") $
The sequence is obviously unbounded, but the sequence does not tend to infinity.

== § 1.31(1)
Suprema is $2+sqrt(3)$.

== § 1.31(4)
No suprema, set $n$ to $1$, $m$ is has no upper bound, making $m / n$ grow to infinity.

== §1.33
=== =>
#indent[
    === 1
    supremum is the least *upper bound*, therefore if $lambda$ = $"sup"X, x<=lambda$ for all $x in X$. \
]
#indent[
    === 2
    Let $x_n = 1/n$. For every $n$, we have $r in X$ such that $lambda - x_n<r<lambda$, because otherwise $lambda$ would not be the least upper bound. $lambda - x_n ->lambda$.
]

== §1.34(8)
$|x - y| <= c => x-y<=c$. For any $epsilon>0$, choose $x_epsilon: x_epsilon > "sup"X - epsilon$.
We have
$ x_epsilon-y<=c => "sup"X-c-epsilon<=y "for all" y in Y. $
sup$X - c - epsilon$ is a lower bound of $Y$. Therefore,
$
    & "sup"X - epsilon - c <= "inf"Y \
$
and it follows that
$
    & "sup"X - epsilon - c <= "sup"Y \
$
it can be concluded that
$
    "sup"X - "inf"Y & <= c"" \
    "sup"X - "sup"Y & <= c \
$
Symmetrically, $"sup"Y - "inf"X <= c$ and $"sup"Y - "sup"$. Hence, $|"sup"X-"inf"Y|<=c$ and #linebreak()$|"sup"X-"sup"Y|<=c$. \
Conversely,
$ "inf"X & <=x<="sup"X ", and" "inf"Y<=y<="sup"Y \
   x-y & <="sup"X-"sup"Y <= c $:
Symmetrically, $y-x<=c$. $square$

== §1.40
By Bolzano-Weierstrass, there is a convering subsequence $x_n_k$. Consider $y_n_k$, Since $y_n$ is bounded, so is $y_n_k$, therefore, it has a converging subsequence $y_n_k_i$. $x_n_k_i$ also converges.For somplicity, let $m_i = n_k_i$, then $m_i$ is the common index. \
To extend this to an arbitrary number of sequences, we use induction. Let the sequences be $x_n^{1}, x_n^{2}, dots.h, x_n^{r}$. Base cause is $r=1$, trivial by Bolzano-Weierstrass. Assume true for $r$, then there is a common index sequence $n_k$ such that $attach(x, tr: {1}, br: n_k), attach(x, tr: {2}, br: n_k), dots.h, attach(x, tr: { r }, br: n_k)$ all converge. Consider the sequence $attach(x, tr: {r+1}, br: n_k)$. It has a converging subsequence $attach(x, tr: {r+1}, br: n_k_i)$. Now let $m_i=n_k_i$. For $r'<=r, attach(x, tr: {r'}, br: m_i)$ converges. The new common index is $m_i$.

== §1.45(5)
The function is periodic for every 12 indices. Let
$
    x_n & = ((12k+r)sin(( (12k+r)pi )/3))/((12k+r)cos(( (12k+r)pi) /2)+2) \
$
Let $n = 12k+r$ for some $k, r in NN$ (including 0). We get
$
    x_n = x_(12k+r)& = ((12k+r)sin(( (12k+r)pi )/3))/((12k+r)cos(( (12k+r)pi) /2)+2) \
    &=((12k+r)sin(( r pi )/3))/((12k+r)cos((r pi)/2)+2)
$
As $k -> infinity$, this approaches $sin((r pi)/3)/cos((r pi)/2)$, for $r in {0, 2, dots.h, 11$}. Computing the value of the function for all $12$ of these, we see that $"LIM"{x_n} = {-sqrt(3)/2, 0, sqrt(3)/2}$.

== §1.45(8)
Let
$
    x_n = root(n, 2^n+3^((-1)^n n))
$
For even $n = 2k$,
$
    x_n = x_(2k) & = root(2k, 2^(2k)+3^(2k)) \
                 & = 3root(2k, (2/3)^(2k)+1)
$

As $k -> infinity$, $x_(2k)$ approaches $3$. \
For odd $n = 2k+1$,

$
    x_n = x_(2k+1) & = root(2k+1, 2^(2k+1)+3^(- (2k+1) )) \
                   & = 2root(2k+1, (1/6)^(2k+1)+1)
$
As $k -> infinity$, $x_(2k+1)$ approaches $2$.\
Therefore, $"LIM"{x_n} = {2, 3}$.


== §1.46

#indent[
    === 1. $"LIM"{x_n} union "LIM"{y_n} subset.eq "LIM"{z_n}$ \
    Assume $l in { x_n }$, then there is a subsequence ${x_n_k}$ converging to $l$. Since ${x_n} in {z_n}$, #box[ ${x_n_k} in {z_n}$ ]. Symmetrical argument for $y_n$. \
    === 2. $"LIM"{z_n} subset.eq "LIM"{x_n} union "LIM"{y_n}$ \
    Assume $l in {z_n}$,  then there is a subsequence ${z_n_k}$ converging to $l$. \
    #indent[
        ==== Case 1:${z_n_k}$ contains infinte terms from ${x_n}$ \
        Then, for some $K$,  there is a sequence ${x_m_k}$ that has the exact same terms in the same order as ${z_n_k}$. \
        Let $J = {k: z_n_k in {x_n}}$. We can write for each $k in J$, $z_n_k = x_m_k$. Note that the indices ${m_k}$ are increasing, since order of ${x_n}$ is preserved in ${z_n}$. It is clear that ${x_m_k}$ is a subsequence of ${x_n}$. Since ${x_m_k}$ converges to $l$, this means that $l in "LIM"{x_n}$.
        ==== Case 2:${z_n_k}$ contains infinte terms from ${y_n}$ \
        The proof is symmetrical.
    ]
]
$square$


== §1.48(5)
$limsup x_n = sqrt(3)/2$, $liminf x_n = -sqrt(3)/2$.

== §1.48(8)
$limsup x_n = 3$, $liminf x_n = 2$.

== §1.49(7)
Assime ${x_n}$ and ${y_n}$ are bounded. F, or all $m_k,n_k>=k>=N$, we have $x_m_k>=y_n_k$. By Bolzano Weierstrass, we know that there are convergent subsequnces $x_m_k_i$ and $y_n_l_i$, such that #box[${x_m_k_i}>={y_n_l_i}$]. By the order property, we have
#numbered_eq[
    $ lim_(i->infinity)x_m_k_i>=lim_(i->infinity)y_n_l_i $]

Since both ${x_m_k_i}$ and ${y_n_l_i}$ are subsequences of ${x_n}$ and ${y_n}$ respectively, we also have

#numbered_eq[
    $
                      limsup x_n & >= lim_(i->infinity)x_m_k_i \
        lim_(i->infinity)y_n_l_i & >= liminf y_n
    $]
Combining (1) and (2), we get

$
    limsup x_n >= liminf y_n
$
$square$

== §1.49(8)
This follow directly from 1.49(7), it is the contrapositive of (7).
$
    exists N forall m,n x_m>=y_n &=> limsup_(n->infinity) x_n>=liminf_(n->infinity)y_n \
    limsup_(n->infinity)x_n < liminf_(n->infinity)y_n &=>not(exists N forall m, n #h(0.2em) x_m>=y_n) \
    &=> forall exists m,n #h(0.2em) x_m<y_n
$
$square$

== §1.51
#indent[
    === 1
    Let $limsup_(n->infinity)abs(x_(n+1)/x_n) = r < 1$. We know that there must be an $N$ such that for all $n>N$, $abs(x_(n+1)/(x_n)) < r$. (Not sure if this needs to be proved, but in short, if there were infinitely many $abs(x_(n+1)/(x_n)) >= r$, then there would be a converging subsequence with limit $>=r$ which would belong to LIM, so contradiction). \
    for any $k>0$, we have
    $
        abs(x_(N+k)) & < r abs(x_(N+k-1)) < r^2 abs(x_(N+k-2)) < dots.h < r^k abs(x_N) \
        abs(x_(N+k)) & <r^k abs(x_N)
    $
    Since $abs(r)<1$, $r^k -> 0$. Thus, $abs(x_(N+k))->0$, and therefore $x_n->0$.
]
#indent[
    === 2
    Let $liminf_(n->infinity) abs(x_(n+1)/x_n) = r > 1$, There must be $N$ such that $n>N => abs(x_(n+1)/(x_n)) > r$.(Similar proof as the one above). Then
    $
        abs(x_(N+k)) & > r abs(x_(N+k-1)) > r^2 abs(x_(N+k-2)) > dots.h > r^k abs(x_N) \
        abs(x_(N+k)) & > r^k abs(x_N)
    $
    Hence $x_n->infinity$. $square$
]

== §1.55
#indent[
    Note that
    $
        abs(x_(n+1)/x_n)<=abs(y_(n+1)/y_n)=>abs(x_(n+1))/abs(x_n)<=abs(y_(n+1))/abs(y_n)
    $
    === 1
    By writing the inequality for the first few n, we see that
    $
            abs(x_2)/abs(x_1) & <= abs(y_2)/abs(y_1) \
            abs(x_3)/abs(x_2) & <= abs(y_3)/abs(y_2) \
                              & dots.v \
        abs(x_n)/abs(x_(n-1)) & <=abs(y_n)/abs(y_(n-1)) \
    $
    Multiplying the inequalities (since $x_n eq.not 0$), we get
    $
        abs(x_n)/abs(x_1) & <=abs(y_n)/abs(y_1) \
                 abs(x_n) & <=abs(y_n) abs(x_1)/abs(y_1) \
    $
    $c$ is $abs(x_1)/abs(y_1)$.

    === 2
    if $lim_(n->infinity) y_n = 0$, then $lim_(n->infinity)abs(y_n) = 0$. By squeeze theorem, we have #box[$lim_(n->infinity) abs(x_n)$ = 0].

    === 3
    We have $x_n<=abs(x_n)<=c abs(y_n)$. For any $M$, choose N such that for any $n>N => x_n/c>M$ (such $n$ exists, since $x_m->infinity$). We have
    $
        M<x_n/c<=abs(y_n)
    $
    Thus, $abs(y_n)->infinity$. $square$
]
