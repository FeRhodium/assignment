#let title = [
	MAT1002 Calculus II\ Assignment 3
]

#import "../../main.typ"
#main.content(title, [

10.7.22

(a)

$ lim_(n -> oo) abs(9^(n + 1)/9^n (3n)/(3(n + 1)) (x - 2)^(n + 1)/(x - 2)^n) = abs(9x - 18) < 1 ==> x in (17/9, 19/9) $

when $x = 17/9$, $sum 1/(3n)$ diverges, when $x = 19/9$, $sum (-1)^(n)/(3n)$ converges.

which imply $R = 1/9$, converges absolutely in $(17/9, 19/9)$, converges conditionally when $x = 19/9$.

10.7.28

$ lim_(n -> oo) abs(((-2)^(n + 1)(n + 2)(x - 1)^(n + 1))/((-2)^n (n + 1)(x - 1)^n)) = abs(2x - 2) < 1 ==> x in(1/2, 3/2) $

when $x = 1/2$, $sum n + 1$ diverges, when $x = 3/2$, $sum -(n + 1)$ diverges.

which imply $R = 1/2$, converges absolutely in $(1/2, 3/2)$.

10.7.29

$ lim_(n -> oo) abs((x^(n + 1) n ln^2n)/(x^n (n + 1)ln^2(n + 1))) = abs(x)lim_(n -> oo) n/(n + 1) lim_(n -> oo) ((1/n)/(1/(n + 1)))^2 = abs(x) < 1 ==> x in (-1, 1) $

when $x = -1$, $sum (-1)^n/(n ln^2 n)$ converges, when $x = 1$, $sum 1/(n ln^2 n)$ converges.

which imply $R = 1$, converges absolutely in $[-1, 1]$.

10.7.30

$ lim_(n -> oo) abs((x^(n + 1) n ln n)/(x^n (n + 1)ln(n + 1))) = abs(x)lim_(n -> oo) n/(n + 1) lim_(n -> oo) (1/n)/(1/(n + 1)) = abs(x) < 1 ==> x in (-1, 1) $

when $x = -1$, $sum (-1)^n/(n ln n)$ converges, when $x = 1$, $sum 1/(n ln^2 n)$ diverges.

which imply $R = 1$, converges absolutely in $(-1, 1)$, converges conditionally when $x = -1$.

10.7.36

$ sum_(n = 1)^oo (sqrt(n + 1) - sqrt(n))(sqrt(n + 1) + sqrt(n))/(sqrt(n + 1) + sqrt(n))(x - 3)^n = sum_(n = 1)^oo (x - 3)^n/(sqrt(n + 1) + sqrt(n))  $

$ lim_(n -> oo) abs(((x - 3)^(n + 1)(sqrt(n + 1) + sqrt(n)))/((x - 3)^n (sqrt(n + 2) + sqrt(n + 1)))) = abs(x - 3) < 1 ==> x in (2, 4) $

when $x = 2$, $sum (-1)^n/(sqrt(n + 1) + sqrt(n))$ converges, when $x = 4$, $sum 1/(sqrt(n + 1) + sqrt(n))$ diverges.

which imply $R = 1$, converges absolutely in $(2, 4)$, converges conditionally when $x = 2$.

10.7.37

$ lim_(n -> oo) abs((n + 1)!/n! (3 times 6 times dots.c times 3n)/(3 times 6 times dots.c times 3(n + 1)) x^(n + 1)/x^n) = abs(x/3) < 1 ==> x in (-3, 3) ==> R = 3 $

10.7.46

$sum x^n$ converges when $x in (-1, 1)$, which means $ln x in (-1, 1) ==> x in (1/e, e)$,

$ sum_(n = 0)^oo ln^n x = 1/(1 - ln x) $

10.7.48

$ (x^2 - 1)/2 < 1 ==> x in (-sqrt(3), sqrt(3)) $

$ sum_(n = 0)^oo ((x^2 - 1)/2)^n = 1/(1 - (x^2 - 1)/2) = 2/(3 - x^2) $

10.7.50

a.

$ f(x) = 5/3 times 1/(1 - 1/3 x) = sum_(n = 0)^oo 5/3 (1/3 x)^n $

$abs(1/3 x) < 1 ==> x in (-3, 3)$

b.

$ g(x) = -3/2 times 1/(1 - 1/2 x) = sum_(n = 0)^oo -3/2 (1/2 x)^n $

$abs(1/2 x) < 1 ==> x in (-2, 2)$

10.7.51

a.

$ f(x) = -5/2 1/(1 - 1/2(5 - x)) = sum_(n = 0)^oo -5/2 ((5 - x)/2)^n $

$abs((5 - x)/2) < 1 ==> x in(3, 7)$

b.

$ g(x) = 1/(1 - 1/3(5 - x)) = sum_(n = 0)^oo ((5 - x)/3)^n $

$abs((5 - x)/3) < 1 ==> x in (2, 8)$

10.7.53

$abs((3 - x)/2) < 1 ==> x in(1, 5)$

$ sum_(n = 0)^oo ((3 - x)/2)^n = 1/(1 - (3 - x)/2) = 2/(x - 1) = f(x). $

$ f'(x) = sum_(n = 0)^oo -(n + 1)/2 ((3 - x)/2)^n $

converges in $(1, 5)$.

$ f'(x) = -2/(x - 1)^2 $

10.7.54

$ integral f(x) dif x = sum_(n = 1)^oo  -2((3 - x)/2)^n/(n) $

converges in $(1, 5)$, when $x = 1$, $sum -2/n $ diverges, when $x = 5$, $sum (-1)^n/n$ converges. which means series converges in $(1, 5]$.

$ integral f(x) dif x = 2 ln abs(x - 1) + C $

$ 2 ln abs(3 - 1) + C = 3 ==> integral f(x) dif x = 2 ln abs(x - 3) + 3 - ln 4 $

10.7.58

(a)

$ (ln abs(sec x + tan x))' = sec x ==> ln abs(sec x + tan x) = x + x^3/6 + x^5/24 + 61/5040 x^7 + 277/72576 x^9 + dots.c $

converges in $(-pi/2, pi/2)$

(b)

$ (sec x)' = sec x tan x = x + 5/6 x^3 + 61/120 x^5 + 277/1008 x^7 + dots.c $

10.8.4

$ f'(x) = 1/(x + 1), f''(x) = - 1/(x + 1)^2, f'''(x) = 2/(x + 1)^3 $

$ f(x) = x - x^2/2 + x^3/3 - dots.c $

10.8.10

$ f'(x) = -1/2 (1 - x)^(-1/2), f''(x) = -1/4 (1 - x)^(-3/2), f'''(x) = -3/8 (1 - x)^(-5/2) $

$ f(x) = 1 - 1/2 x - 1/8 x^2 - 1/16 x^3 - dots.c $

10.8.14

$ (2 + x)/(1 - x) = 3/(1 - x) - 1 = 2 + sum_(n = 1)^oo 3 x^n $

10.8.24

$ f'(x) = 6x^2 + 2x + 3, f''(x) = 12 x + 2, f'''(x) = 12 $

$ f(x) = -2 + 11(x - 1) + 7(x - 1)^2 + 2(x - 1)^3 $

10.8.31

$ f(x) = -sin 2x， f'(x) = -2 cos 2x, f''(x) = 4 sin 2x, dots.c, f^((2n))(x) = (-4)^n sin 2x $

$ ==> f(x) = sum_(n = 0)^oo (-4)^(n)/((2n)!)(x - pi/4)^(2n) $

10.8.37

$ (e^x)^((n)) = e^x ==> e^x = e^a + e^a(x - a) + e^a/2(x - a)^2 + dots.c = e^a (1 + (x - a) + (x - a)^2/2 + dots.c) $

10.8.40

$ E(x) = f(x) - sum_(n = 0)^oo b_n (x - a)^n ==> E(a) = f(a) - b_0 = 0 ==> b_0 = f(a) $

$ lim_(x -> a) (f'(x) - sum_(n = 0)^oo b_(n + 1) (n + 1)(x - a)^n)/(n(x - a)^(n - 1)) = 0 ==> b_1 = f'(x) $
$ lim_(x -> a) (f''(x) - sum_(n = 0)^oo b_(n + 2) (n + 1)(n + 2)(x - a)^n)/(n(n - 1)(x - a)^(n - 2)) = 0 ==> b_2 = 1/2f''(x) $

$ dots.c $

Thus $b_n = (f^((n))(a))/n!$,

$ g(x) = sum_(n = 0)^oo (f^((n))(a))/n! (x - a)^n $

10.9.4

$ sin((pi x)/2) = sum_(n = 0)^oo (-1)^n/(2n + 1)! ((pi x)/2)^(2n + 1) $

10.9.8

$ arctan x = integral (dif x)/(1 + x^2) = integral sum_(n = 0)^oo (-x^2)^(n) dif x = sum_(n = 0)^oo (-1)^n (x^(2n + 1))/(2n + 1) $

$ arctan (3 x^4) = sum_(n = 0)^oo (-1)^n (3x^4)^(2n + 1)/(2n + 1) $

10.9.18

$ sin^2 x = 1/2(1 - cos 2x) = 1/2 sum_(n = 1)^oo (-4)^n/(2n)! x^(2n) $

10.9.23

$ x arctan x^2 = x(sum_(n = 0)^oo (-1)^n x^(4n + 2)/(2n + 1)) = sum_(n = 0)^oo (-1)^n x^(4n + 3)/(2n + 1) $

10.9.34

$ sin arctan x = (x - x^3/3 + x^5/5 - x^7/7 + dots.c) - 1/6 (x - x^3/3 + dots.c)^3 + 1/120 (x - x^3/3 + dots.c)^5 - 1/5040 (x + dots.c)^7 \ = x - x^3/2 + 3/8 x^5 - 5/16 x^7 + dots.c $

10.9.47

(a)

$f(x) - f(a) = (f''(c_2))/2 (x - a)^2 <= 0 ==> f(x) <= f(a)$ throughout an interval, which means $f$ has a local maximum at $a$.

(b)

$f(x) - f(a) = (f''(c_2))/2 (x - a)^2 >= 0 ==> f(x) >= f(a)$ throughout an interval, which means $f$ has a local minimum at $a$.

10.9.49

(a)

$ f'(x) = k(1 + x)^(k - 1), f''(x) = k(k - 1)(1 + x)^(k - 2) $

$ Q(x) = 1 + k x + (k(k - 1))/2 x^2 $

(b)

$ R(x) = (3!)/3! x^3 < 0.01 ==> 0 < x < 0.21554 $

10.9.51

$ f^((k)) (x) = sum_(n = k)^oo n!/k! a_n x^(n - k) ==> f^((k)) (0) = k! a_k ==> a_k = (f^((k)) (0))/k! $

which the coefficients are equivalant.

10.9.52

(a)

$f(x)$ even $==> f'(x)$ odd $==> f'(0) = 0 ==> f^((2k + 1))(0) = 0$ for all nonnegative integer $k$, which means for all even powers of $x$, the Taylor series contains at $x = 0$.

(b)

$f(x)$ odd $==> f'(x)$ even $==> f(0) = 0 ==> f^((2k))(0) = 0$ for all nonnegative integer $k$, which means for all odd powers of $x$, the Taylor series contains at $x = 0$.

])