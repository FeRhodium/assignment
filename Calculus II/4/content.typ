#let title = [
	MAT1002 Calculus II\ Assignment 4
]

#import "../../main.typ"
#main.content(title, [

10.10.7

$ (1 + x^2)^(-1/3) = 1 + sum_(k = 1)^oo binom(-1/3, k)x^(2k) = 1 - x^2/3 + (2x^4)/9 - (14 x^6)/81 + ... $

10.10.10

$ x(1 + x)^(-1/3) = x + sum_(k = 1)^oo binom(-1/3, k)x^(k + 1) = x - x^2/3 + (2x^3)/9 - (14 x^4)/81 + ... $

10.10.28

$ F(x) = integral_0^x 1 - t/2 + t^2/3 - t^3/4 + ... dif t = sum_(k = 1)^oo （-1)^(k - 1) x^k/(k^2) $

(a)

$(1/2)^k/k^2 < 10^(-3) ==> k = 6$, i.e $F(x) = sum_(i = 1)^5（-1)^(k - 1) x^k/(k^2)$

(b)

$(1)^k/k^2 < 10^(-3) ==> k = 32$, i.e $F(x) = sum_(i = 1)^31（-1)^(k - 1) x^k/(k^2)$

10.10.34

$ L = lim_(y -> 0) ((x - x^3/3 + ...) - (x - x^3/6 + ...))/(y^3 - y^5/2 + ...) = -1/6 $

10.10.37

$ L = lim_(x -> 0) (x^2 - x^4/2 + ...)/(x^2/2 - x^4/24 + ...) = 2 $

10.10.39

$ L = lim_(x -> 0) (3x^2 - (9x^6)/2 + ...)/(2x^2 - (2x^4)/3 + ...) = 3/2 $

10.10.45

$ S = sin pi/3 = sqrt(3)/2 $

10.10.46

$ S = arctan 2/3 $

10.10.48

$ S = cos 3x $

10.10.55

$1/(2n - 1) < 10^(-3) ==> n >= 501$, which means we need to have 501 terms.

10.10.58

a.

$ f'(x) = m + sum_(k = 1)^oo (k + 1) binom(m, k + 1) x^k = m + m sum_(k = 1)^oo binom(m - 1, k)x^k \ 
==> f'(x)(1 + x) = m(1 + sum_(k = 1)^oo (binom(m - 1, k - 1) + binom(m - 1, k)) x^k) = m(1 + sum_(k = 1)^oo binom(m, k) x^k) = m f(x) ==> f'(x) = (m f(x))/(x + 1) $

b.

$ f^((m))(x) = m!(1 + sum_(k = 1)^oo binom(0, k)x^k) = m! = m! f(x)(1 + x)^(-m) ==> g(x) = 1 ==> g'(x) = 0 $

c.

$ f(x) = g(x)(1 + x)^m = (1 + x)^m $

10.10.68

$ cos theta + i sin theta = e^(i theta), cos theta - i sin theta = e^(-i theta) $

which imply

$ cos theta = (e^(i theta) + e^(-i theta))/(2), sin theta = (e^(i theta) - e^(-i theta))/(2 i) $

11.1.16

$ x^2 - y^2 = sec^2 t - tan^2 t = 1 $

when $x < 0, y > 0$

11.1.29

$ (dif x^2)/(dif x) + (dif y^2)/(dif x) = 0 ==> 2x + 2y t = 0 ==> t = -x/y ==> (1 + t^2)y^2 = a^2 ==> y = a/sqrt(1 + t^2), x = (-a t)/sqrt(1 + t^2) $

11.1.32

$ y = x tan theta = sqrt(x) ==> x = cot^2 theta, y = cot theta op("when") 0 < theta <= pi/2 $

11.1.36

Let the two circles be tangent to $F$, $hat(P F) = hat(A F) ==> b angle P C F = a theta ==> angle C P x = (a/b - 1) theta==>$

$ x = b cos(a/b - 1) theta + (a - b)cos theta, y = (a - b)sin theta - b sin(a/b - 1)theta $

when $b = a/4$,

$ x = b cos 3 theta + 3 b cos theta = 4b cos^3 theta = a cos^3 theta, y = 3b sin theta - b sin 3 theta = 4 b sin ^3 theta = a sin^3 theta $

11.1.38

since the center move $a theta$ horizontally, 

$ x = theta + b sin theta, y = a - b cos theta $

11.2.13

$ (dif y)/(dif x) = ((dif y)/(dif t))/((dif x)/(dif t)) = ((t + 1)/(t - 1))^2 = 9 op("when") t = 2 $

$ (dif^2 y)/(dif x^2) = (dif y')/(dif t)/((dif x)/(dif t)) = 4((t + 1)/(t - 1))^3 = 108 op("when") t = 2 $

11.2.20

$x = e^t + t$,

$ (dif y)/(dif x) = ((dif y)/(dif t))/((dif x)/(dif t)) = (e^t (t + 1))/(e^t + 1) = 1/2 op("when") t = 0 $


11.2.22

$ A = integral_0^1 1 + e^(-t) dif(t - t^2) = integral_0^1 1 + e^(-t) - 2t - 2t e^(-t) dif t = 3/e - 1 $

11.2.29

$ L = integral_0^(pi/2) sqrt(64 t^2 cos^2t + 64 t^2 sin^2 t) dif t = integral_0^(pi/2) 8t dif t = pi^2 $

11.2.33

$ A = integral_(-sqrt(2))^(sqrt(2)) 2 pi (t + sqrt(2)) sqrt(1 + t^2 + 2 sqrt(2) t + 2) dif t = pi integral_1^9 sqrt(u) dif u = 52/3 pi op("when") u = (t + sqrt(2))^2 + 1 $

11.2.44

$ (dif y)/(dif x) = ((dif y)/(dif t))/((dif x)/(dif t)) = sin t in [0, 1] $

when $t = pi/2$ i.e. at $(pi/2, 1)$, the slope is the largest, when $t = 3/2 pi$ i.e at $(3/2 pi, 1)$, the slope is the smallest.

11.2.47

(a)

$ L = integral_0^(2pi) a sqrt(1 + cos^2 t - 2 cos t + sin^2t) dif t= 2a integral_0^(2pi) sin t/2 dif t = 8a $

(b)

$ A = integral_0^(2pi) 4pi(1 - cos t) sin t/2 dif t = 8pi integral_0^(2 pi) sin^3 t/2 dif t = 16 pi integral_1^(-1) u^2 - 1 dif u = 64/3 pi op("when") u = cos t/2 $

11.2.48

$ V = integral_0^(2pi) pi (1 - cos t)^2 (1 - cos t) dif t = 5 pi^2 $

11.3.10

a. $(2, pi)$

b. $(1, 0)$

c. $(3, 3/2 pi)$

d. $(1, pi/3)$


11.3.37

$ r sin theta - 2 r cos theta = 5 ==> y - 2x = 5 $

11.3.43

$ x^2 + y^2 + 2 x y == 1 ==> (x + y)^2 = 1 $

11.3.62

$ r^2(1 + sin theta cos theta) = 1 $

11.3.65

$ (r cos theta - 3)^2 + (r sin theta + 1)^2 = 4 ==> r^2 - 6 r cos theta + 2 r sin theta + 6 = 0 $

#image("IMG_1814.JPG")

11.4.2

$ 2 - 2 cos (-theta) = 2 - 2 cos theta = r $

which means the curve is symmetric about the $x$ axis.

11.4.11

$ - sin(pi - theta) = -sin theta = r^2 $

which means the curve is symmetric about the $y$ axis, $x$ axis and the origin.

11.4.15

$(-r)^2 = r^2$, which means the curve is symmetric about origin.

11.4.19

$theta = pi/4, 3/4 pi, -pi/4, -3/4 pi$, $r = plus.minus 1$, slope $= plus.minus 1$.

11.4.20

$theta = 0, pi/2, pi, -pi/2$, $r = plus.minus 1$, slope $= 1$ or DNE.

11.5.2

$ A = integral_(pi/4)^(pi/2) 1/2 times 4 sin^2 theta dif theta = pi/4 + 1/2  $

11.5.7

$ A = integral_0^(pi/2) 1/2 times 4 sin 2 theta dif theta = 2 $

11.5.19

(a)

$ A = integral_(-pi/4)^(pi/4) 1/2 tan^2 theta dif theta + 1/2 (sqrt(2)/2)^2 csc pi/4 = 3/2 - 1/4 pi  $

(b)

$x = 1 ==> r = sec theta$,

$ lim_(theta -> (pi/2)^-) tan theta - sec theta = 0 $

which means when $theta -> (pi/2)^-$, $tan theta -> sec theta$, i.e. $x = 1$ is an asymptote. Similarly, $x = -1$ is an asymptote as well.

11.5.22

$ L = integral_0^pi sqrt(2(e^theta/sqrt(2))^2) dif theta = e^pi - 1 $

11.5.31

(a)

$ 1/(2pi)integral_0^(2pi) a(1 - cos theta) dif theta = a $

(b)

$ 1/(2pi) integral_0^(2pi) a dif theta  = a $

(c)

$ 1/pi integral_(-pi/2)^(pi/2) a cos theta dif theta = (2a)/pi $

])