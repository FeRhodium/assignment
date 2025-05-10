#let title = [
	MAT1002 Calculus II\ Assignment 5
]

#import "../../main.typ"
#main.content(title, [

12.1.16

The parabola $z = y^2$ in plane $x = 1$

12.1.21

a.

The points in the Sphere $x^2 + y^2 + z^2 = 4$, but not in the Sphere $x^2 + y^2 + z^2 = 1$

b.

The points above the plane $z = 0$, under the Sphere $x^2 + y^2 + z^2 = 1$

12.1.26

a.

$y = -1, z = 2$

b.

$x = 3, z = 2$

c.

$x = 3, y = -1$

12.1.32

$y = 1$

12.1.33

$ x^2 + y^2 = 16, z = 3 $

12.1.34

$ x^2 + y^2 = 3, z = 0 $

12.1.58

$ x^2 + (y + 1/3)^2 + (z - 1/3)^2 = 29/9 $

which means center$(0, -1/3, 1/3)$, radii $=29/9$.

12.2.16

$ -sqrt(2)/2 i + sqrt(2)/2 j $

12.2.26

$ 11(9/11 i - 2/11 j + 6/11 k) $

12.2.34

$ -sqrt(3) i + sqrt(3) j + sqrt(3) k $

12.2.36

(a)

$ arrow(P_1 P_2) = 3i - 6j + 2k = 7(3/7 i - 6/7 j + 2/j k) $

(b)

$(5/2, 1, 6)$

12.2.46

$ F_1 sin alpha + F_2 sqrt(3)/2 = G, F_1 cos alpha = 1/2 F_2 $

which imply $ alpha approx 74.42 degree, F_2 approx 18.81 op("N ") $

12.2.49

$ P = (5 cos 60 degree, 5 sin 60 degree) = (5/2, (5sqrt(3))/2) $

$ Q = (5/2 + 10 cos 315 degree, (5sqrt(3))/2 + 10 sin 315 degree) = ((5 + 10sqrt(2))/2, (5sqrt(3) - 10sqrt(2))/2) $

12.2.51

(a)

$M(5/2, 5/2, 0), arrow(C M) = 3/2 i + 3/2 j - 3k$

(b)

$ 2/3 arrow(C M) = i + j - 2k $

(c)

$ arrow(O C) + 2/3arrow(C M) = 2 i + 2j + k $

which is the location of the center of the mass.

12.3.5

a. 

$ v dot u = 5 - 3 = 2, |v| = sqrt(34), |u| = sqrt(3) $

b.

$ cos(v, u) = 2/(sqrt(102)) = sqrt(102)/51 $

c.

$ (v dot u)/abs(v) = 2/sqrt(34) = sqrt(34)/17 $

d

$ (v dot u)/(v^2) v = 1/17 (5j - 3k) $

12.3.17

$ (v_1 + v_2) dot (v_1 - v_2) = v_1^2 - v_2^2 = 0 <==> |v_1| = |v_2| $

which means the sum of two vectors of equal length is orthogonal to their difference.

12.3.22

$ ((u + v) dot v)/(abs(u + v)abs(v)) = ((u + v) dot u)/(abs(u + v)abs(u)) $

when $abs(u) = abs(v)$, which means the angle between diagonal and $u$ and the angle between diagonal and $v$ are equal.

12.3.25

(a)

$ abs(cos theta) <= 1 ==> abs(u dot v) = abs(u)abs(v)abs(cos theta) <= abs(u) abs(v) $

(b)

$ cos theta = 1 ==> op("the vectors are parallel") $

12.3.28

No since $i dot j = i dot 2j = 0$

12.3.29

$ (u - (u dot v)/v^2 v) dot (u dot v)/v^2 v = (abs(v)^2(u dot v)^2 - (u dot v)^2 abs(v)^2)/(abs(v)^4) = 0 $

12.3.44

$ W = F x cos 60 degree = 5times 10^5 op("J ") $

12.4.18

(a)

$ arrow(P Q) = (2, -1, -1), arrow(P R) = (1, 0, -2) $

$ mat(delim: "|", i, j, k; 2, -1, -1; 1, 0, -2) = 2i +3j + k ==> A = sqrt(14)/2 $

(b)

$ u = 1/sqrt(14)(2i - 3j + k) $

12.4.20

$ (u times v) dot w = mat(delim: "|", 1, -1, 1; 2, 1, -2; -1, 2, -1) = 3 - 4 + 5 = 4 $

12.4.25

$ abs(arrow(P Q)) abs(F) sin 60 degree = (3sqrt(3))/2 $

12.4.28

a. True since $abs(u)abs(v) cos theta = u dot v = v dot u$

b. True since $u times v + v times u = abs(u)abs(v)(sin theta - sin theta) = 0$

c. True since $(-u) times v = abs(u)abs(v)(-sin theta) = - u times v $

12.4.37

$ arrow(A B) = 3i-2j, arrow(A D) = 5i + j ==> A = mat(delim: "|", i, j, k; 3, -2, 0; 5, 1, 0;) = 13 $

12.4.48

$ arrow(A B) = i + 2j, arrow(A C) = -3j + 2k, arrow(A D) = 3i - 4j + 5k ==> V = mat(delim: "|", 1, 2, 0; 0, -3, 2; 3, -4, 5) = 5 $

12.5.2

$ arrow(P Q) = -2i - 2j + 2k ==> x = 1 - 2t, y = 2 - 2t, z = -1 + 2t $

12.5.24

$ mat(delim: "|", i, j, k; 1, -1, -2; 2, -1, -1) = -i - 3j + k ==> x + 3y - z = 9 $

12.5.25

$x + 3y + 4z = 34$

12.5.28

$t = 0, s = -1 ==> P(0, 2, 1)$

$ mat(delim: "|", i, j, k; 1, -1, 1; 2, 1, 5) =  -6i - 3j + 3k ==> 2x + y - z = 1 $

12.5.32

$ arrow(P_1 P_2) times n = mat(delim: "|", i, j, k; 2, 0, -2; 4, -1, 2) = -2i - 12j - 2k ==> x + 6y + z = 16 $

12.5.38

Let $t = 0 ==> P(0, -3, 8) ==> arrow(P S) = (-11, 7, 3)$

$ d = 1/(sqrt(4^2 + 4^2)) abs(mat(delim: "|", i, j, k; -11, 7, 3; 4, 0, 4)) = abs(28i + 56 j - 28k)/(4sqrt(2)) = 7 sqrt(3) $

12.5.45

$ d = 9/sqrt(1 + 4 + 36) = (9sqrt(41))/41 $

12.5.46

$ P(10, 0, 0), S(1, 0, 0)==> d = ((9i) dot (i + 2j + 6k))/sqrt(41) = (9sqrt(41))/41 $

12.5.47

$ cos theta = (2 + 1)/(sqrt(2)sqrt(9)) = sqrt(2)/2 ==> theta = pi/4 $

12.5.59

Let $x - 2 = 2(y - 2z) ==> x + 1/2 x - 1 = 5 ==> x = 4 ==> y - 2z = 1 ==> x =  4, y = 1 + 2t, z = t$ 

12.5.69

$ x + y = 3, 2y + z = 7 $

12.5.73

(a)

$ -x_0 i + y j + z k = c((x_1 - x_0)i + y_1 j + z_1 k) ==> -x_0 = c(x_1 - x_0), y = c y_1, z = c z_1 $

where $c$ is a positive real number.

(b)

$ x_1 = 0 ==> c = 1 ==> y_1 = y, z_1 = z $

$ x_1 = x_0 ==> c = 0 ==> y_1 = z_1 = 0 $

$ lim_(x_0 -> oo) c = lim_(x_0 -> oo) (-x_0)/(x_1 - x_0) = 1 ==> y_1 -> y, z_1 -> z $

])