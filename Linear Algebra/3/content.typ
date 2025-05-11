#set math.mat(delim: "[")
#let title = [
	MAT2041A\ Foundations of Linear Algebra and Applications\ Assignment 3
]

#set math.mat(delim: "[")

#import "../../main.typ"
#main.content(title, [

1.

(a)

False. Let $f(t) = t^2$, $f(0) = 0$ but $a f(t) = a t^2 != f(t)$, which means $f$ is not a zero vector.

(b)

True

(c)

False. $cal(N)(A)$ is a subspace.

(d) - (f)

True

(g)

False since it is in $RR^n$.

(h)

False since $a$ need to be linearly independent.

(i) - (m)

True

2.

$ mat(1, 1, 1, 1; 1, 2, 3, 4; 4, 3, 2, 1) ==> mat(4, 3, 2, 1; 0, 5/4, 5/2, 15/4; 0, 1/4, 1/2, 3/4) ==> mat(1, 1, 1, 1; 0, 5/4, 5/2, 15/4; 0, 0, 0, 0) ==> mat(1, 1, 1, 1; , 1, 2, 3; ,) ==> mat(1, 0, -1, -2; , 1, 2, 3;, ) = op("RREF")(A) $

$ mat(x_1; x_2; x_3; x_4) = mat(1, 2; -2, -3; 1, 0; 0, 1) mat(x_3; x_4;) ==> cal(N)(A) = op("Span"){mat(1; -2; 1; 0), mat(2; -3; 0; 1)} $

$ cal(C)(A) = op("Span"){mat(1; 1; 4), mat(1; 2; 3)}, mat(1, 1; 1, 2; 4, 3)mat(1, 0, -1, -2; , 1, 2, 3) = C R $

Let $x_3 = x_4 = 0$, $x_1 = -7, x_2 = 8$, which means the solution set is
$mat(-7, 8, 0, 0)^sans(T) + cal(N)(A)$

3.

$ A ==> mat(0, 1, -2, -4, -6, 1, -1; , , -3, -9, -6, 0, -3; , , , , 1, 1, 0; , , 3, 9, 11, 5, 3; , , 3, 9, 1, -5, 3) ==> mat(0, 1, -2, -4, -6, 1, -1; , , -3, -9, -6, 0, -3; , , , , 5, 5, 0;;;) ==> mat(0, 1, 0, 2, -3, 0, 1; , , 1, 3, 2, 0, 1; , , , , 1, 1, 0;;;) = op("RREF")(A) $

$ mat(1, -2, 1; -2, 1, -2; 0, 0, 1; 2, -1, 7; 0, 3, -5)mat(0, 1, 0, 2, -3, 0, 1; , , 1, 3, 2, 0, 1; , , , , 1, 1, 0;) = C R $

$ mat(x_1; x_2; x_3; x_4; x_5; x_6; x_7) = mat(1, 0, 0, 0; 0, -2, 3, -1; 0, -3, -2, -1; 0, 1, 0, 0; 0, 0, 1, 0; 0, 0, -1, 0; 0, 0, 0, 1) mat(x_1; x_4; x_5; x_7) ==> cal(N)(A) = op("Span"){mat(1; 0; 0; 0; 0; 0; 0), mat(0; -2; -3; 1; 0; 0; 0), mat(0; 3; -2; 0; 1; -1; 0), mat(0; -1; -1; 0; 0; 0; 1)} $

Let $mat(x_1, x_4, x_5, x_7)^sans(T) = 0$, $x_2 = 1, x_3 = 7, x_6 = 2$, which means the solution set is $mat(0, 1, 7, 0, 0, 2, 0)^sans(T) + cal(N)(A)$, $cal(C)(A) = mat(a_2, a_3, a_6)$

4.

(a)

obviously false. Let $A = mat(1, 2; 0, 0)$, whose each column in the space $op("Span"){mat(1; 0), mat(2; 0)}$, and rank $= 1$.

(b)

Let $x = x_0 + v$ where $v in V$, $x + V = {x_0 + v + w | w in V} = {x_0 + (v + w) | v + w in V} = cal(A)$

(c)

$V = {0}$

(d)

Proof "$==>$" first.

$forall x in R^m$, exactly one $exists y in R^m$, such that $A x = y$, which means $cal(C)(A) = R^m$, i.e. $op("Rank")(A) = m$. which imply linear system $A x = y$ has exactly one solution for any $y in R^m$, i.e the transformation is onto.

Then proof "$<==$".

when linear system $A x = y$ has the solution for any $y in R^m$, $A$ is full rank, which imply the transformation is one-to-one accroding to the former derivation.

5.

$ (x_1, x_2, x_3) xor (-3, 4, -1) = (x_1, x_2, x_3) $

which means the zero vector is $(-3, 4, -1)$, which can be confirmed by 

$ a dot.circle (-3, 4, -1) = (-3, 4, -1), (x_1, x_2, x_3) xor (- x_1, - x_2, - x_3) = (-3, 4, -1) $

Associative property and commutative property holds obviously.

Then check the distributive property.

$ a dot.circle (x xor y) = (a(x_1 + y_1 + 3) + 3(a - 1), ...) = (a x_1 + a y_1 + 2 times 3(a - 1) + 3, ...) = (a dot.circle x) xor (a dot.circle y) $

$ (a + b) dot.circle x = ((a + b)x_1 + 3(a + b - 1), ...) = (a x_1 + b x_1 + 3(a - 1) + 3(b - 1) + 3, ...) = (a dot.circle x) xor (b dot.circle x) $


$ a dot.circle (b dot.circle x) = (a(b x_1 + 3(b - 1)) + 3(a - 1), ...) = (a b x_1 + 3(a b - 1), ...) = (a times b) dot.circle x $

Thus, the set is a vector space. the zero vector is $(-3, 4, -1)$.

6.

(a)

Proof "$==>$" first.

Assuming that $U union W = V$ but $U != V$ and $W != V$. Then $exists u in V \\ U, w in V \\ W$, such that $u + w in U union W$.

- If $u + w in U$, $u = (u + w) - w in U$, which is contradicted.
- If $u + w in W$, $w = (u + w) - u in W$, whish is contradicted as well.

which imply that $U = V$ or $W = V$.

"$<==$" is obvious.

(b)


Proof "$==>$" first.

Assuming that $U union W = V$ but $U subset.eq W$ and $W subset.eq V$. Then $exists u in W \\ U, w in U \\ W$, such that $u + w in U union W$.

- If $u + w in U$, $u = (u + w) - w in U$, which is contradicted.
- If $u + w in W$, $w = (u + w) - u in W$, whish is contradicted as well.

which imply that $U subset.eq W$ or $W subset.eq V$.

"$<==$" is obvious.

7.

(a)

$0 dot y = 0$ means $0 in cal(C)(A)^(perp)$.

$forall x_1, x_2 in cal(C)(A)^(perp)$, $(x_1 + x_2) dot y = 0$ means $x_1 + x_2 in cal(C)(A)^(perp)$.

$forall x in cal(C)(A)^(perp), c in FF$, $c x dot y = 0$ means $c x in cal(C)(A)^(perp)$, which imply $cal(C)(A)^(perp)$ is a subspace of $RR^m$.

(b)

Let $A = mat(a_1, a_2, a_3, dots.c, a_n)$, $forall x in cal(N)(A^sans(T))$, $A^sans(T)x = 0 ==> a_i dot x = 0 forall i in [1, n]$, which means $x in cal(C)(A)^(perp)$, i.e. $cal(N)(A^sans(T)) = cal(C)(A)^perp$

(c)

$A x = b$ has a solution for all $b$ means $cal(C)(A) = RR^m <==> cal(N)(A^sans(T)) = cal(C)(A)^(perp) = {0} <==> A^sans(T)x = 0$ has only one trivial solution.

8.

(a)

Since $A x = 0 ==> A^sans(T) A x = 0$, $A^sans(T)A x = 0 ==> x^sans(T)A^sans(T) A x = 9 ==> ||A x||^2 = 0 ==> A x = 0$, which means $cal(N)(A) = cal(N)(A^sans(T)A) ==> n - op("Rank")(A) = n - op("Rank")(A^sans(T)A) ==> op("Rank")(A) = op("Rank")(A^sans(T)A) $

$op("Rank")(A A^sans(T)) = op("Rank")((A^sans(T))^sans(T)A^sans(T)) = op("Rank")(A^sans(T)) = op("Rank")(A)$

(b)

Let $M = mat(I_m, A; B, I_n)$.

$ op("Rank")(M) = op("Rank")(mat(I_m - A B, 0; B, I_n)) = op("Rank")(I_m - A B) + n $

$ op("Rank")(M) = op("Rank")(mat(I_m, A; 0, I_n - B A)) = op("Rank")(I_n - B A) + m $

which means

$ op("Rank")(I_m - A B) + n = op("Rank")(I_n - B A) + m $

9.

(a)

$ op("Dim") = 1 + 2 + 3 + ... + m = (m(m + 1))/2 $

$ op("Basis") = {E_(i j) | 1 <= i, j <= m} $

where $E_(i j)$ is a matrix that $(E_(i j))_(i j) = 1$ and other elements are $0$.

(b)


$ op("Dim") = 1 + 2 + 3 + ... + m = (m(m + 1))/2 $

$ op("Basis") = {E_(i j) + E_(j i) | 1 <= i < j <= m} union {E_(i i) | 1 <= i <= m} $

(c)

$ A = (A + A^sans(T))/2 + (A - A^sans(T))/2 $

where

$ (A + A^sans(T))_(i j) = A_(i j) + A_(j i) = (A + A^sans(T))_(j i), (A - A^sans(T))_(i j) = A_(I j) - A_(j i) = -(A - A^T)_(j i) $

10.

Let ${u_1, u_2, ..., u_m}$ be a basis of $U$, ${v_1, v_2, ..., v_n}$ be a basis of $V$.

Assuming $a_1 u_1 + a_2 u_2 + ... + a_m u_m + b_1 v_1 + b_2 v_2 + ... + b_m v_m = 0$, let $w = a_1 u_1 + a_2 u_2 + ... + a_m u_m = -(b_1 v_1 + b_2 v_2 + ... + b_m v_m) ==> w in U inter V ==> w = 0 ==> a_1 = a_2 = ... = a_m = b_1 = b_2 = ... = b_n = 0 $

which means ${u_1, u_2, ..., u_m, v_1, v_2, ..., v_n}$ is a basis of $V$, i.e.

$ op("Dim")(U + V) = m + n = op("Dim")(U) + op("Dim")(V) $


])