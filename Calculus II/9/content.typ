#let title = [
	MAT1002 Calculus II\ Assignment 9
]

#import "../../main.typ"
#main.content(title, [

14.7.13

$ f_x = 3x^2 - 2y ==> f_(x x) = 6 x, f_(x y) = -6y - 2 $

$ f_y = -3y^2 - 2x ==> f_(y y) = -6y $

$ f_x = f_y = 0 ==> (x, y) = (0, 0) or (-2/3, 2/3) $

$f_(x x)f_(y y) - f_(x y)^2 = -4 <0$ for $(0, 0)$ means it is a saddle point.

$f_(x x)f_(y y) - f_(x y)^2 = 12 > 0, f_(x x) < 0$ for $(-2/3, 2/3)$ means it is a maximum point.

14.7.22

$ f_x = y - x^(-2) ==> f_(x x) = 2 x^(-3), f_(x y) = 1 $

$ f_y = x - y^(-2) ==> f_(y y) = 2 y^(-3) $

$ f_x = f_y = 0 ==> (x, y) = (1, 1) $

$ f_(x x)f_(y y) - f_(x y)^2 = 3 > 0, f_(x x) = 2 > 0 $ means $(1, 1)$ is a minimum point.

14.7.32

$ D_x = 2x - y ==> D_(x x) = 2, D_(x y) = -1 $

$ D_y = 2y - x ==> D_(y y) = 2 $

$ f_x = f_y = 0 ==> (x, y) = (0, 0) $

$ D(0, 0) = 1, D(4, 4) = 17, D(0, 4) = 17$ means that $(0, 0)$ is the minimum point and $(4, 4)$ and $(0, 4)$ are the maximum points.

14.7.37

$ f_x = 2(2 - x)cos y ==> f_(x x) = -2 cos y, f_(x y) = 2(x - 2)sin y $

$ f_y = (x^2 - 4x) sin y ==> f_(y y) = (x^2 - 4x) cos y $

$ f_x = f_y = 0 ==> (x, y) = (2, 0) $

$f(3, pi/4) = f(-3, pi/4) = f(3, -pi/4) = f(-3, -pi/4) = 3/sqrt(2), f(2, 0) = 4$ means that (2, 0) is a maximum point and $(3, pi/4), (-3, pi/4), (3, -pi/4), (-3, -pi/4)$ are minimum points.

14.7.41

$ T_x = 2x - 1 ==> T_(x x) = 2, T_(x y) = 0 $

$ T_y = 4y ==> T_(y y) = 4 $

$ T_x = T_y = 0 ==> (x, y) = (1/2, 0) $

On the boundary, $T = -x^2 - x + 2 ==> T' = -2x - 1 ==> (x, y) = (-1/2, plus.minus sqrt(3)/2)$.

$f(1/2, 0) = -1/4, f(-1/2, plus.minus sqrt(3)/2) = 9/4$ means that $(1/2, 0)$ is a maximum point and $(-1/2, plus.minus sqrt(3)/2)$ are the minimum points.

14.7.49

Let $w = z + x^2 + y^2 -10 ==> gradient w = 2x hat(i) + 2y hat(j) + hat(k) perp (x + 2y + 3z = 0) ==> (x, y, z) =  (1/6， 1/3， 10 - 1/36 - 1/9) = （1/6， 1/3， 355/36)$

14.7.50

Let $w = x^2 + y^2 - z + 10 ==> gradient w = 2x hat(i) + 2y hat(j) - hat(k) perp (x + 2y - z = 0) ==> (x, y, z) = (1/2, 1, 1/4 + 1 + 10) = (1/2, 1, 45/4)$

14.7.57

$ V = 8 x y sqrt(4 - x^2 - y^2) ==> V_x = 8y sqrt(4 - x^2 - y^2) - (16x^2 y)/(2sqrt(4 - x^2 - y^2)) = (32y - 16x^2 y - 8y^3)/(sqrt(4 - x^2 - y^2)) $

$ V_x = V_y = (32x - 16x y^2 - 8x^3)/(sqrt(4 - x^2 - y^2)) = 0 ==> (x, y) = (0, 0) or (2/sqrt(3), 2/sqrt(3)) $

means that $V(2/sqrt(3), 2/sqrt(3)) = 64/(3sqrt(3))$ is the maximum volume with the dimensions of $2/sqrt(3) times 2/sqrt(3) times 2/sqrt(3)$.

14.7.65

$ (partial w)/(partial m) = sum 2x_k (m x_k + b - y_k) = 0 ==> m sum x_k^2 = sum x_k y_k - b sum x_k $

$ (partial w)/(partial b) = sum 2 (m x_k + b - y_k) = 0 ==> b n = sum y_k - m sum x_k ==> b = 1/n (sum y_k - m sum x_k) $

$ ==> m(sum x_k^2 - 1/n (sum x_k)^2) = sum x_k y_k - 1/n sum x_k sum y_k $

$ ==> m = (sum x_k sum y_k - n sum x_k y_k)/((sum x_k)^2 - n sum x_k^2) $

14.7.66

$ m = (-18)/(-24) = 3/4 ==> b = 5/3 ==> y = 3/4 x + 5/3 = 14/3 $

14.8.5

$ gradient (x^2 + y^2) = lambda gradient (x y^2 - 54) ==> 2x hat(i) + 2y hat(j) = lambda y^2 hat(i) + 2 lambda x y hat(j) ==> 2x = lambda y^2, 2y = 2 lambda x y ==> y^2 = 2x^2 $

which means $2x^3 = 54 ==> (x, y) = (3, plus.minus 3sqrt(2))$

14.8.12

$ gradient (4(x + y)) = lambda gradient (x^2/a^2 + y^2/b^2 - 1) ==> 4 hat(i) + 4 hat(j) = (2 lambda x)/a^2 hat(i) + (2 lambda y)/(b^2) hat(j) ==> y a^2 = x b^2 $

which means $x^2/a^2 + (b^2 x^2)/(a^4) = 1 ==> (x, y) = (plus.minus (a^2)/(sqrt(a^2 + b^2)), plus.minus (b^2)/(sqrt(a^2 + b^2)))$, i.e. the dimensions are $2 (a^2)/(sqrt(a^2 + b^2)) times 2 (b^2)/(sqrt(a^2 + b^2))$, $P = 4sqrt(a^2 + b^2)$

14.8.14

$ gradient (3x - y + 6) = lambda gradient (x^2 + y^2 - 4) ==> 3 hat(i) - hat(j) = 2 lambda x hat(i) + 2 lambda y hat(j) ==> x + 3y = 0 $

means that $10y^2 = 4 ==> (x, y) = (plus.minus 3sqrt(2/5), minus.plus sqrt(2/5))$ implies that maximum is $4sqrt(2/5) + 6$ and minimum is $6 - 4sqrt(2/5)$.

14.8.30

$ gradient (400 x y z^2) = lambda gradient (x^2 + y^2 + z^2 - 1) ==> 400(y z^2 hat(i) + x z^2 hat(j) + 2x y z hat(k)) = 2 lambda (x hat(i) +  y hat(j) + z hat(k)) $

$ ==> (x, y, z) = (plus.minus 1, 0, 0) or (0, plus.minus 1, 0) or (plus.minus 1/2, plus.minus 1/2, plus.minus sqrt(2)/2) $

$T(plus.minus 1, 0, 0) = T(0, plus.minus 1, 0) = 0$, $T(1/2, 1/2, plus.minus sqrt(2)/2) = T(-1/2, -1/2, plus.minus sqrt(2)/2) = 50$ is the maximum, $T(1/2, -1/2, plus.minus sqrt(2)/2) = T(-1/2, 1/2, plus.minus sqrt(2)/2) = -50$ is the minimum.

14.8.31

(a)

$ P(2x, 2y) = k 2^alpha x^alpha 2^(1 - alpha) y^(1 - alpha) = 2k x^alpha y^(1 - alpha) = 2P(x, y) $

(b)

$ 120 gradient x^ alpha y^(1 - alpha) = lambda gradient (250 x + 400 y - 100000) ==> 5x = 24 y $

means that $x = 300, y = 62.5$, $P(300, 62.5) approx 24332$

14.8.33

$ gradient (x y + 2x) = lambda gradient (2x + y - 30) ==> (y + 2) hat(i) + x hat(j) = 2 lambda hat(i) + hat(j) ==> (x, y) = (8,14) $

means that $U(8, 14) = 128$ is the maximum.

14.8.34

$ gradient 2(p q + p r + q r) = lambda gradient (p + q  + r - 1) ==> 2(q + r)hat(i) + 2(p + r)hat(j) + 2(p + q)hat(k) = lambda(hat(i) + hat(j) + hat(k)) ==> p = q = r = 1/3 $

means that $Q(1/3, 1/3, 1/3) = 2/3$ is the maximum.

14.8.41

$ gradient (x^2 y z + 1) = lambda gradient (z - 1) + mu gradient (x^2 + y^2 + z^2 - 10) ==> 2 x y z hat(i) + x^2 z hat(j) + x^2 y hat(k) = 2 mu x hat(i) + 2 mu y hat(j) + (2z + lambda)hat(k) $

$ ==> x y z = x mu ==> x = 0 or mu = y ==> (x, y, z) = (0, plus.minus 3, 1) or (plus.minus sqrt(6), plus.minus sqrt(3), 1) $

$f(0, plus.minus 3, 1) = 1$, $f(plus.minus sqrt(6), plus.minus sqrt(3), 1) = 1 plus.minus 6 sqrt(3)$ means that $f(plus.minus sqrt(6), sqrt(3), 1) = 1 plus 6 sqrt(3)$ is the maximum, $f(plus.minus sqrt(6), minus sqrt(3), 1) = 1 minus 6 sqrt(3)$ is the minimum.

14.8.45

when $x -> plus.minus oo$, $f -> plus.minus oo$ means that the maximum and minimum DNE.

14.8.46

$ f_A = 4A + 2B + 4C, f_B = 2A + 4B + 4C - 4, f_C = 4A + 4B + 8C - 2  $

$ f_A = f_B = f_C = 0 ==> (A, B, C) = (-1/2, 3/2, -1/4) $

is the critical point.

14.8.47

(a)

$ gradient a^2 b^2 c^2 = lambda gradient (a^2 + b^2 + c^2 - r^2) ==> a = b = c = sqrt(r^2/3) $

means that $(r^2/3)^3$ is the maximum.

(b)

$ (sqrt(a)^2 sqrt(b)^2 sqrt(c)^2)^(1/3) <= ((r^2/3)^3)^(1/3) = (a + b + c)/3 $

14.9.4

$ f_x = cos x cos y, f_y = - sin x sin y ==> f_(x x) = -sin x cos y, f_(x y) = -cos x sin y, f_(y y) = -sin x cos y $

$ f_(x x x) = -cos x cos y, f_(x x y) = sin x sin y, f_(x y y) = -cos x cos y, f_(y y y) = sin x sin y $

means that the quadratic approximation is $x$, the cubic approximation is $x - 1/6 x^3 - 1/2 x y^2$

14.9.5

$ f_(x x x) = f_(x x) = f_x = e^x ln(1 + y), f_(x x y) = f_(x y) = f_y = (e^x)/(1 + y), f_(y y) = - (e^x)/(1 + y)^2, f_(y y y) = (2e^x)/(1 + y)^3 $

means that the quadratic approximation is $y + x y - y^2/2$, the cubic approximation is $y + x y - y^3/2 + (x^2 y)/2 - (x y^2)/2 + y^3/3$

14.9.12

$ f_(x x) = f_(x) = e^x sin y, f_(x y) = f_y = e^x cos y, f_(y y) = -e^x sin y ==> P = y + x y $

$ abs(R) <= 1/6e^(0.1)(0.1^4 + 3 times 0.1^3 + 3 times 0.1^2 + 1) = 8.14 times 10^(-4) $

])