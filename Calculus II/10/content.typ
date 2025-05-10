#let title = [
	MAT1002 Calculus II\ Assignment 10
]

#import "../../main.typ"
#main.content(title, [


15.1.9

$ I = integral_0^(ln 2) e^(2x) (5 - e) dif x = 3/2(5 - e) $

15.1.10

$ I = integral_0^1 3/2 x e^x dif x = 3/2 $

15.1.19

$ I = integral_0^(ln 2) integral_0^(ln 2) e^(x - y) dif y dif x = integral_0^(ln 2) 1/2 e^x dif x = 1/2 $

15.1.22

$ integral_0^1 integral_0^1 y/(x^2 y^2 + 1) dif y dif x = integral_0^1 integral_0^1 (1)/(2x^2)((dif (x^2 y^2 + 1))/(x^2y^2 + 1)) dif x = integral_0^1 ln(x^2 + 1)/(2x^2) dif x \ = lr(ln(x^2 + 1)/(-2x)])_0^1 - integral_0^1 -1/(2x) times (2x)/(x^2 + 1) dif x = -1/2 ln 2 + arctan x]_0^1 = pi/4 - 1/2 ln 2 $

15.1.27

$ integral_0^1 integral_0^1 2 - x - y dif y dif x = integral_0^1 2 - x - 1/2 dif x = 1 $

15.1.34

$ I = integral_0^3 integral_0^1 x e^(x y) dif y dif x = integral_0^3 e^x - 1 dif x = e^3 - 4  $

15.2.14

(a)

$ integral_0^(pi/4) integral_(tan x)^1 dif y dif x $

(b)

$ integral_0^1 integral_0^(arctan y) dif x dif y $

15.2.17

(a)

$ integral_0^1 integral_x^(3 - 2x) dif y dif x $

(b)

$ integral_0^1 integral_0^y dif x dif y + integral_1^3 integral_0^((3 - y)/2) dif x dif y $

15.2.20

$ I = integral_0^pi (sin^2 x)/2 dif x = pi/4 $

#image("{66C17412-4903-43FD-8FBF-989B12C30624}.png")

15.2.46

$ I = integral_0^(pi/3) integral_(tan x)^sqrt(3) sqrt(x y) dif y dif x $

#image("{BE53AC7A-939E-457D-B784-A7B8420CA731}.png")

15.2.48

$ I = integral_0^2 integral_0^y 2y^2 sin x y dif x dif y = integral_0^2 2y( 1 - cos y^2) dif y = 4 - sin 4 $

#image("{B7CEE1A0-0A29-4EF3-BE3C-F637C40AE11D}.png")

15.2.50

$ I = integral_0^4 integral_0^sqrt(4 - y) e^(2y)/(4 - y) x dif x dif y = integral_0^4 e^(2y)/2 dif y = 1/2 (e^8 - 1)  $

#image("{D6664111-BF0C-45B8-8886-05EA4D65CC91}.png")

15.2.60

$ V = integral_0^2 integral_0^(sqrt(4 - x^2)) (3 - y) dif y dif x = integral_0^2 3sqrt(4 - x^2) - (4 - x^2)/2 dif x = -8/3 + 3 pi $

15.2.72

$ I = integral_0^oo 1/e^(2y) integral_0^oo x/e^x dif x dif y = integral_0^oo 1/e^(2y) dif y = 1/2 $

15.2.78

$ I = integral_0^2 integral_x^(pi x) 1/(y^2 + 1) dif y dif x = integral_0^(2) 1/(y^2 + 1) integral_(y/pi)^y dif x dif y + integral_2^(2pi) 1/(y^2 + 1) integral_(y/pi)^2 dif x dif y \ = (1 - 1/pi)integral_0^(2) (y dif y)/(y^2 + 1) - 1/pi integral_2^(2pi) (y dif y)/(y^2 + 1) + integral_2^(2pi) (2 dif y)/(y^2 + 1) \ = (1/2 - 1/(2pi))ln 5 - 1/(2pi) (ln(4pi^2 + 1) - ln 5) + 2arctan 2pi - 2 arctan 2 = 1/2 ln 5 - 1/(2pi) ln(4pi^2 + 1) + 2(arctan 2pi - arctan 2)  $

15.2.80

when $x^2 + y^2 - 9 <= 0 ==> x^2 + y^2 <= 9$, the integral has the minimum.

15.3.11

$ A = integral_0^1 integral_(x/2)^(2x) dif y dif x + integral_1^2 integral_(x/2)^(3 - x) dif y dif x = integral_0^1 3/2x dif x + integral_1^2 3 - 3/2x dif x = 3/4 + 6 - 3 - 3 + 3/4 = 3/2 $

#image("{ABD752F2-BFFE-4E1E-ABEE-439AAB8E6461}.png")

15.3.18

$ I = integral_0^2 4 - x^2 dif x + integral_0^4 sqrt(x) dif x = 8 - 8/3 + 16/3 = 32/3  $

#image("{8CCDD3D0-54BF-445E-A088-F5F6DFE5B931}.png")

15.3.22

$ A = 1/(ln^2 2) integral_(ln 2)^(2 ln 2) integral_(ln 2)^(2 ln 2) 1/(x y) dif y dif x = 1/(ln 2) integral_(ln 2)^(2 ln 2) 1/x dif x = 1 $

15.3.25

$ integral_(-5)^5 1/(1 + abs(x)/2)integral_(-2)^0 10000e^y dif y dif x = 10000(1 - e^(-2))(integral_(-5)^0 (2 dif x)/(2 - x) + integral_0^5 (2dif x)/(2 + x)) = 40000(1 - e^(-2))ln 7/2 approx 43329 $

15.4.3

$ r sin theta <= 1 ==> r <= csc theta,pi/4 <= theta <= (3pi)/4 $

15.4.5

$ r cos theta <= 2sqrt(3), r sin theta <= 2 ==>r <= 2sqrt(3) sec theta, r <= 2 csc theta $

when $theta = pi/6$, $2sqrt(3)sec theta = 2 csc theta$, means that 

$ 0 <= theta <= pi/6, 1 <= r <= 2sqrt(3)sec theta; pi/6 <= theta <= pi/2, 1 <= r <= 2 csc theta $

15.4.11

$ I = integral_0^(pi/2)integral_0^2 r^2 r dif r dif theta = 4 integral_0^(pi/2) dif theta = 2pi $

15.4.16

$ I = integral_(pi/4)^(pi/2) integral_(2)^(2 csc theta) r dif r dif theta = integral_(pi/4)^(pi/2) 2 csc^2 theta - 2 dif theta = 2 - 1/2 pi  $

15.4.25

$ I = integral_0^(pi/4)integral_0^(2sec theta) r^2 (r sin theta)^2 r dif r dif theta = integral_0^2 integral_0^x y^2(x^2 + y^2) dif y dif x $

#image("{77BDBB93-A2ED-45A9-9629-912AF74F7572}.png")

15.4.36

$ A = 1/pi integral_0^(2pi)integral_0^1 ((1 - r cos theta)^2 + (r sin theta)^2)r dif r dif theta = 1/pi integral_0^(2pi)integral_0^1 r^3 - 2 r^2 cos theta + r dif r dif theta = 1/pi integral_0^(2pi) 3/4 - 2/3 cos theta dif theta = 3/2  $

15.4.46

$ A = integral_(pi/4)^((3pi)/4) 2 sin^2 theta - 1/2 csc^2 theta dif theta = pi/2  $

15.5.7

$ I = integral_0^1 integral_0^1 1/3 + x^2 + y^2 dif y dif x = integral_0^1 2/3 + x^2 dif x = 1 $

15.5.16

$ I = integral_0^1 integral_0^(1 - x^2) x(1 - x^2 - y) dif y dif x = integral_0^1 1/2 x(1 - x^2)^2 dif x = 1/12 $

15.5.21

a.

$ I = integral_(-1)^1 integral_0^(1 - x^2) integral_(x^2)^(1 - z) dif y dif z dif x $

b.

$ I = integral_0^1 integral_(-sqrt(1 - z))^(sqrt(1 - z)) integral_(x^2)^(1 - z) dif y dif x dif z $

c.

$ I = integral_0^1 integral_0^(1 - z)integral_(-sqrt(y))^(sqrt(y)) dif x dif y dif z $

d.

$ I = integral_0^1 integral_0^(1 - y) integral_(-sqrt(y))^(sqrt(y)) dif x dif z dif y $

e.

$ I = integral_0^1 integral_(-sqrt(y))^(sqrt(y)) integral_0^(1 - y) dif z dif x dif y $

15.5.24

$ V = integral_0^1 integral_0^(1 - x) integral_0^(2 - 2z) dif y dif z dif x = integral_0^1 integral_0^(1 - x) 2 - 2z dif z dif x = integral_0^1 2 - 2x - (1 - x)^2 dif x = 2/3 $

15.5.29

$ V = 8integral_0^1 integral_0^(sqrt(1 - x^2)) integral_0^(sqrt(1 - x^2)) dif z dif y dif x = 8 integral_0^1 1 - x^2 dif x = 16/3 $

15.5.42

$ I = integral_0^1 integral_0^1 integral_0^sqrt(y) 12 x z e^(z y^2) dif x dif y dif z = integral_0^1 integral_0^1 6y z e^(z y^2) dif y dif z = integral_0^! 3e^(z) - 3 dif z = 3e - 6  $

])