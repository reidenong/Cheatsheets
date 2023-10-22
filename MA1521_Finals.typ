#set page(
    columns: 2, 
    margin : 3%,
)
#set text(
    size: 7pt    
)

= MA1521 Finals Cheatsheet

== 1. Limits
=== 1.2 Continuity
_f_ is continous at _x_ = _c_ if 
1. $lim_(x->c) f(x)$  exists
2. $lim_(x->c) f(x) = f(c)$
- Differentiability implies continuity

=== 1.3 Leading terms
$
lim_(x -> plus.minus infinity) P(x)/Q(x) = lim_(x -> plus.minus infinity) (A x^alpha) / (B x^beta) =
\
0, alpha < beta\
A/B, alpha = beta\
plus.minus infinity, alpha > beta
$
=== 1.4 Trigonometric identities
if $ lim_(x->c)g(x) = 0$,
$
lim_(x->c)(g(x))/(sin(g(x))) = lim_(x->c)sin(g(x))/g(x) = 1
\
lim_(x->c)(g(x))/(tan(g(x))) = lim_(x->c)(tan(g(x)))/(g(x)) = 1
$

=== 1.6 Squeeze theorem
if $f(x) <= g(x) <= h(x)$ and $lim_(x->c)f(x) = lim_(x->c)h(x) = L$, then $lim_(x->c)g(x) = L$

=== 1.7 Intermediate value theorem
if $f(x)$ is continous on $[a,b]$ and $f(a) < 0 < f(b)$, then there exists $c$ in $[a,b]$ such that $f(c) = 0$

== 2. Derivatives
=== 2.1 Definition
$f'(x) = lim_(h->0) (f(x+h) - f(x))/h$

=== 2.2 Standard Derivatives
#table(
  columns: (48%, 48%),
  inset: 7pt,
  align: center,
    [*$f(x)$*], [*$f'(x)$*],
    [$tan(x)$],[$sec^2(x)$],
    [$sec(x)$],[$sec(x)tan(x)$],
    [$csc(x)$],[$-csc(x)cot(x)$],
    [$cot(x)$],[$-csc^2(x)$],
    [$sin^(-1)x$],[$1/(sqrt(1-x^2))$],
    [$cos^(-1)x$],[$-1/sqrt(1-x^2)$],
    [$tan^(-1)x$],[$1/(1+x^2)$],
    [$cot^(-1)x$],[$-1/(1+x^2)$],
    [$sec^(-1)x$],[$1/(abs(x)sqrt(x^2-1)), abs(x) > 1$],
    [$csc^(-1)x$],[$-1/(abs(x)sqrt(x^2-1)), abs(x) > 1$],
    [$a^x,  a in RR$],[$a^x ln(a)$]
)

*Rules of Differentiation*\
Product rule:
$
d/(d x) (f(x)g(x)) = f'(x)g(x) + f(x)g'(x)  
$

Quotient rule:
$
d/(d x) (f(x)/g(x)) = (f'(x)g(x) - f(x)g'(x))/(g(x))^2
$

== 3. Applications of Differentiation
=== 3.2 Increasing and decreasing Functions
$f'(x) > 0$ on $(a,b) ->  f$ is increasing on $(a,b)$\
$f'(x) < 0$ on $(a,b) ->  f$ is decreasing on $(a,b)$\

=== Critical points 
a number $c$ in function _f_ is a critical point if\
1. it is not a end point and
2. $f'(c) = 0$ or $f'(c)$ does not exist

=== 3.8 Rolle's Theorem and Mean Value Theorem
*Rolle's Theorem:*\
if $f$ is continous on $[a,b]$ and differentiable on $(a,b)$ and $f(a) = f(b)$,\
then there exists $c$ in $(a,b)$ such that $f'(c) = 0$\
*Mean Value Theorem:*\
if $f$ is continous on $[a,b]$ and differentiable on $(a,b)$,\ then there exists $c$ in $(a,b)$ such that $f'(c) = (f(b) - f(a))/(b-a)$

== 4.Integrals
=== 4.2 Standard Integrals
#table(
  columns: (45%, 45%),
  inset: 10pt,
  align: center,
    [$integral 1/(a x + b) d x$],[$1/a ln abs(a x + b) + C$],
    [$integral tan(a x + b) d x $],[$1/a ln abs(sec(a x + b)) + C$],
    [$integral sec(a x + b) d x $], [$1/a ln abs(sec(a x + b) + tan(a x + b)) + C$],
    [$integral csc(a x + b) d x$], [$-1/a ln abs(csc(a x + b) + cot( a x + b)) + C$],
    [$integral cot(a x + b) d x$], [$-1/a ln abs(csc(a x + b)) + C$],
    [$integral sec^2(a x + b) d x$], [$1/a tan(a x + b) + C$],
    [$integral csc^2(a x + b) d x $], [$-1/a cot(a x + b) + C$],
    [$integral sec(a x + b) tan (a x + b) d x $],[$ 1/a sec(a x + b) + C$],
    [$integral csc(a x + b) cot ( a x + b) d x$],[$-1/a csc(a x + b) + C$],
    [$integral 1/(a^2 + (x + b)^2) d x$], [$1/a tan^(-1)(x+b)/a + C$],
    [$integral 1/sqrt(a^2 - (x + b)^2) d x$],[$sin^(-1) (x + b)/a + C$],
    [$integral -1/sqrt(a^2 - (x + b)^2) d x$],[$cos^(-1)(x+b)/a + C$],
    [$integral 1/(a^2 - (x+b)^2) d x$],[$1/(2a) ln abs((x + b + a)/(x + b - a)) + C$],
    [$integral 1/((x+b)^2 - a^2) d x$],[$1/(2a) ln abs((x + b -a)/(x + b + a)) + C$],
    [$integral 1/sqrt((x+b)^2 + a^2) d x$],[$ln abs((x + b) + sqrt((x + b)^2 + a^2)) + C$],
    [$integral 1/sqrt((x+b)^2 - a^2) d x$],[$ln abs((x + b) + sqrt((x + b)^2 - a^2)) + C$],
    [$integral sqrt(a^2 - x^2) d x$],[$x/2 sqrt(a^2-x^2) + a^2/2sin^(-1)x/a + C$],
    [$integral sqrt(x^2 - a^2) d x$],[$x/2 sqrt(x^2 - a^2) + a^2/2ln abs(x + sqrt(x^2 - a^2)) + C$]
)

=== 4.3 Partial Fractions
$
(p x + q)/((a x + b)(c x + d)) = A/(a x + b) + B/(c x + d)
\
\
(p x^2 + q x + r)/((a x + b)(c x + d)^2) = A/(a x + b) + B/(c x + d) + C/(c x + d)^2
\
\
(p x^2 + q x + r)/((a x + b) (x^2 + c^2)) = A/(a x + b) + (B x + C)/(x^2 + c^2)
$


=== 4.4 Integration by Substitution
*Trigonometric Substitution*\
#table(
  columns: (45%, 45%),
  inset: 10pt,
  align: center,
    [$sqrt(a^2 - x^2)$],[$x = a sin theta$],
    [$sqrt(x^2 + a^2)$],[$x = a tan theta$],
    [$sqrt(x^2 - a^2)$],[$x = a sec theta$]
)
=== 4.5 Integration by Parts
$integral u d v = u v - integral v d u$
#table(
  columns: (45%, 45%),
  align: center,
    [Logarithmic],[differentiate it],
    [Inverse Trigonometric],[differentiate it],
    [Algebraic],[differentiate it],
    [Trigonometric],[differentiate or integrate it],
    [Exponential],[integrate it]
)

=== 4.6 Riemann Sums and Definite Integrals
*Formula for Riemann Sum:*\
$
integral_a^b f(x) d x = lim_(n->infinity) sum_(i=1)^n (b-a)/n dot f(a + (b-a)i/n)
$\

=== 5.2 Volumes of revolution
*Disk method:*\
When the curve of $y = f(x)$ is rotated about the x-axis, the volume of the resulting solid is\
$
V = pi integral_a^b (f(x))^2 d x
$\
*Cylindrical Shell method*\
When the curve of $y = f(x)$ is rotated about the y-axis, the volume of the resulting solid is\
$
V = 2 pi integral_a^b x abs(f(x)) d x
$

=== 5.4 Arc length of a curve
The length of a curve $y = f(x), a <= x <= b,$ is given by
$
integral_a^b sqrt(1 + (f'(x))^2) d x
$

== 6. Sequences and Series
=== 6.2 Series Properties
Lemma 6.4:\
If $sum_(n=1)^infinity a_n$ converges, then $lim_(n->infinity) a_n = 0$.\
\

*Theorem 6.5: n-th term test for divergence*\
If $lim_(n->infinity) a_n$ does not exist or is not equal to 0, then $sum_(n=1)^infinity a_n$ diverges.\
\

*Theorem 6.7: Integral test*\
If $f$ is a continuous, positive, decreasing function on $[1,infinity)$, then the series $sum_(n=1)^infinity f(n)$ and the improper integral $integral_1^infinity f(x) d x$ either both converge or both diverge.\
\

*Theorem 6.8: p-series test*\
The series $sum_(n=1)^infinity 1/n^p$ converges if $p > 1$ and diverges if $p <= 1$.\
\

*Theorem 6.9: Comparison Test*\
Suppose $0 <= a_n <= b_n$ for all $n >= N$ and\
1. $sum_(n=1)^infinity b_n$ converges. Then $sum_(n=1)^infinity a_n$ converges.\
2. $sum_(n=1)^infinity a_n$ diverges. Then $sum_(n=1)^infinity b_n$ diverges.\
\

*Theorem 6.10/6.11: Ratio/Root Test*\
$
lim_(n->infinity) abs(a_(n+1)/a_n) = L, o r lim_(n->infinity) (abs(a_n))^(1/n) = L
$
1. If $0 <=L < 1$, then $sum_(n=1)^infinity a_n$ converges absolutely ($sum_(n=1)^infinity abs(a_n)$ converges).\
2. If $L > 1$ then $sum_(n=1)^infinity a_n$ diverges.\
3. If $L = 1$, then the test is inconclusive.\
\

*Theorem 6.12: Alternating Series Test*\
If $a_n >= 0$ for all $n$ and $lim_(n->infinity) a_n = 0$ and $a_n$ is decreasing, then the alternating series $sum_(n=1)^infinity (-1)^(n+1) a_n$ converges.\
\

=== 6.10 Power Series
*Theorem 6.14: Characteristics of Power Series*\
For a given power series $sum_(n=0)^infinity c_n (x - a)^n$, either\
1. The series converges only when $x = a$.\
2. The series converges for all $x$.\
3. There exists a positive number $R$ such that the series converges absolutely if $abs(x - a) < R$ and diverges if $abs(x - a) > R$, where _R_ is the _Radius of Convergence_\
- The interval of convergence is then $[a - R, a + R]$.\

*Theorem 6.15: Calculating the Radius of Convergene*\
Consider the power series $sum_(n=0)^infinity c_n (x - a)^n$.\
$
lim_(n->infinity) abs(c_(n+1)/c_n) = L, o r lim_(n->infinity) (abs(c_n))^(1/n) = L
$
Then the radius of convergence $R = 1/L$\
\

=== 6.12 Taylor and Maclaurin Series
If $f$ has a power series representation at $x = a$, then it has a Taylor Series of the form\
$
f(x) = sum_(n=0)^infinity (f^(n)(a))/n! (x - a)^n
$
The Maclaurin series is the Taylor series at $x = 0$.\
$
f(x) = sum_(n=0)^infinity (f^(n)(0))/n! x^n
$
*Common Maclaurin Expansions*\
#table(
  columns: (45%, 45%),
  align: center,
    [$e^x$],[$sum_(n=0)^infinity x^n/n!$],
    [$sin x$],[$sum_(n=0)^infinity (-1)^n x^(2n+1)/(2n+1)!$],
    [$cos x$],[$sum_(n=0)^infinity (-1)^n x^(2n)/(2n)!$],
    [$ln(1+x)$],[$sum_(n=1)^infinity (-1)^(n+1) x^n/n$],
    [$1/(1-x)$],[$sum_(n=0)^infinity x^n$],
    [$1/(1+x)$],[$sum_(n=0)^infinity (-1)^n x^n$],
    [$1/(1+x^2)$],[$sum_(n=0)^infinity (-1)^n x^(2n)$]
)

== 7. Vectors and Geometry of Space
*Theorem 7.2: Equation of a Sphere*\
The equation of a sphere with center $(h,k,l)$ and radius $r$ is\
$
(x - h)^2 + (y - k)^2 + (z - l)^2 = r^2
$

=== 7.3 Dot Product
$
bold(a) dot bold(b) = norm(bold(a)) norm(bold(b)) cos theta
$

=== 7.4 Projections
*Projection of $bold(b)$ onto $bold(a)$ :*\
$
c o m p_(bold(a)) bold(b) = norm(bold(b)) cos theta =(bold(a) dot bold(b))/norm(bold(a))
$
*Distance from a point to a plane : *\
for point $P(x_0, y_0, z_0)$ to the plane $a x + b y + c z = d$ is
$
abs(a x_0 + b y_0 + c z_0 - d)/sqrt(a^2 + b^2 + c^2)
$

=== 7.5 Cross Product
$
bold(a) times bold(b) = norm(bold(a)) norm(bold(b)) sin theta
$
$
bold(a) = vec(a_1, a_2, a_3), bold(b) = vec(b_1, b_2, b_3), bold(a) times bold(b) = vec(a_2 b_3 - a_3 b_2, a_3 b_1 - a_1 b_3, a_1 b_2 - a_2 b_1)
$

