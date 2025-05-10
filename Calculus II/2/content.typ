#let title = [
	MAT1002 Calculus II\ Assignment 2
]

#import "../../main.typ"
#main.content(title, [

10.4.4

$ sum_(n = 2)^oo (n + 2)/(n^2 - n) >= sum_(n = 2)^oo n/n^2 $

diverges

10.4.6

$ sum_(n = 1)^oo 1/(n 3^n) <= sum_(n = 1)^oo 1/3^n $

converges

10.4.13

Let $a_n = 5^n/(sqrt(n)4^n)$, $b_n = 1/sqrt(n)$, 

$ lim_(n -> oo) a_n/b_n = (5/4)^n = oo $

Since $sum b_n$ diverges, $sum a_n$ diverges as well.

10.4.20

$ sum_(n = 1)^oo (1 + cos n)/(n^2) <= sum_(n = 1)^oo 2/n^2 $

converges

10.4.36

Since $n <= 2^n$ holds for all $n >= 1$,

$ sum_(n = 1)^oo (n + 2^n)/(n^2 2^n)= sum_(n = 1)^oo (n/2^n + 1)/n^2 <= sum_(n = 1)^oo 2/n^2 $

converges

10.4.42

Let $a_n = (ln n)/(sqrt(n) e^n)$, $b_n = (ln n)/(e^n)$,

$ lim_(n -> oo)a_n/b_n = lim_(n -> oo) 1/sqrt(n) = 0 $

Since $sum b_n$ converges, $sum a_n$ converges as well.

10.4.44

$ sum_(n = 1)^oo (n - 1)!/(n + 2)! = sum_(n = 1)^oo 1/(n(n + 1)(n + 2)) $

converges

10.4.46

Let $a_n = tan 1/n$, $b_n = 1/n$, 

$ lim_(n -> oo) a_n/b_n = lim_(n -> oo)(tan 1/n)/(1/n) = lim_(n -> oo)(-1/n^2 sec^2 1/n)/(-1/n^2) = lim_(n -> oo)sec^2 1/n = 1 > 0 $

Since $sum b_n$ diverges, $sum a_n$ diverges as well.

10.4.47

$ sum_(n = 1)^oo (arctan n)/(n^1.1) <= sum_(n = 1)^oo pi/(4 n^1.1) $

converges

10.4.53

$ sum_(n = 1)^oo 1/(1 + 2 + 3 + dots.c + n) = sum_(n = 1)^oo 2/(n(n + 1)) $

converges

10.4.58

Since $sum a_n$ converges,

$ lim_(n -> oo) (a_n^2)/(a_n) = lim_(n -> oo) a_n = 0 $

which implies $sum a_n^2$ converges

10.4.61

Let $a_n = (ln^q n)/n^p$, $b_n = 1/n^r$ when $1 < r < p$, 

$ lim_(n -> oo) a_n/b_n = lim_(n -> oo) (ln^q n)/(n^(p - r)) = L $

If $q <= 0$, $L = 0$, otherwise

$ L = lim_(n -> oo) 1/n dot (ln^(q - 1) n)/(n^(p - r)) = lim_(n -> oo) (ln^(q - 1) n)/(n^(p - r + 1)) = dots.c = lim_(n -> oo) (ln^(q - ceil.l q ceil.r) n)/(n^(p - r + ceil.l q ceil.r)) = 0 $



10.4.63

$ sum_(n = 1)^oo d_n/10^n <= sum_(n = 1)^oo 9/(10^n) $

converges

10.4.64

Since $sum a_n$ converges, $lim_(n -> oo) a_n = 0$, which implies

$ lim_(n -> oo) (sin a_n)/(a_n) = 1 $
 
which means $sum sin a_n$ converges 

10.5.7

$ abs(lim_(n -> oo) ((-1)^(n + 1)(n + 1)^2(n + 3)!/((n + 1)! 3^(2n + 2)))/((-1)^n n^2(n + 2)!/(n! 3^(2n)))) = 1/9lim_(n -> oo) (1 + 1/n)^2(1 + 3/n)/(1 + 1/n) = 1/9 < 1 $

which means $sum (-1)^n n^2(n + 2)!/(n! 3^(2n))$ converges.

10.5.8

$ abs(lim_(n -> oo) ((n + 1)5^(n + 1)(2n + 3) ln(n + 1))/(n 5^n (2n + 5) ln(n + 2))) = 5 lim_(n -> oo) ((1 + 1/n)(2 + 3/n))/(2 + 5/n) lim_(n -> oo) (n + 2)/(n + 1) = 5 > 1 $

which means $sum (n 5^n)/((2n + 3) ln(n + 1))$ diverges.

10.5.14

$ lim_(n -> oo) (sin^n (1/sqrt(n)))^(1/n) = lim_(n -> oo) sin(1/sqrt(n)) = 0 < 1 $

which means $sum sin(1/sqrt(n))$ converges.

10.5.18

$ abs(lim_(n -> oo) ((-1)^(n + 1)(n + 1)^2 e^(-(n + 1)))/((-1)^n n^2 e^(-n))) = 1/e lim_(n -> oo) (1 + 1/n)^2 = 1/e < 1 $
which means $sum (-1)^n n^2 e^(-n)$ converges.

10.5.23

$ sum_(n = 1)^oo (2 + (-1)^n)/(1.25^n) <= sum_(n = 1)^oo 3/(1.25^n) $

converges.

10.5.33

$ lim_(n -> oo) ((n + 2)(n + 3))/((n + 1)(n + 2))n!/(n + 1)! = lim_(n -> oo)(n + 3)/(n + 1)^2 = 0 < 1 $

which means $sum ((n + 1)(n + 2))/n!$ converges

10.5.35

$ lim_(n -> oo) ((n + 4)!n! 3^n)/((n + 3)!(n + 1)! 3^(n + 1)) = 1/3 lim_(n -> oo) (n + 4)/(n + 1) = 1/3 < 1 $

which means $sum (n + 3)!/(3!n!	3^n)$ converges.

10.5.40

$ lim_(n -> oo) (n/(ln^(n/2) n))^(1/n) = lim_(n -> oo) n^(1/n)/sqrt(ln n) = 0 < 1 $

which means $sum n/((ln n)^(n/2))$ converges.

10.5.50

$ lim_(n -> oo) a_(n + 1)/a_n = lim_(n -> oo) n^(1/n)/2 = 1/2 < 1 $

which means $sum a_n$ converges.

10.5.52

For $n > e^10$, $(n + ln n)/(n + 10) > 1$, which means $a_(n + 1) > a_n$ for all $n > e^10$, which implies $sum a_n$ diverges.

10.5.58

$ lim_(n -> oo) ((-1)^n (n!)^n/(n^(n^2)))^(1/n) = lim_(n -> oo) (-1)n!/n^n = 0 < 1 $

which means $sum (-1)^n (n!)^n/(n^(n^2))$ converges.

10.5.62

$ lim_(n -> oo) (2n + 1)/(2n + 2) dot.c (3^n + 1)/(3^(n + 1) + 1) = 1/3 < 1 $

which means $sum (1 dot.c 3 dot.c dots.c dot.c (2n - 1))/((2 dot 4 dot dots.c dot (2n))(3^n + 1))$ converges.

10.5.65

$ 1/2 lim_(n -> oo) (n + 1)/n = 1/2 < 1 $

and $a_n <= n/2^n$, which implies $sum a_n$ converges.

10.5.66

$ lim_(n -> oo) 2^((n + 1)^2)/(2^(n^2)) dot (n!)/((n + 1)!) = lim_(n -> oo) (2^(2n + 1))/(n + 1) > 1 $

which means $sum 2^(n^2)/(n!)$ diverges.

10.6.18

Since $1/(1 + sqrt(n))$ is positive, nonincreasing, goes to $0$, $sum (-1)^n/(1 + sqrt(n))$ converges.

Let $a_n = abs((-1)^n/(1 + sqrt(n))) = 1/(1 + sqrt(n))$, $b_n = 1/sqrt(n)$, 

$ lim_(n -> oo) a_n/b_n = lim_(n -> oo) sqrt(n)/(1 + sqrt(n)) = lim_(n -> oo) 1/(1 + 1/sqrt(n)) = 1 $

Since $sum b_n$ diverges, $sum a_n$ diverges as well, which means the series converges conditionally.

10.6.20

$ abs(lim_(n -> oo) (-1)^(n + 2)/(-1)^(n + 1) dot (n + 1)!/(n!) dot 2^(n + 1)/2^n) = lim_(n -> oo) 2(n + 1) > 1 $

which means $sum (-1)^(n + 1)n!/(2^n)$ diverges.

10.6.24

Since $2/(n + 5^n)$ is positive, nonincreasing, goes to $0$, $sum (-2)^(n + 1)/(n + 5^n)$ converges.

$sum 2/(n + 5^n) <= 2/5^n$ converges, which means the series converges absolutely.

10.6.27

Since $n^2 (2/3)^n$ is positive, nonincreasing for all $n >= 5$, goes to $0$, $sum (-1)^n n^2 (2/3)^n$ converges.

$ lim_(n -> oo) ((n + 1)/n)^2 dot 2/3 = 2/3 < 1 $

which implies $sum n^2 (2/3)^n$ converges, which means the series converges absolutely.

10.6.30

Since $(ln n)/(n - ln n)$ is positive, nonincreasing for all $n >= 3$, goes to $0$, $sum (-1)^n (ln n)/(n - ln n)$ converges.

$ sum_(n = 3)^oo (ln n)/(n - ln n) >= sum_(n = 3)^oo 1/n $

which implies $sum (ln n)/(n - ln n)$ diverges, which means $sum (-1)^n (ln n)/(n - ln n)$ converges conditionally.

10.6.43

Since $sqrt(n + sqrt(n)) - sqrt(n) = (sqrt(n + sqrt(n)) - sqrt(n)) dot (sqrt(n + sqrt(n)) + sqrt(n))/(sqrt(n + sqrt(n)) - sqrt(n)) = sqrt(n)/(sqrt(n + sqrt(n)) + sqrt(n)) = 1/(sqrt(1 + 1/sqrt(n)) + 1) $ goes to $1/2$, the series diverges.

10.6.44

Since $1/(sqrt(n) + sqrt(n + 1))$ is positive, nonincreasing, goes to $0$, $sum (-1)^n/(sqrt(n) + sqrt(n + 1))$ converges.

$ sum_(n = 1)^oo 1/(sqrt(n) + sqrt(n + 1)) >= 1/(2sqrt(n + 1)) $\

diverges, which means the series converges conditionally.

10.6.48

Since $1/n^2$ is positive, nonincreasing, goes to $0$, $sum (-1)^n/n^2$ converges.


Since $sum 1/n^2$ converges obviously, the series converges absolutely.


10.6.51

$abs(op("error")) < abs((-1)^6 (0.01)^5/5) = 2times 10^(-11)$

10.6.54

$ n/(n^2 + 1) <= 0.001 ==> n >= 999 $

10.6.66

$a_n = b_n = (-1)^n/(sqrt(n))$, $sum a_n b_n = 1/n$ diverges whilst $a_n, b_n$ converge.

10.6.68

$ sum_(n = 3)^oo 1/n - 1/n^2 > 1/(2n) $

diverges.

])