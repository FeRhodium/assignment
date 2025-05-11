#import "@preview/algorithmic:0.1.0"
#import algorithmic: algorithm

#set math.mat(delim: "[")
#let title = [
	MAT2041A\ Foundations of Linear Algebra and Applications\ Assignment 3
]

#set math.mat(delim: "[")

#import "../../main.typ"
#main.content(title, [

1.

$ integral_0^x p(t) dif t = integral_0^x sum_(k = 0)^n a_k t^k dif t = sum_(k = 1)^(n + 1)a_(k - 1)/k x^k $

means that $x_k -> 1/(k + 1) x_(k + 1)$, i.e.

$ T = mat(0, 0, 0, 0, ..., 0; 1, 0, 0, 0, ..., 0; 0, 1/2, 0, 0, dots, 0; dots.v, dots.v, dots.v, dots.v, dots.down, dots.v; 0, 0, 0, ..., 1/k, dots; dots.v, dots.v, dots.v, dots.v, dots.down, dots.v; 0, 0, 0, 0, dots, 1/(n + 1)) in RR^((n + 2) times (n + 1)) $

2.

(a)

$T 0_V = 0_W$ means that $0 in op("ker")(V)$.

$T(a_1 v_1 + a_2 v_2) = a_1 T v_1 + a_2 T v_2 = 0$ for $v_1, v_2 in op("ker")(V), a_1, a_2 in FF$ means that $op("ker")(V)$ is closed under addition and scalar multipication.

(b)

$T 0_V = 0_W$ means that $0 in cal(C)(T)$.

$a_1 T v_1 + a_2 T a_2 = T(a_1 v_1 + a_2 v_2) in cal(C)(T) $ for $v_1, v_2 in V, a_1, a_2 in FF$ means that $cal(C)(T)$ is closed under addition and scalar multipication.

(c)

Let $op("dim")(op("ker")(T)) = k$, $op("dim")(V) = n$, ${v_1, v_2, ..., v_k}$ is a basis of $op("ker")(T)$, ${v_1, v_2, ..., v_k, v_(k + 1), v_n}$ is a basis of $V$, now prove that ${T(v_(k + 1)), T(v_(k + 2)), ..., T(v_n)}$ is a basis of $cal(C)(T)$.

$forall T(v) in cal(C)(T), v in V$, such that

$ v = sum_(i = 1)^n a_i v_i ==> T(v) = sum_(i = 1)^k a_i T(v_i) + sum_(i = k + 1)^n a_i T(v_i) = sum_(i = k + 1)^n a_i T(v_i) $

which means $cal(C)(T)$ can be spanned with the basis shown above.

since

$ sum_(i = k + 1)^n a_i T(v_i) = 0 ==> T(sum_(i = k + 1)^n a_i v_i) = 0 ==> sum_(i = k + 1)^n a_i v_i in op("ker")(T) ==> a_i = 0 space forall i $

means that the basis is independent. Thus $dim(cal(C)(T)) = n - k ==> dim(ker(T)) + dim(cal(C)(T)) = dim(V)$.


3.

bases for $2 times 2$ symmetric matrices can be written as ${mat(1, 0, 0, 0)^sans(T), 1/sqrt(2) mat(0, 1, 1, 0)^sans(T), mat(0, 0, 0, 1)^sans(T)}$, means that

$ P = mat(1, 0, 0, 0; 0, 1/2, 1/2, 0; 0, 1/2, 1/2, 0; 0, 0, 0, 1) $

$ P dot op("vec")(M) = mat(3, 3/2, 3/2, 2)^sans(T) = op("vec")((M + M^sans(T))/2) $

4.

(a)

$ (I - P)^2 = I - 2P + P = I - P, (I - P)^sans(T) = I^sans(T) - P^sans(T) = I - P $

(b)

for $b in RR^m$, $(I - P)b = b - P b$ is orthogonal to $cal(C)(A)$ means that $cal(C)(I - P) subset cal(C)(A)^perp$.

for $b in cal(C)(A)^perp$, $A^sans(T)b = 0 <==> b in cal(N)(A^sans(T)) <==> cal(C)(A)^perp = cal(N)(A^sans(T))$. $b = (I - P)b in cal(C)(I - P)$. Thus, $cal(C)(I - P) = cal(C)(A)^perp = cal(N)(A^sans(T))$.


5.

(a)

$A_00 = 2, A_11 = 2/3, A_22 = 2/5, A_01 = A_10 = A_12 = A_21 = 0, A_02 = A_20 = 2/3$ means that

$ A = mat(2, 0, 2/3; 0, 2/3, 0; 2/3, 0, 2/5) $

(b)

Let operator $f compose g$ be

$ f compose g = integral_(-1)^1 f(x)g(x) dif x $

since $(f - p) compose phi_i = 0$ holds for $i = 0, 1, 2$, we have $f compose phi_i = (c dot phi) compose phi_i$, which means

$ A c = f compose phi ==> mat(2, 0, 2/3; 0, 2/3, 0; 2/3, 0, 2/5) mat(c_0; c_1; c_2) = mat(e - 1/e; 2/e; e - 5/e) $

we have

$ c_0 = (33/e - 3e)/4, c_1 = 3/e, c_2 = (15e - 105/e)/4 $

(c)

$ integral_(-1)^1 c_0 + c_1 x + c_2 x^2 dif x = 2c_0 + 2/3 c_2 = integral_(-1)^1 e^x dif x $

$ integral_(-1)^1 c_0 x + c_1 x^2 + c_2 x^3 dif x = 2/3 c_1 = integral_(-1)^1 e^x x dif x $

$ integral_(-1)^1 c_0 x^2 + c_1 x^3 + c_2 x^4 dif x = 2/3 c_0 + 2/5 c_2 = integral_(-1)^1 e^x x^2 dif x $

means that orthogonality holds.

6.

```python
import numpy as np

# Generate data
np.random.seed(0)
eps = np.random.normal(0, 1e-4, 5)
X = np.array([[1, 1 + eps[i]] for i in range(5)])
theta_true = np.array([3.0, 2.0])
y = X @ theta_true

# (a) Normal equations
theta_normal = np.linalg.inv(X.T @ X) @ X.T @ y

# (b) QR decomposition
Q, R = np.linalg.qr(X)
theta_QR = np.linalg.solve(R, Q.T @ y)

# (c) Relative errors
rel_error_normal = np.linalg.norm(theta_normal - theta_true) / np.linalg.norm(theta_true)
rel_error_QR = np.linalg.norm(theta_QR - theta_true) / np.linalg.norm(theta_true)

print("Normal Equations Error:", rel_error_normal)
print("QR Error:", rel_error_QR)
```

where a possible result is

```
Normal Equations Error: 1.5477700480804463e-08
QR Error: 1.8237294976042968e-13
```

7.

(a)

$v_1 = a_1 - (-sqrt(3))e_1 = mat(1 + sqrt(3), 1, 1)^sans(T)$ means that

$ H_1 = I - 2/(6 + 2sqrt(3)) v_1 v_1^sans(T) ==> H_1 a_2 = a_2 - (v^sans(T) a_2)/(3 + sqrt(3)) v = mat(1; 2; 3) - (6 + sqrt(3))/(3 + sqrt(3)) mat(1 + sqrt(3); 1; 1) = mat(-2 sqrt(3); (sqrt(3) - 1)/2; (sqrt(3) + 1)/2) $

Let $a'_2 = mat((sqrt(3) - 1)/2, (sqrt(3) + 1)/2)^sans(T) ==> ||a'_2|| = sqrt(2) ==> R = mat(-sqrt(3), -2sqrt(3); 0, -sqrt(2)) ==> Q = mat(-1/sqrt(3), 1/sqrt(2); -1/sqrt(3), 0; -1/sqrt(3), -1/sqrt(2)) $. Thus

$ Q R = mat(-1/sqrt(3), 1/sqrt(2); -1/sqrt(3), 0; -1/sqrt(3), -1/sqrt(2))mat(-sqrt(3), -2sqrt(3); 0, -sqrt(2)) = mat(1, 1; 1, 2; 1, 3) = A $

(b)

$q_1 = 1/sqrt(3) mat(1, 1, 1)^sans(T) ==> v_2 = a_2 - q^sans(T)_1 a_2 q_1 = mat(-1, 0, 1)$ means that

$ Q =mat(1/sqrt(3), -1/sqrt(2); 1/sqrt(3), 0; 1/sqrt(3), 1/sqrt(2)), R = mat(sqrt(3), 2sqrt(3); 0, sqrt(2)) $

8.

(a)

#algorithm({
  import algorithmic: *
  Function("Householder", args: ($A : RR^(m times n)$,), {
    For(cond: $k = 1..min(m, n)$, {
      Assign[$x$][$A_(k..m, k)$]
      Assign[$v$][$-op("sgn")(x_1)||x||_2 e_1$]
      If(cond: $||v||_2!= 0$, {
        Assign[$A_(k..m, k..n)$][$(I - 2(v v^sans(T))/(||v||^2))A_(k..m, k..n)$]
      })
    })
    Return[$A$]
  })
})

Householder cannot reduce REF to RREF since it cannot normalize pivots to $1$ or eliminate entries above pivots.

(b)

#algorithm({
  import algorithmic: *
  Function("GramSchmidt", args: ($A : RR^(m times n)$,), {
    State[$Q, N : op("empty matrix")$]
    For(cond: $i = 1..m$, {
      For(cond: $Q_j in Q$, {
        Assign[$A_i$][$A_i - (A_i^sans(T) Q_j)/(||Q_j||^2) Q_j$]
      })
      If(cond: $||A_i||!=0$, {
        State[$Q.$append$(A_i)$]
      })
      Else[
        $N.$append$(A_i)$
      ]
    })
    Return[$Q + N$]
  })
})

9.

since $op("Rank")(A) = k$, write $A = C R$, where $C in RR^(m times k)$ has full column rank, $R in RR^(k times n)$ has full row rank.

write $C = Q_1 K_1$ where $Q_1 in RR^(m times k)$ has orthonormal columns, $K_1 in RR^(k times k)$ is upper traingular and nonsingular.

write $R^sans(T) = Q_2 K_2$ where $Q_2 in RR^(n times k)$ has orthonormal columns, $K_2 in RR^(k times k)$ is upper traingular and nonsingular.

we have $A = Q_1 K_1 (Q_2 K_2)^sans(T) = Q_1 (K_1 K^sans(T)_2)Q_2$, where $K_1 K^sans(T)_2$ has nonsingular columns.

])