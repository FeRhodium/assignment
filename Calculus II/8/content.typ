#let title = [
	MAT1002 Calculus II\ Assignment 7
]

#import "../../main.typ"
#main.content(title, [
14.4.4

(a)

$ (dif w)/(dif t) = (partial w)/(partial x) (dif x)/(dif t) + (partial w)/(partial y) (dif y)/(dif t) + (partial w)/(partial z) (dif z)/(dif t) = (-2x sin t)/(x^2 + y^2 + z^2) + (2y cos t)/(x^2 + y^2 + z^2) + (4z)/(sqrt(t)(x^2+y^2 + z^2)) = 16/(1 + 16t) $

$ w = ln(1 + 16t) ==> (dif w)/(dif t) = 16/(1 + 16t) $

(b)

$ lr((dif w)/(dif t)])_(t = 3) = 16/49 $

14.4.10

(a)

$ (partial w)/(partial u) = (2x e^v (u cos u + sin u))/(x^2 + y^2 + z^2) + (2y e^v (cos u - u sin u))/(x^2 + y^2 + z^2) + (2z e^v)/(x^2 + y^2 + z^2) = (4 u e^(2v))/(2 u^2 e^(2v)) = 2/u $

$ (partial w)/(partial v) = (2(x^2 + y^2 + y^2))/(x^2 + y^2 + z^2) = 2 $

$ w = ln (2u^2 e^(2v)) = 2v + 2 ln u + ln 2 $

$ (partial w)/(partial u) = 2/u, (partial w)/(partial v) = 2 $

(b)

$ lr((partial w)/(partial u)])_((-2, 0)) = -1, lr((partial w)/(partial v)])_((-2, 0)) = 2 $

14.4.22

#image("{FEE31EE4-03B3-409B-95D0-6422BBBC7523}.png")

$ (partial w)/(partial p) = (partial w)/(partial x) (partial x)/(partial p) + (partial w)/(partial y)(partial y)/(partial p) + (partial w)/(partial z)(partial z)/(partial p) + (partial w)/(partial v)(partial v)/(partial p) $

14.4.28

$ (dif y)/(dif x) = -(e^y + y cos x y)/(x e^y + x cos x y + 1) = -(2 + ln 2) $

14.4.32

$ (partial z)/(partial x) = -(e^y + 2/ x)/(y e^z) = -(2 + 2)/(3 ln 2) = -4/(3 ln 2) $


$ (partial z)/(partial y) = -(x e^y + e^z)/(y e^z) = -(2 + 3)/(3 ln 2) = - 5/(3 ln 2) $


14.4.44

(a)

$ (partial w)/(partial r) = (partial w)/(partial x) (dif x)/(dif r) + (partial w)/(partial y) (dif y)/(dif r) = f_x cos theta + f_y sin theta $

$ 1/r (partial w)/(partial theta) = 1/r ((partial w)/(partial x) (dif x)/(dif theta) + (partial w)/(partial y) (dif y)/(dif theta)) = - f_x sin theta + f_y cos theta $

(b)

$ (partial w)/(partial r) sin theta = f_x cos theta sin theta + f_y sin^2 theta, 1/r (partial w)/(partial theta) cos theta = -f_x sin theta cos theta + f_y sin theta ==> f_y = sin theta (partial w)/(partial r) + (cos theta)/r (partial w)/(partial theta) $

$ f_x = cos theta (partial w)/(partial r) - (sin theta)/r (partial w)/(partial theta) $

(c)

$ f_x^2 + f_y^2 = (sin^2 theta+ cos^2 theta)(((partial w)/(partial r))^2 + 1/r^2 ((partial w)/(partial theta))^2) = ((partial w)/(partial r))^2 + 1/r^2 ((partial w)/(partial theta))^2 $

14.4.45

$ w_(x x) = (partial)/(partial x)(x f_u + y f_v) = f_u + (x partial f_u)/(partial x) + (y partial f_v)/(partial x) = f_u + x^2 f_(u u) + y^2 f_(v v) $
$ w_(y y) = (partial)/(partial y)(-y f_u + x f_v) = -f_u - (y partial f_u)/(partial y) + (x partial f_v)/(partial y) = -f_u + y^2 f_(u u) + x^2 f_(v v) $

which imply

$ w_(x x) + w_(y y) = (x^2+y^2)(f_(u u) + f_(v v)) = 0 $

14.4.49

$ (dif T)/(dif t) = -sin t(8x - 4y) + cos t(8y - 4x) = 4 sin^2 t - 4 cos^2 t = -4 cos 2t = 0 \ ==> t = pi/4, (3pi)/4, (5pi)/4, (7pi)/4 $

Meanwhile

$ (dif^2 T)/(dif t^2) = 8 sin 2t $

which means the maximums occur at $t = pi/4, (5pi)/4$, minimums occur at $t = (3pi)/4, (7pi)/4$

14.4.51

$ (dif G)/(dif x) = (partial G)/(partial u) (dif u)/(dif x) + (partial G)/(partial x) $

$ F'(x) = 2x sqrt(x^8 + x^3) + integral_0^(x^2) (3x^2)/(2sqrt(t^4 + x^3)) dif t $

14.4.52

$ F'(x) = -2x sqrt(x^6 + x^2) + integral_(x^2)^1 x/(sqrt(t^3 + x^2)) dif x $

14.5.3

$ gradient f = y^2 i + 2x y j $

#image("{8C4DBFDD-0A08-4C9F-A1DD-0563493ED924}.png")

14.5.4

$ gradient f = x i - y j $

#image("{24A07507-FDAF-4C2E-B964-EF6536C1B66D}.png")

14.5.9

$ gradient f = (-x(x^2 + y^2 + z^2)^(-3/2) + 1/x)i + (-y(x^2 + y^2 + z^2)^(-3/2) + 1/y)j + (-z(x^2 + y^2 + z^2)^(-3/2) + 1/z)k $

$ ==> gradient f(-1, 2, -2) = -26/27 i + 23/54 j - 23/54 k $

14.5.17

$ gradient g = 3 e^x cos y z hat(i) - 3y e^x cos y z hat(j) - 3z e^x cos y z hat(k) = 3hat(i) $

$ Dif_u g(0, 0, 0) = 3 hat(i)dot 1/3(2hat(i) + hat(j) - 2hat(k)) = 2 $

14.5.20

$ gradient f = (2x y + y e^(x y) sin y)hat(i) + (x^2 e^(x y)cos y + x e^(x y) sin y) hat(j) ==> gradient f(1, 0) = 2hat(j) $

means that $u = hat(j)$ is the direction that $f$ increases most rapidly, $-hat(j)$ is the direction that $f$ decreases most rapidly. $(Dif_u f)_(P_0) = 2$, $(Dif_(-u) f)_(P_0) = -2$

14.5.21

$ gradient f = (1/y) hat(i) + (-x/y^2 - z)hat(j) - y hat(k) ==> gradient f(4, 1, 1) = hat(i) - 5 hat(j) - hat(k) $

means that $u = 1/(3sqrt(3))(hat(i) - 5 hat(j) - hat(k))$ is the direction that $f$ increases most rapidly, $-1/sqrt(27)(hat(i) - 5 hat(j) - hat(k))$ is the direction that $f$ decreases most rapidly. $(Dif_u f)_(P_0) = 3sqrt(3)$, $(Dif_(-u) f)_(P_0) = -3sqrt(3)$

14.5.26

$ gradient f = 2x i - j ==> gradient f(sqrt(2), 1) = 2sqrt(2) i - j ==> y = 2sqrt(2) x - 3 $

#image("{80981C1A-4E77-46CB-BA0C-1AF3D8C575F8}.png")
14.5.32

$ gradient f = (2x(x^2 + y^2) - 2x(x^2 - y^2))/(x^2 + y^2)^2 hat(i) + (-2y(x^2 + y^2) - 2y(x^2 - y^2))/((x^2 + y^2)^2) hat(j) = 1/(x^2 + y^2)^2 (4 x y^2 hat(i) - 4 x^2 y hat(j)) $

$ ==> gradient f(1, 1) = hat(i) - hat(j) $

means that in $1/sqrt(2)(hat(i) + hat(j))$ and $-1/sqrt(2)(hat(i) + hat(j))$ the derivative is $0$.

14.5.36

(a)

$gradient f$ and $v$ has the same direction such that the derivative is the greatest. Thus $gradient f = 2sqrt(3) times 1/sqrt(3)(hat(i) + hat(j) - hat(k)) = 2(hat(i) + hat(j) - hat(k))$.

(b)

$ (Dif_(hat(i) + hat(j)) f)_P = 2(hat(i) + hat(j) - hat(k))dot (hat(i) + hat(j)) = 4 $

14.6.8

(a)

$ gradient f = (2x - 2y - 1)hat(i) + (2y - 2x + 3)hat(j) - hat(k) ==> gradient f(2, -3, 18) = 9 hat(i) - 7hat(j) - hat(k) \ ==> 9(x - 2) - 7(y + 3) - (z - 18) = 0 ==> 9x - 7y - z = 21 $

(b)

$x = 2 + 9t, y = -3 - 7t, z = 18 - t$

14.6.11

$ (-1)/(2sqrt(y_0 - x_0)) (x - x_0) + 1/(2sqrt(y_0 - x_0)) (y - y_0) + (z - z_0) = 0 \ ==> -1/2(x - 1) + 1/2 (y - 2) + z - 1 = 0 ==> x - y + 2z - 1 = 0 $

14.6.17

$ gradient f = (3x^2 + 6 x y^2 + 4y)hat(i) + (6 x^2 y + 3y^2 + 4x)hat(j) - 2z hat(k) ==> gradient f(1, 1, 3) = 11 hat(i) + 13 hat(j) - 6 hat(k) $

$ gradient g = 2 x hat(i) + 2 y hat(j) + 2 z hat(k) ==> gradient g(1, 1, 3) = 2 hat(i) + 2 hat(j) + 6 hat(k) $

$ (11hat(i) + 13 hat(j) - 6hat(k)) times (2 hat(i) + 2 hat(j) + 6 hat(k)) = mat(delim: "|", hat(i), hat(j), hat(k); 11, 13, -6; 2, 2, 6) = 90(hat(i) - hat(j)) ==> x = 1 + t, y = 1 - t, z = 3  $

14.6.20

$ gradient f = (e^x cos y z hat(i) - y e^x cos y z hat(j) - z e^x cos y z hat(k))  ==> dif f = hat(i) dot 1/sqrt(3)(hat(i) + hat(j) - hat(k)) dif s = 1/(10sqrt(3)) $

14.6.23

a.

$ gradient T = sin 2y hat(i) + 2x cos 2y hat(j) ==> (Dif_(sqrt(3)/2 hat(i) - 1/2 hat(j)) f)_P = sqrt(3)/2 sin sqrt(3) - 1/2 cos sqrt(3) approx 0.935 $

b.

$ (dif T)/(dif t) = (dif T)/(dif r) times (dif r)/(dif t) = sqrt(3) sin sqrt(3) - cos sqrt(3) approx 1.87 $

14.6.29

a.

$ f(0, 0) = 1 ==>  L(x, y) = 1 + x $

b.

$ f(0, pi/2) = 0 ==> L(x, y) = -(y - pi/2) = pi/2 - y $

14.6.36

$ f(1, 2) = 4 + 2 = 6 ==> L(x, y) = 6 + 4(x - 1) + (4 + 1)(y - 2) = 4x + 5y - 8 $

$ abs(f_(x x)) = abs(y cos(x - 1)) <= 2.1, abs(f_(x y)) = abs(2y - sin(x - 1)) <= 4.3, f_(y y) = 2x <= 2.2 ==> M = 4.3 $

$ ==> abs(E(X, Y)) <= 4.3/2(abs(x - 1) + abs(y - 2))^2 <= 4.3/2 times 0.04 = 0.086 $

14.6.46

$ f(1, 1, 2) = 5 ==> L(x, y) = 5 + 3(x - 1) + 3(y - 1) + 2(z - 2) = 3x + 3y + 2z - 5 $

$ f_(x x) = 2, f_(y y) = 0, f_(z z) = 1/2, f_(x y) = 1, f_(x z) = 0, f_(y z) = 1 ==> M = 2 $

$ ==> abs(E(x, y)) <= 2/2(abs(x - 1) + abs(y - 1) + abs(z - 2))^2 <= (0.01 + 0.01 + 0.08)^2 = 0.01 $

14.6.52

(a)

$ gradient f = 2x(y + 1) hat(i) + x^2 hat(j) ==> gradient f(1, 0) = 2hat(i) + hat(j) ==> (D_(hat(i)) f)_((1, 0)) = 2 > 1 = (D_(hat(j))f)_((1, 0)) $

means that $f$ is more sensitive in $x$.

(b)

$ dif f = 0 ==> 2dif x + dif y = 0 ==> (dif x)/(dif y) = -1/2 $

14.6.54

$ dif Q = 1/2 ((2 K M)/h)^(-1/2)(2M/h dif K + 2K/h dif M - (2K M)/h^2 dif h) = 10 dif K + dif M - 400 dif h $

means that $Q$ is most sensitive to changes in $h$.

14.6.57

$ v = 1/2 t^(-1/2) hat(i) + 1/2 t^(-1/2) hat(j) + 2hat(k) ==> P_0 = (1, 1, 1), v = 1/2 hat(i) + 1/2 hat(j) + 2hat(k) $
 
$ gradient f = 2 x hat(i) + 2 y hat(j) - hat(k) ==> gradient f(1, 1, 1) = 2hat(i) + 2hat(j) - hat(k) ==> v dot f = 0 $

])