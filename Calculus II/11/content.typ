#let title = [
	MAT1002 Calculus II\ Assignment 11
]

#import "../../main.typ"
#main.content(title, [

15.7.4

$ I = integral_0^pi integral_0^(theta/pi) 4(4 - r^2) r dif r dif theta = integral_0^pi (8 theta^2)/(pi^2) - (theta^4)/(pi^4) dif theta = (8/3 - 1/5)pi = 37/15 pi $

15.7.10

$ I = integral_0^2 integral_(r - 2)^(sqrt(4 - r^2)) integral_0^(2pi) (r sin theta + 1) dif theta dif z r dif r = integral_0^2 integral_(r - 2)^(sqrt(4 - r^2)) 2pi r dif z dif r = 2pi integral_0^2 r sqrt(4 - r^2) - r^2 + 2r dif r = 8 pi $

15.7.14

$ I = integral_(-pi/2)^(pi/2) integral_0^1 integral_0^(r cos theta) dif z r^3 dif r dif theta = integral_(-pi/2)^(pi/2) 1/5 cos theta dif theta = 2/5 $

15.7.18

$ integral_(-pi/2)^(pi/2) integral_(cos theta)^(2 cos theta) integral_0^(3 - r sin theta) f(r, theta, z) dif z r dif r dif theta $

15.7.22

$ I = pi integral_0^(pi/4) integral_0^2 rho^3 dif rho sin 2phi dif phi = 4pi integral_0^(pi/4) sin 2phi dif phi = 2 pi $

15.7.26

$ I = 2pi integral_0^(pi/4) integral_0^(sec phi) rho^3 dif rho cos phi sin phi dif phi = pi/2 integral_0^(pi/4) sec^2 phi tan phi dif phi = pi/2 integral_0^(pi/4) tan phi dif tan phi = pi/4 $

15.7.37

$ I = integral_0^(2pi) integral_(pi/4)^(pi/2) integral_0^(2 cos phi) rho^2 sin phi dif rho dif phi dif theta = 16/3pi integral_(pi/4)^(pi/2) cos^3 phi sin phi dif phi = 4/3 pi(1/4 - 0) = pi/3  $

15.7.48

$ V = integral_(-pi/2)^(pi/2) integral_0^(cos theta) integral_0^(3sqrt(1 - r^2)) 1 dif z r dif r dif theta = integral_(-pi/2)^(pi/2) 1 - (1 - cos^2 theta)^(3/2) dif theta = -4/3 + pi $

15.8.2

a.

$ x = 1/3(u + 2v), y = 1/3(u - v) $

$ (partial(x, y))/(partial(u, v)) = (partial x)/(partial u) (partial y)/(partial v) - (partial x)/(partial v) (partial y)/(partial u) = -1/9 - 2/9 = - 1/3 $

b.

$y = 0 ==> u = v, x = y ==> v = 0, x + 2y = u = 2$

15.8.6

$ 2x^2 - x y - y^2 = (x - y)(2x + y) = u v $

means that

$ x = 1/3(u + v), y = 1/3(v - 2u) ==> (partial(x, y))/(partial(u, v)) = 2/9 + 1/9 = 1/3 $

$y = -2x + 4 ==> v - 2u = -2u - 2v + 12 ==> v = 4, y = -2x + 7 ==> v = 7$.

$y = x - 2 ==> v - 2u = u + v - 6 ==> u = 2, y = x + 1 ==> u = -1$

$ I = 1/3 integral_4^7 integral_(-1)^2 u dif u v dif v = 33/4  $

15.8.14

$ I = integral_0^2 integral_0^2 2 u v^3 e^(4u^2) dif u dif v = (e^16 - 1) integral_0^2 v^3 dif v = e^16 - 1 $

15.8.17

$ I = integral_0^3 integral_0^4 (z/3 + 1/2) dif y dif z = 4integral_0^3 z/3 + 1/2 dif z = 12 $

15.8.19

$ I = integral.triple a^2 b^2 c^2 u v w dif u dif v dif w = 8 a^2 b^2 c^2 integral_0^(pi/2) integral_0^(pi/2) integral_0^1 (rho sin phi cos theta)(rho sin phi sin theta)(rho cos phi)(rho^2 sin phi) dif rho dif phi dif theta \ = (4a^2 b^2 c^2)/3 integral_0^(pi/2) integral_0^(pi/2) sin^3 phi cos phi dif phi cos theta sin theta dif theta = (a^2 b^2 c^2)/6 integral_0^(pi/2) sin 2 theta dif theta = (a^2 b^2 c^2)/6 $

15.8.20

$ I = integral_0^3 integral_0^2 integral_1^2 (u v + v w)/(3u) dif u dif v dif w = 1/3 integral_0^3 integral_0^2 (v + v w ln 2) dif v dif w = 2/3 integral_0^3 (1 + w ln 2) dif w = 2 + 3 ln 2 $

15.8.26

$ V = integral.triple_G r dif y dif r dif theta = integral_a^b integral_0^(2pi) integral_0^(f(r)) r dif y dif theta dif r = integral_a^b 2pi r f(r) dif r = integral_a^b 2pi r f(x) dif x $

16.1.12

$ abs((dif r)/(dif t)) = sqrt(16 + 9) = 5 ==> I = integral_(-2pi)^(2pi) 4 times 5 dif t = 80 pi $

16.1.15

$ abs((dif r_1)/(dif t)) = sqrt(1 + 4t^2) ==> I_1 = integral_0^1 2t sqrt(1 + 4t^2) dif t = -1/6 + 5/6 sqrt(5) $

$ abs((dif r_2)/(dif t)) = 1 ==> I_2 = integral_0^1 (2 - t^2) dif t = 5/3 $

Thus, $I = I_1 + I_2 = 3/2 + 5/6 sqrt(5)$

16.1.20

a.

$ abs((dif r)/(dif t)) = sqrt(1 + 16) = sqrt(17) ==> I = integral_0^1 3sqrt(17t) dif t = 2 sqrt(17) $

b.

$ I = integral_0^1 sqrt(x) dif x + integral_0^2 sqrt(1 + 2y) dif y = 1/3 + 5/3 sqrt(5)  $

16.1.32

$ x = 3t ==> y = 2 - 2t ==> A = integral_0^2 (4 + 9t + 4 - 4t)sqrt(13) dif t = 26 sqrt(13) $

16.1.35

$ abs((dif r)/(dif t)) = sqrt(2 + 2 + 4t^2) = 2sqrt(1 + t^2) $

a.

$ M = integral_0^1 6t sqrt(1 + t^2) dif t = 4 sqrt(2) - 2 $

b.

$ M = integral_0^1 2sqrt(1 + t^2) dif t = ln(1 + sqrt(2)) + sqrt(2) $

16.2.11

a.

$ I = integral_0^1 ((3t^2 - 3t)hat(i) + 3t hat(j) + hat(k)) dot (hat(i) + hat(j) + hat(k)) dif t = integral_0^1 3t^2 + 1 dif t = 2 $

b.

$ I = integral_0^1 ((3t^2 - 3t)hat(i) + 3t^4 hat(j) + hat(k)) dot (hat(i) + 2t hat(j) + 4t^3 hat(k)) dif t = integral_0^1 6t^5 + 4t^3 + 3t^2 - 3t dif t = 3/2 $

c.

$ I = integral_0^1 ((3t^2 - 3t)hat(i) + hat(k)) dot (hat(i) + hat(j)) + (3t hat(j) + hat(k)) dot hat(k) dif t = integral_0^1 3t^2 - 3t + 1 dif t = 1/2 $

16.2.14

$ I = integral_1^2 t/t^2 times 2t dif t = 2 $

16.2.22

$ W = integral_0^(2pi) (t hat(i) + cos^2 t hat(j) + 12 sin t hat(k)) dot (cos t hat(i) - sin t hat(j) + 1/6 hat(k)) dif t = integral_0^(2pi) t cos t - cos^2 t sin t + 2 sin t dif t = 0 $

16.2.25

$ I = integral_2^(-1) (y^4 hat(i) - y hat(j)) dot (2y hat(i) + hat(j)) dif y = integral_(2)^(-1) 2y^5 - y dif y = -39/2 $

16.2.28

$ W = integral_0^(2pi) gradient f dot (dif r)/(dif t) dif t = integral_0^(2pi) 8(sin t + cos t)(hat(i) + hat(j)) dot (-sin t hat(i) + cos t hat(j)) = integral_0^(2pi) 8 cos 2t dif t = 0 $

16.2.29

a.

$ op("Cir")_1 = integral_0^(2pi) (-cos t sin t + sin t cos t) dif t = 0 $

$ F_1 = integral_0^(2pi) cos^2 t + sin^2 t dif t = 2pi $

$ op("Cir")_2 = integral_0^(2pi) sin^2 t + cos^2 t dif t = 2pi $

$ F_2 = integral_0^(2pi) -cos t sin t + cos t sin t dif t = 0 $

b.

$ op("Cir")_1 = integral_0^(2pi) (-cos t sin t + 16 sin t cos t) dif t = 0 $

$ F_1 = integral_0^(2pi) 4cos^2 t + 4sin^2 t dif t = 8pi $

$ op("Cir")_2 = integral_0^(2pi) 4sin^2 t + 4cos^2 t dif t = 8pi $

$ F_2 = integral_0^(2pi) -16cos t sin t + cos t sin t dif t = 0 $

16.2.30

$ F_1 = integral_0^(2pi) 2a^2 cos^2 t - 3a^2 sin^2 t dif t = -pi a^2 $

$ F_2 = integral_0^(2pi) 2a^2 cos^2 t + a^2 sin t cos t -  a^2 sin^2 t dif t = pi a^2 $

16.2.36

$ r_1 = (1 - t) hat(i) + t hat(j) ==> F_1 = integral_0^1 1 - 1 + 2t - 2t^2 dif t = 1/3 $

$ r_2 = -t hat(i) + (1 - t)hat(j) ==> F_2 = integral_0^1 (2t - 1) - 1 + 2t - 2t^2 dif t = -2/3 $

$ r_3 = t hat(i) ==> F_3 = integral_(-1)^1 t^2 dif t = 2/3 ==> F = 1/3 $

])