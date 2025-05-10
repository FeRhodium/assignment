#let title = [
	MAT1002 Calculus II\ Assignment 1
]

#import "../../main.typ"
#main.content(title, [

10.1.49

$ lim_(n -> oo) a_n = lim_(n -> oo) (ln(n + 1))/sqrt(n) = lim_(n -> oo) (2sqrt(n))/(n + 1) = 0 $

10.1.54

$ lim_(n -> oo) a_n = exp lim_(n -> oo) ln(1 - 1/n)/(1/n) = exp lim_(t -> 0) ln(1 - t)/t = exp lim_(t -> 0) -1/(1 - t) = 1/e $

10.1.64

$ lim_(n -> oo) 4^n/(n!) = lim_(n -> oo) (4/1 4/2 4/3 4/4) (4/5 4/6 dots 4/(n - 1) 4/n) = 0 $

and

$ -lim_(n -> oo) 4^n/(n!) <= lim_(n -> oo) (-4)^n/(n!) <= lim_(n -> oo) 4^n/(n!) $

by sandwich thereom,

$ lim_(n -> oo) a_n = 0 $

10.1.74

$ lim_(n -> oo) a_n = lim_(n -> oo) 1/((99/100)^n + (121/120)^n) = 0 $

10.1.80

$ lim_(n -> oo) a_n = exp lim_(n -> oo) (ln(3^n + 5^n))/n = exp lim_(n -> oo) (3^n ln 3 + 5^n ln 5)/(3^n + 5^n) = exp lim_(n -> oo) ((3/5)^n ln 3 + ln 5)/((3/5)^n + 1) = 5 $

10.1.84

$ lim_(n -> oo) a_n = exp lim_(n -> oo) (ln(n^2 + n))/n = exp lim_(n -> oo) (2n + 1)/(n^2 + n) = exp lim_(n -> oo) (2/n + 1/n^2)/(1 + 1/n) = 1 $

10.1.89

$ lim_(n -> oo) a_n = lim_(n -> oo) (ln n)/n = lim_(n -> oo) 1/n = 0 $

10.1.90

$ lim_(n -> oo) a_n = lim_(n -> oo) (1 - n^(1 - p))/(1 - p) = 1/(1 - p) $

converges for any $p > 1$

10.1.93

Let $a_n = a_(n + 1)$,

$ a_n^2 = 8 + 2a_n ==> a_n = 4 $

which means $lim_(n -> oo) a_n = 4$ when negative value is not valid.

10.1.98

$a_(n + 1) = 1 + sqrt(a_n)$, let $a_(n + 1) = a_n$,

$ a_n^2 - a_n - 1 = 0 ==> a_n = (1 + sqrt(5))/2 $

which means $lim_(n -> oo) a_n = (1 + sqrt(5))/2$ when $a_n < 1$ is not valid.

10.1.100

a. $1 - 2 times 1 = -1$, $9 - 2 times 4 = 1$

$ (a + 2b)^2 - 2(a + b)^2 = 2b^2 - a^2 = -(plus.minus 1) = minus.plus 1 $

b. $ (x_n/y_n)^2 - 2 = plus.minus(1/y_n^2) ==> r_n^2 - 2 = plus.minus 1/y_n^2 $

since $y_n = y_(n - 1) + x_(n - 1) >= y_(n - 1) + 1$ and $y_1 = 1$, we have $y_n >= n$, which means

$ lim_(n -> oo) r_n = lim_(n -> oo) sqrt(2 plus.minus 1/y_n^2) = sqrt(2) $

10.1.112

$ a_(n + 1)/(a_n) = ((2n + 5)!(n + 1)!)/((2n + 3)!(n + 2)!) = ((2n + 4)(2n + 5))/(n + 2) = 4n + 10 >= 1 $

which means $a_n$ is monotonically increasing and not bounded.

10.1.113

$ a_(n + 1)/a_n = 6/(n + 1) cases(>= 1 space n <= 5, < 1 space n > 5), lim_(n -> oo)6/(n + 1) = 0 $

which means $a_n$ is not monotonic but bounded

10.1.120

Since $x_n <= 1$ and $x_n <= x_(n + 1)$, $x_n$ converges.

10.2.3

$ s_n = ((1 - (-1/2)^n))/(1 - (-1/2)) = 2(1 - (-2)^(-n))/3 -> 2/3 op("as") n -> oo $

10.2.6

$ s_n = 5(1 - 1/2 + 1/2 - 1/3 + dots.c + 1/(n) - 1/(n + 1)) = 5 - 5/(n + 1) -> 5 op("as") n -> oo $

10.2.12

$ s_n = (5(1-1/2^n))/(1-1/2) - (1-1/3^n)/(1-1/3) = 17/2 - 10/2^n + 1/(2 dot 3^(n - 1)) $

$ s_1 = 4, s_2 = 37/6, s_3 = 263/36, s_4 = (1,705)/216, s_5 = (10,619)/(1,296), s_6 approx 8.3458, s_7 approx 8.4226, s_8 approx 8.4612 $

$ lim_(n -> oo) s_n = 17/2 $

10.2.43

$ S = lim_(n -> oo) 5(1/1 - 1/9 + 1/9 - dots.c + 1/(2n - 1)^2 + 1/(2n + 1)^2) = lim_(n -> oo) 5(1 - 1/(2n + 1)^2) = 5 $

10.2.47

$ S = lim_(n -> oo) -1/(ln 2) + 1/(ln 3) - 1/(ln 3) + dots.c -1/(ln(n + 1)) + 1/ln(n + 2) = lim_(n -> oo) 1/ln(n + 2) - 1/(ln 2) = -1/(ln 2)  $

10.2.53

$s_n$ has a period, which means it diverges.

10.2.61

Since

$ lim_(n -> oo) (n!)/(1000^n) = lim_(n -> oo) (1000!)/(1000^1000) 1001/1000 1002/1000 dots.c n/1000 $

diverges, $S$ diverges as well.

10.2.62

Since

$ lim_(n -> oo) (n^n)/(n!) = lim_(n --> oo) n n/2 n/3 dots n/n >= n $

diverges, $S$ diverges as well.

10.2.64

Since

$ lim_(n -> oo) (2^n + 4^n)/(3^n + 4^n) = lim_(n -> oo) (1/2^n + 1)/((3/4)^n + 1) = 1 $

does not converge to $0$, $S$ diverges

10.2.65

$ S = lim_(n -> oo) ln(1/2 dot 2/3 dot 3/4 dot dots.c dot n/(n + 1)) = lim_(n -> oo)ln(1/(n + 1)) $

diverges

10.2.72

$ sum_(n = 0)^oo (-1)^n/2 (1/(3 + sin x))^n = sum_(n = 0)^oo 1/2 (-1/(3 + sin x))^n = (1 - (-1/(3 + sin x))^n)/(2 + 2/(3 + sin x)) = (3 + sin x)/(8 + 2 sin x) $

which implies $a = 1/2$, $r = (-1/(3 + sin x))$, $|r| = abs(1/(3 + sin x)) <= 1/2 < 1$ for any $x$, which means series converges.

10.2.93

a.

$ a_2 = 300e^(24(- k)) approx 16.840, a_3 = 300(e^24((- k)) + e^(48(- k))) approx 17.785 $


b. 
$ 300e^(24(- k))/(1 - e^(-k)) approx 17.84 $

all unit above is mg


10.2.95

a.

$ 0, 1/3, 2/3, 1/9, 2/9, 4/9, 5/9, 7/9, 1/27, 2/27, 4/27, 5/27 $

b.

$ sum_(n = 1)^oo 2^(n - 1)/3^n = 1/3sum_(n = 0)^oo (2/3)^n = 1/3(1/(1 - 2/3)) = 1 $


10.3.6

Since $f(x) = 1/(x ln^2 x)$ is positive, decreasing, continous for any $x >= 2$, and

$ integral_2^oo (dif x)/(x ln^2x) = integral_2^oo (dif ln x)/(ln^2 x) = lr(-1/(ln x)])_2^oo = 1/(ln 2)  $

converges, which implies the series converges

10.3.9

Let $f(x) = x^2/(e^(x/3))$, $f'(x) = (2x e^(x/3) - x^2/3(e^(x/3)))/(e^(2x)/3) = x(6 - x)/(e^(x/3)) ==> f'(x) < 0 <==> x > 6$ for any $x > 0$, which implies $f(x)$ is positive, decreasing, continous for any $x >= 6$, and 

$ integral_6^oo x^2 e^(-x/3) dif x &= lr(-3x^2 e^(-x/3)])_6^oo - integral_6^oo -6x e^(-x/3) dif x = lr(-3x(x + 6)e^(-x/3)])_6^oo - integral_6^oo -18e^(-x/3) dif x \
&= lr(-3(x^2 + 6x + 18)e^(-x/3)])_6^oo = C $

converges, which means the series converges.

10.3.16

Since $f(x) = 1/(x^(3/2))$ is positive, decreasing, continous for any $x >= 1$, and

$ integral_1^oo (dif x)/(x^(3/2)) = lr(-2 x^(-1/2)])_1^oo = 2 $

converges, which implies

$ sum_(n = 1)^oo -2/(n sqrt(n)) = -2sum_(n = 1)^oo 1/(n sqrt(n)) $

converges

10.3.27

$ sum_(n = 2)^oo sqrt(n)/(ln n) >= sum_(n = 2)^oo 1/(sqrt(n)) $

diverges

10.3.29

since $1/(ln 2) > 1$, the series diverges

10.3.30

since $1/(ln 3) < 1$, the series converges

10.3.31

since $f(x) = 1/(x ln x sqrt(ln^2 x - 1))$ is positive, decreasing, continous for any $x >= 3$, and

$ integral_3^oo (dif x)/(x ln x sqrt(ln^2 x - 1)) = integral_3^oo (dif ln x)/(ln x sqrt(ln^2 x - 1)) = op("arcsec") ln x]_3^oo = pi/2 - op("arcsec") ln 3 $

converges, which implies the series converges

10.3.37

since $f(x) = (8arctan x)/(1 + x^2)$ is positive, decreasing, continous for any $x >= 1$, and

$ integral_1^oo (8arctan x)/(1 + x^2) dif x = integral_1^oo 8 arctan x dif arctan x = lr(4 arctan^2 x])_1^oo = 3/4pi^2 $

converges, which implies the series converges

10.3.49

$ integral_n^oo (dif x)/(x^3) = lr(-1/(2x^2)])_n^oo = 1/(2n^2) $

which implies

$ s_5 + 1/72 <= S <= s_5 + 1/50 ==> 1.1996 <= S <= 1.2057 $

10.3.53

First show "$==>$", i.e. when $sum a_n$ converges, we have

$ sum_(n = 0)^oo 2^n a_(2^n) &= a_1 + 2sum_(n = 1)^oo 2^(n - 1)a_(2^n) = a_1 + 2(a_2 + a_4 + a_4 + a_8 + a_8 + a_8 + a_8 + a_16 + dots.c) \ 
&<= a_1 + 2(a_2 + a_3 + a_4 + a_5 + a_6 + a_7 + a_8 + a_9 + dots.c) = a_1 + 2sum_(n = 2)^oo a_n $

converges

Then show "$<==$", i.e. when $sum 2^n a_(2^n)$ converges, we have

$ sum_(n = 1)^oo a_n &= a_1 + a_2 + a_3 + a_4 + a_5 + a_6 + a_7 + a_8 + a_9 + dots.c \ 
&<= a_1 + a_2 + a_2 + a_4 + a_4 + a_8 + a_8 + a_8 + a_8 + a_16 = sum_(n = 0)^oo 2^n a_(2^n) $

converges

10.3.54

a.

$ sum_(n = 1)^oo (2^n)/(2^n ln(2^n)) = 1/(ln 2)sum_(n = 1)^oo 1/n $

diverges, which means the series diverges as well.

b.

$ sum_(n = 0)^oo (2^n)/(2^(n p)) = sum_(n = 0)^oo 2^(n(1 - p)) $

converges $<==>$ $p > 1$, whilist the series converges.

10.3.55

a.

$ I = integral_2^oo (dif ln x)/(ln^p x) = cases((ln^(1 - p)x)/(1 - p)]_2^oo space & p != 1,ln ln x]_2^oo space &p = 1) $

which means $I$ converge $<==>$ $p > 1$

b. 

Since $f(x) = 1/(x ln^p x)$ is positive, decreasing, continous for any $x >= 2$, and accroding to a., the series converges $<==>$ $p > 1$

10.3.57

a.

since $f(x)$ is convage up for any $x >= 1$, we have

$ integral_n^(n + 1) f(x) dif x <= f(n) <= integral_(n - 1)^n f(x) dif x $

to sum up from $n = 2$, we have

$ ln(n + 1) - ln 2 <= 1/2 + 1/3 + dots.c <= ln n $

which implies

$ ln(n + 1)) <= ln(n + 1) - ln 2 + 1 <= 1 + 1/2 + 1/3 + dots.c + 1 + ln n $

b.

accroding to a., 

$ 1/(n + 1) < integral_n^(n + 1)(dif x)/x = ln(n + 1) - ln n $

which implies

$ a_(n + 1) - a_n = 1/(n + 1) - (ln(n + 1) - ln n) < 0 $

which means $a_n$ is decreasing for any $n >= 1$

])