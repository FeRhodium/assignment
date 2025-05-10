16.3.2

$ partial/(partial y) y sin z = sin z = partial/(partial x) x sin z, partial/(partial z) y sin z = y cos z = partial/(partial x) x y cos z, partial/(partial z) x sin z = x cos z = partial/(partial y) x y cos z $

means that $F$ is conservative.

16.3.6

$ partial/(partial y) e^x cos y = - e^x sin x = partial/(partial x) (-e^x sin y), partial/(partial z) e^x cos y = 0 = partial/(partial x) z,  partial/(partial y) z = 0 = partial/(partial z) (-e^x sin y) $

means that $F$ is conservative.

16.3.10

Since $gradient (x y sin z) = F$, $f = x y sin z$.

16.3.17

$ partial/(partial y) sin y cos x = cos x cos y = partial/(partial x) cos y sin x, partial/(partial y) z = 0 = partial/(partial z) cos y sin x, partial/(partial x) z = 0 = partial/(partial z) sin y cos x $

means that the differential forms are exact. Let $f = sin x sin y + z$,

$ I = f(0, 1, 1) - f(1, 0, 0) = 1  $

16.3.20

$f = x^2 ln y - x y z ==> I = f(2, 1, 1) - f(1, 2, 1) = -2 - ln 2 + 2 = -ln 2$

16.3.30

Since $F$ is conservative, $gradient (x e^(y z) + z sin y) = F$. Let $f = x e^(y z) + z sin y$, for (a), (b), (c), $W = f(1, pi/2, 0) - f(1, 0, 1) = 0$

16.3.33

a.

$2a = b$ and $2a = c$

b.

from a., $b = c = 2a = 2$.

16.3.34

Since $F$ is conservative, $g(x, y, z) = f(x, y, z) - f(0, 0, 0) ==> gradient g = gradient f = F$.

16.4.8

$ op("Flux") = integral_0^1 integral_0^x (1 - 2y) dif y dif x = integral_0^1 (x - x^2) dif x = 1/6 $

$ op("Circ") = integral_0^1 integral_0^x (-2x - 1) dif y dif x = integral_0^1 (-2x^2 - x) dif x = -7/6 $

16.4.9

$ op("Flux") = integral_0^1 integral_(x^2)^(sqrt(x)) (y - 1) dif y dif x = integral_0^1 (1/2 x - sqrt(x) - 1/2 x^4 + x^2) dif x = -11/60 $

$ op("Circ") = integral_0^1 integral_(x^2)^(sqrt(x)) (1 - x - 2y) dif y dif x = integral_0^1 (sqrt(x) - x^(3/2) + x^4 + x^3 - x^2 - x) dif x = - 7/60 $

16.4.19

$ W = integral_0^1 integral_0^(x^3) 2 x y^2 dif y dif x = integral_0^1 2/3 x^10 dif x = 2/33 $

16.4.23

$ I = integral.double_R (2 - 6) dif y dif x = -4(4pi) = -16pi $

16.4.26

$ A = 1/2 integral.ccw x dif y - y dif x = 1/2 integral_0^(2pi) a b(sin^2 t + cos^2 t) dif t = a b pi $

16.4.27

$ A = 1/2 integral_0^(2pi) 3 sin^2 t cos^2t(cos^2 t + sin^2t) dif t = 3/16 integral_0^(2pi) 1 - cos 4t dif t = 3/8 pi $

16.4.30

$ I = integral.double_R 2 dif x dif y = 2 A $

depends only on the area.

16.4.37

$ I = integral.double_R (-(partial^2 f)/(partial x^2) - (partial^2 f)/(partial y^2)) dif x dif y = 0 $

16.4.38

$ W = integral.double_R (1 - 1/4 x^2 - y^2) dif x dif y $

when $W$ is maximized, $R$ is over the region enclosed by $1/4 x^2 + y^2 = 1$.

16.5.6

$r(phi, theta) = 2 sin phi cos theta hat(i) + 2 sin phi sin theta hat(j) + 2 cos phi hat(k), pi/4 <= phi <= pi/2, 0 <= theta <= pi/2$.

16.5.7

$r(phi, theta) = sqrt(3) sin phi cos theta hat(i) + sqrt(3) sin phi sin theta hat(j) + sqrt(3) cos phi hat(k), pi/3 <= phi <= 2/3pi, 0 <= theta <= 2pi$.

16.5.18

$ r(r, theta) = r cos theta hat(i) + r sin theta hat(j) - r cos theta hat(k) $

$ A = integral_0^(2pi) integral_0^2 abs(mat(delim: "|", hat(i), hat(j), hat(k); cos theta, sin theta, -cos theta; -r sin theta, r cos theta, r sin theta)) dif r dif theta = 2pi integral_0^2 sqrt(2) r dif r = 4sqrt(2) pi $

16.5.23

$r(r, theta) = r cos theta hat(i) + r sin theta hat(j) + (2 - r^2) hat(k)$

$ A = integral_0^(2pi) integral_0^1 abs(mat(delim: "|", hat(i), hat(j), hat(k); cos theta, sin theta, -2r; -r sin theta, r cos theta, 0)) dif r dif theta = 2pi integral_0^1 r sqrt(4 r^2 + 1) dif r = 1/6 pi (-1 + 5 sqrt(5)) $

16.5.31

(b)

$ A = integral_0^(2pi) integral_0^(2pi) abs(mat(delim: "|", hat(i), hat(j), hat(k); -r sin u cos v, -r sin u sin v, r cos u; -(R + r cos u)sin v, (R + r cos u)cos v, 0)) dif r dif theta = 2pi integral_0^(2pi) r(R + r cos u) dif u = 4pi^2 r R $

16.5.40

$ A = integral_0^sqrt(3) integral_0^x (2 sqrt(x^2 + 1))/2 dif y dif x = integral_0^sqrt(3) x sqrt(x^2 + 1) dif x = 7/3 $