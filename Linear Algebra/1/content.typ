#let title = [
	MAT2041A\ Foundations of Linear Algebra and Applications\ Assignment 1
]


#set math.mat(delim: "[")

#import "../../main.typ"
#main.content(title, [

1.

TFTFFTFTTT

2.

$ a = u^T v = mat(1, 2, -3)mat(-2; 3; 4) = -8 $

$ A = u v^T = mat(1; 2; -3)mat(-2, 3, 4) = mat(-2, 3, 4; -4, 6, 8; 6, -9, -12) $

since $a_i = v_i u$ for all $i = 1, 2, 3$, the column rank of $A$ is $1$, sthe column space of $A$ and $u$ are the same.

3.

(a)

$ A B = mat(0, 1, -1, 1; 1, -2, -1, -1; -1, 1, 0, -1; 2, 1, -2, 0)mat(2, 2, -2, 0; 1, -3, 0, -2; 2, 1, 0, -3; -3, -1, -1, -2) = mat(-4, -5, -1, -1; 1, 8, -1, 9; 2, -4, 3, 0; 1, -1, -4, 4) $

(b)

$ A B = mat(mat(0, 1; 1, -2)mat(2, 2; 1, -3) + mat(-1, 1; -1, -1)mat(2, 1; -3, -1), mat(0, 1; 1, -2)mat(-2, 0; 0, -2) + mat(-1, 1; -1, -1)mat(0, -3; -1, -2);mat(-1, 1; 2, 1)mat(2, 2; 1, -3) + mat(0, -1; -2, 0)mat(2, 1; -3, -1), mat(-1, 1; 2, 1)mat(-2, 0; 0, -2) + mat(0, -1; -2, 0)mat(0, -3; -1, -2)) = mat(-4, -5, -1, -1; 1, 8, -1, 9; 2, -4, 3, 0; 1, -1, -4, 4) $

4.

(a)

$ b = mat(2 - 2 - 3; -3 + 2 + 2 times 3; -2 -2 + 2 times 3) = mat(-3; 5; 2) $

(b)

$ b = mat(2; -3; -2) -2mat(1; -1; 1) + 3mat(-1; 2; 2) = mat(-3; 5; 2) $

5.

(a)

$x$ can be described as $k mat(4; 5; -1)$ where $k in F$, which means

$ A x = k mat(-2, 1, -3; 3, -2, 2; 7, -6, -2)mat(4; 5; -1) = k mat(-8 + 5 + 3; 12 - 10 - 2; 28 - 30 + 2) = 0 $

(b)

Since $ 4mat(-2; 3; 7) + 5mat(1; -2; -6) - mat(-3; 2; -2) = 0 $

the column vectors of $A$ is not linearly independent.

(c)

Accroding to (b), 

$ op("Span"){mat(-2; 3; 7), mat(1; -2; -6), mat(-3; 2; -2)} = op("Span"){mat(-2; 3; 7), mat(1; -2; -6)} $

where it cannot find a smaller set of vectors to span a same space obviously, which implies $op("rank")(A) = 2$

6.

Let $B = A A^T$,

$ B_(i j) = sum_(k = 1)^n A_(i k)A^T_(k j) = sum_(k = 1)^n A^T_(k i)A_(j k) = B_(j i) $

which means $B$ is a symmetric matrix.

$A^T A = A^T (A^T)^T$ is also a symmetric matrix.

7.

Let $A = mat(A_1; dots; A_m)$ be a $m times n$ matrix, $B = mat(b_1, dots, b_p), C = mat(c_1, dots, c_p)$ be $n times p$ matrices.

$ A(B + C) &= mat(A(b_1 + c_1), dots, A(b_p + c_p)) = mat(A b_1 + A c_1, dots, A b_p + A c_p) \ &= mat(A b_1, dots, A b_p) + mat(A c_1, dots, A c_p) = A B + A C $

8.

(a)

$ A^2 = mat(0, -1; 1, 0)^2 = mat(-1, 0; 0, -1) = -I $

(b)

$ A^2 = mat(1, 1; -1, -1)^2 = mat(0, 0; 0, 0) = 0 $

9.

Let $a_i in F$ be the not all zero scalar for $i = 1,2,3$,

$ a_1mat(u_1; u_2) + a_2mat(v_1; v_2) + a_3mat(w_1; w_2) = mat(a_1 u_1 + a_2 v_1 + a_3 w_1; a_1 u_2 + a_2 v_2 + a_2 w_2) $

Since $u_1, v_1, w_1$ are linearly independent, $a_1 u_1 + a_2 v_1 + a_3 w_1 != 0$, which means $mat(a_1 u_1 + a_2 v_1 + a_3 w_1; a_1 u_2 + a_2 v_2 + a_2 w_2) != 0$, i.e $mat(u_1; u_2), mat(v_1; v_2), mat(w_1; w_2)$ are linearly independent.

Let $u_1, v_1, w_1 = 1, 0, 0$, $mat(u_1; u_2), mat(v_1; v_2), mat(w_1; w_2) = mat(1; 0; 0), mat(0; 1; 0), mat(0; 0; 1)$ are linearly independent, but $u_1, v_1, w_1$ are dependtent obviously, which means the reverse is false.


])