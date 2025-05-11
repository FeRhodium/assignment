#set math.mat(delim: "[")

#let title = [
	MAT2041A\ Foundations of Linear Algebra and Applications\ Assignment 5
]

#import "../../main.typ"
#main.content(title, [
1.

Let the LC

$ c_1 x_1 + c_2 x_2 + ... + c_k x_k = 0 $

applying $A^i (0 <= i <= k - 1)$ to both side,

$ c_1 lambda_1^i x_1 + c_2 lambda_2^i x_2 + ... + c_k lambda_k^i x_k = 0 $

i.e.

$ mat(1, 1, 1, ..., 1; lambda_1, lambda_2, lambda_3, ..., lambda_k; lambda_1^2, lambda_2^2, lambda_3^2, ..., lambda_k^2; dots.v, dots.v, dots.v, dots.down, dots.v; lambda_1^(k - 1), lambda_2^(k - 1), lambda_3^(k - 1), ..., lambda_k^(k - 1)) mat(x_1; x_2; x_3; dots.v; x_k) = 0 $

The coefficient matrix is a Vandermonde matrix. Since $lambda_i$ are distinct, its determinant is non-zero. Thus, the matrix is invertible, and the only solution for the LC is $c_i = 0(1 <= i <= k)$, since $x_i != 0$. Therefore, $x_1, x_2, ..., x_k$ are linearly independent.

2.

for matrix $A$, $lambda_1 = lambda_2 = 2$, AM $=2$, $(A - 2I)v = 0 ==> v = mat(1, 0)^T ==> op("GM") = 1 != op("AM")$. Thus, $A$ is not diagonalizable.

for matrix $B$, $det(B - lambda I) = (3 - lambda)(1 - lambda) + 1 = (2 - lambda)^2 ==> op("AM") = 2$. $(B - 2I)v = 0 ==> v = mat(1, 1)^T ==> op("GM") = 1 != op("AM")$. Thus, $B$ is not diagonalizable.

3.

(a)

Let $u_k = mat(F_(k + 1), F_k)^T$,

$ u_(k + 1) = mat(F_(k + 2); F_(k + 1)) = mat(1, 1; 1, 0) mat(F_(k + 1); F_k) = A u_k $

where $A = mat(1, 1; 1, 0)$.

(b)

For $det(A - lambda I) = 0 ==> lambda^2 - lambda - 1 = 0 ==> lambda_1 = (1 plus sqrt(5))/2, lambda_2 = (1 - sqrt(5))/2$

For $lambda_1$, solve $(A - lambda_1 I) v_1 = 0 ==> v_1 = mat(1, (sqrt(5) - 1)/2)^T$.

For $lambda_2$, solve $(A - lambda_2 I) v_2 = 0 ==> v_2 = mat(1, (-sqrt(5) - 1)/2)^T$.

(c)

$A = P D P^(-1)$ where

$ P = mat(1, 1; (sqrt(5) - 1) / 2, (-sqrt(5) - 1)/2), D = mat(lambda_1, 0; 0, lambda_2) ==> A^k = P D^k P^(-1) $

Let $u_0 = mat(1, 0)^T$,

$ F_k = 1/sqrt(5) (((1 + sqrt(5))/2)^k - ((1 - sqrt(5))/2)^k) $

4.

for matrix $A$, since $det(A) = -3 < 0$, $A$ is not positive definite.

for matrix $B$, since $lambda_2 = -2 < 0$, $B$ is not positive definite.

5.

(a)

$det(A - lambda I) = 0 ==> (2 - lambda)^2 = 1 ==> lambda_1 = 1, lambda_2 = 3$.

for $lambda_1$, $(A - lambda_1I) v_1 = 0 ==> v_1 = mat(1, -1)^T $, for $lambda_2$, $(A - lambda_2 I) v_2 = 0 ==> v_2 = mat(1, 1)^T$.

since $B = 1/sqrt(2) mat(v_1, v_2)$ is orthogonal, i.e. $B^(-1) = B^T$, we have

$ B^T A B = mat(3, 0; 0, 1) = D $

(b)

Both $A$ and $D$ have eigenvalues $3$ and $1$, which are positive. Thus, their signatures are identical.

6.

$ Q^* Q = 1/2 mat(1, -i; -i, 1) mat(1, i; i, 1) = I $

$det(A - lambda I) = 0 ==> lambda^2 - 5lambda + 4 = 0 ==> lambda_1 = 1, lambda_2 = 4$, which are also the eigenvalues of $U$.

$ Q U Q^* = mat(1, -i; -i, 1) mat(4, (1 + i)/sqrt(2); 0, 1) mat(1, i; i, 1) != A $

Thus, $Q$ and $U$ do not form a Schur decomposition of $A$.

7.

$det(A^T A - lambda I) = 0 ==> (10 - lambda)(40 - lambda) = 400 ==> lambda_1 = 50, lambda_2 = 0$.

For $lambda_1$, $v_1 = 1/sqrt(5) mat(1, 2)^T$. For $lambda_2$, $v_2 = 1/sqrt(5) mat(-2, 1)^T$.

$ sigma_1 = sqrt(lambda_1) = 5 sqrt(2), u_1 = (A v_1)/sigma_1 = 1/sqrt(10) mat(1; 3) $

Thus

$ U = 1/sqrt(10) mat(1, -3; 3, 1), Sigma = mat(5sqrt(2), 0; 0, 0), V = 1/sqrt(5) mat(1, -2; 2, 1) $

9.

For any projection matrix, eigenvalues $lambda = lambda^2 ==> lambda = 0$ or $lambda = 1$.

non-zero singular values $sigma = sqrt(lambda) = 1$.

10.

Let $y = V^T v ==> ||y||_2 = ||V^T v||_2 = ||v||_2$. Thus,

$ (||A v||_2)/(||v||_2) = (||U Sigma y||_2)/(||y||_2) = (||Sigma y||_2)/(||y||_2) = 1/(||y||_2) sqrt(sum_(i = 1)^r sigma_i^2 y_i^2) <= (sigma_1)/(||y||_2) sqrt(sum_(i = 1)^r y_i^2) <= sigma_1 $

])