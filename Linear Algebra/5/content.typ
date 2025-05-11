#let title = [
	MAT2041A\ Foundations of Linear Algebra and Applications\ Assignment 5
]

#set math.mat(delim: "[")

#import "../../main.typ"
#main.content(title, [
1.

(a) $<==>$ (b): T is injective $<==> ker T = {0} ==> dim ker (T) = 0$.

(b) $<==>$ (d): The columns of $A$ are linearly independent $<==> op("rank")(A) = n <==> dim ker T = 0$.

(c) $<==>$ (d): The left inverse exists $<==>$ The columns of $A$ are linearly independent.

2.

(a)

For any $v in ker L$, $L(L(v)) = L(0) = 0$ means that $v in ker L$. Thus, $ker L subset ker L^2$

For any $v in ker L^k$, $L(L^k (v)) = L(0) = 0$ means that $v in ker L^(k + 1)$. Thus, $ker L^k subset ker L^(k + 1)$

(b)

For any $v in ker L^(j + 2)$, $0 = L^(j + 2) (v) = L^(k + 1) (L(v)) = 0 ==> L(v) in ker L^(j + 1) (v)$ means that $L(v) in ker L^j ==> L^j (L(v)) = 0$. Thus, $ker L^(j + 2) (v) = ker L^(j + 1) (v)$(also from result from (a)). By induction, the result holds for any $k >= j$.

(c)

Accroding to (a), $ker A subset ker A^2 subset ... subset ker A^k = RR^n$. Accroding to (b), there will be a smallest integer $p <= k$, such that $ker A^p = ker A^(p + 1) = RR^n$. Which means $forall j >= p, ker A^j = ker A^(j + 1)$ and $forall 1 <= j < p, ker A^j != ker A^(j + 1) ==> dim ker A^j < dim ker A^(j + 1)$. Thus, $n = dim ker A^p >= p ==> ker A^n = RR^n ==> A^n = 0$

3.

$ mat(1, 1, 2, 1; -1, 0, -1, -1; -1, 1, 0, -1; 0, 1, 1, 0;) ~ mat(1, 1, 2, 1; 0, 1, 1, 0; 0, 2, 2, 0; 0, 1, 1, 0) ~ mat(1, 0, 1, 1; 0, 1, 1, 0; ;;) $

means that

$ mat(1, 1; -1, 0; -1, 1; 0, 1)mat(1, 0, 1, 1; 0, 1, 1, 0) = C R $

$ C^+ = (mat(1, 1; -1, 0; -1, 1; 0, 1)^T mat(1, 1; -1, 0; -1, 1; 0, 1))^(-1) mat(1, 1; -1, 0; -1, 1; 0, 1)^T = mat(1/3, -1/3, -1/3, 0; 1/3, 0, 1/3, 1/3) $

$ R^+ = mat(1, 0, 1, 1; 0, 1, 1, 0)^T (mat(1, 0, 1, 1; 0, 1, 1, 0) mat(1, 0, 1, 1; 0, 1, 1, 0)^T)^(-1) = mat(2/5, -1/5; -1/5, 3/5; 1/5, 2/5; 2/5, -1/5) $

$ A^+ = R^+C^+ = mat(2/5, -1/5; -1/5, 3/5; 1/5, 2/5; 2/5, -1/5)mat(1/3, -1/3, -1/3, 0; 1/3, 0, 1/3, 1/3) = mat(1/15, -2/15, -1/5, -1/15; 2/15, 1/15, 4/15, 1/5; 1/5, -1/15, 1/15, 2/15; 1/15, -2/15, -1/5, -1/15) $

since $A$ is not full rank, $A$ does not have a left or right inverse.

4.


$ det(mat(b, a_2, ..., a_m)) = det(mat(x_1 a_1, a_2, ..., a_m)) + sum_(k = 2)^m det(mat[x_k a_k, a_2, ... a_k, ..., a_m]) = x_1 det(A) $

means that

$ x_i = (det(mat(a_1, ..., a_(i - 1), b, a_i, ..., a_m)))/(det(A)) $

Thus, Cramer's rule holds.

5.

$ A ~ mat(2, 13, 1, 6; 0, 0, 0, 1; 5, 1, 0, 50; 7, 0, 0, 983) ~ mat(2, 13, 1, 0; 0, 0, 0, 1; 5, 1, 0, 0; 7, 0, 0, 0) ~ mat(0, 0, 0, 1; 2, 13, 1, 0; 5, 1, 0, 0; 7, 0, 0, 0) $

means that

$ det(A) = (-1)^1 times 7 = -7 $

6.

(a)

$ det(A) = det(A^T) = det(-A) = (-1)^n det(A) = -det(A) $

means that $det(A) = 0$

(b)

$ (det(A))^2 = det(A^T) det(A) = det(A^(-1) A) = det(I) = 1 $

means that $det(A) = plus.minus 1$.

(c)

Let $A in RR^(m times m)$, for any $1 <= i <= m$, $a_(i 1) = -a_(i 2) - a_(i 3) - ... - a_(i m)$, means that $A$ is not full rank $==> det(A) = 0$.

When the sum of the each row of $A$ equals $1$, the sum of the each row of $A - I$ equals $0 ==> det(A - I) = 0$.

(d)

$u v^T x = lambda x ==> x = u, lambda = v^T u$ for $v^T u != 0$.

$lambda = 0, x = 0$ for a trivial pair.

7.

First consider the volume of the sphere in $RR^m$ where ${x in RR^m | x_1^2 + x_2^2 + ... + x_m^2 = 1}$.

Compute the integral

$ integral_(RR^m) e^(-||x||^2) dif x = integral_RR integral ... integral_RR e^(-(x_1^2 + x_2^2 + ... + x_m^2)) dif x_1 dif x_2 ... dif x_m =  (integral_RR e^(-x^2)dif x)^m = pi^(m/2) $

Since $dif x = S_(m - 1)(r) dif r$ for surface area $S_(m - 1)(r)$ of $m$-dimension sphere,

$ pi^(m/2) = integral_0^oo e^(-r^2) S_(m - 1)(r) dif r = S_(m - 1)(1) integral_0^oo e^(-r^2) r^(n - 1) dif r = 1/2 Gamma(m/2) $

Thus, by the substitution, the volume of the eplisold can be computed

$ V = product_(i = 1)^m a_i integral_0^1 S_(m - 1)(r) dif r = (2 pi^(m/2))/Gamma(m/2) product_(i = 1)^m a_i integral_0^1 r^(n - 1) dif r = (pi^(m/2))/Gamma(m/2 + 1) product_(i = 1)^m a_i $

8.

(a)

$ A - lambda I = mat(5 - lambda, -10, -5; 2, 14 - lambda, 2; -4, -8, 6 - lambda) $

$ det(A - lambda I) = ((14 - lambda)(6 - lambda) + 16)(5 - lambda) + 10(2(6 - lambda) + 8) - 5(-16 + 4(14 - lambda)) \ = (5 - lambda)(lambda^2 - 20 lambda + 100) = (5 - lambda)(10 - lambda)^2 $

$ A - 5I = mat(0, -10, -5; 2, 9, 2; -4, -8, 1) ~ mat(2, 9, 2; 0, -10, -5; 0, 10, 5) ~ mat(2, 9, 2; 0, 2, 1;;) $

implies that $x_1 = mat(5, -2, 4)^T in cal(N)(A - 5I)$, which is the eigenvector for $lambda = 5$.

$ A - 10I = mat(-5, -10, -5; 2, 4, 2; -4, -8, -4) ~ mat(1, 2, 1;;;) $

implies that $x_2 = mat(1, 0, -1) in cal(N)(A - 10I)$, which is the eigenvector for $lambda = 10$.

(b)

$ A - lambda I = mat(2 - lambda, 2, -2; 1, 3 - lambda, -1; -1, 1, 1 - lambda) $

$ det(A - lambda I) = (2 - lambda)((3 - lambda)(1 - lambda) + 1) - 2(1 - lambda - 1) - 2(1 + 3 - lambda) \ = (2 - lambda)(lambda^2 - 4lambda + 3 + 1 - 4) = lambda(2 - lambda)(lambda - 4) $

$ A - 0I = mat(2, 2, -2; 1, 3, -1; -1, 1, 1) ~ mat(2, 2, -2; 0, 2, 0; 0, 2, 0)~ mat(1, 1, -1; 0, 1, 0;;) $

implies that $x_1 = mat(1, 0, 1)^T in cal(N)(A - 0I)$, which is the eigenvector for $lambda = 0$.

$ A - 2I = mat(0, 2, -2; 1, 1, -1; -1, 1, -1) ~ mat(1, 1, -1; 0, 1, -1;; ) $

implies that $x_2 = mat(0, 1, 1)^T in cal(N)(A - 2I)$, which is the eigenvector for $lambda = 2$.

$ A - 4I = mat(-2, 2, -2; 1, -1, -1; -1, 1, -3) ~ mat(-2, 2, -2; 0, 0, -2; ;) $

implies that $x_3 = mat(1, 1, 0)^T in cal(N)(A - 4I)$, which is the eigenvector for $lambda = 4$.

9.

(a)

$det(A - lambda I) = 0 ==> det(A^T - lambda I) = 0$ means that there exists non-zero $y$ for the solution of $(A^T - lambda I)y = 0$. Thus, $y$ is an eigenvector of $A^T$ sfor $lambda$.

for any eigenvalues $lambda$ of $A$, $det(A^T - lambda  I) = 0$, means that $lambda$ is also an eigenvalues of $A^T$. Thus, $A$ and $A^T$ have the same eigenvalues.

(b)

Since $det(A - lambda I) = det((A - lambda I)^T) = det(A^T - lambda I)$, $p_A (lambda) = p_(A^T) (lambda)$. Thus, $A$ and $A^T$ have the same characteristic polynomial and eigenvalues.

10.

(a)

$ A^k x = A^k (a v_1 + b v_2 + c v_3) = a lambda_1^k v_1 + b lambda_2^k v_2 + c lambda_3^k v_3 $

means that $A x = a lambda_1 v_1 + b lambda_2 v_2 + c lambda_3 v_3, A^2 x = a lambda_1^2 v_1 + b lambda_2^2 v_2 + c lambda_3^2 v_3, A^35 x = a lambda_1^35 v_1 + b lambda_2^35 v_2 + c lambda_3^35 v_3$.

(b)

$ lim_(k -> oo) A^k x = lim_(k -> oo) a lambda_1^k v_1 + b lambda_2^k v_2 + c lambda_3^k v_3 = a v_1 $

since $lim_(k -> oo) lambda_2^k = 0$, $lim_(k -> oo) lambda_3^k = 0$.


])