#let title = [
	MAT2041A\ Foundations of Linear Algebra and Applications\ Assignment 2
]

#set math.mat(delim: "[")

#import "../../main.typ"
#main.content(title, [
1.

(a)

$ mat(2, 2, -2, -2; 2, 2, 0, 2; 1, -1, 1, -1; augment: #3) ==> mat(2, 2, -2, -2; , , 2, 4; , -2, 2, 0; augment: #3) ==> mat(2, 2, -2, -2; , -2, 2, 0; , , 2, 4; augment: #3) ==> x = mat(-1; 2; 2) $

(b)

$ mat(-1, 1, 0, 0, -2; 1, 2, -2, 0, 0; 1, 0, -1, -2, 1; -2, -2, 0, 0, 0; augment: #4) ==> mat(-2, -2, 0, 0, 0; , 1, -2, 0, 0; , -1, -1, -2, 1; , 2, 0, 0, -2; augment: #4) ==> mat(-2, -2, 0, 0, 0; , 2, 0, 0, -2;  , , -1, -2, 0; , , -2, 0, 1; augment: #4) ==> mat(-2, -2, 0, 0, 0; , 2, 0, 0, -2; , , -2, 0, 1; , , , -2, -1/2; augment: #4) ==> x = mat(1; -1; -1/2; 1/4)  $


2.

$ mat(1, t_1, t_1^2, -y_1t_1, -y_1t_1^2, -y_1t_1^3; 
1, t_2, t_2^2, -y_2t_2,  -y_2t_2^2, -y_2t_2^3;
1, t_3, t_3^2, -y_3t_3,  -y_3t_3^2, -y_3t_3^3;
1, t_4, t_4^2, -y_4t_4,  -y_4t_4^2, -y_4t_4^3;
1, t_5, t_5^2, -y_5t_5,  -y_5t_5^2, -y_5t_5^3;
1, t_6, t_6^2, -y_6t_6,  -y_6t_6^2, -y_6t_6^3;) mat(c_1; c_2; c_3; d_1; d_2; d_3) = mat(y_1; y_2; y_3; y_4; y_5; y_6) $

3.

Let $A, B$ be a $m times n$, $n times p$ matrix, which for all $j > i$, $A_(i j) = B_(i j) = 0$. when $i < j$, we have

$ (A B)_(i j) = sum_(k = 1)^n A_(i k) B_(k j) = sum_(k = 1)^i A_(i k) B_(k j) + sum_(k = i + 1)^j A_(i k) B_(k j) = 0 + 0 = 0 $

which means $A B$ is a lower triangular matrix.

4.

(a)

$ mat(1, 1; 2, 1) mat(1, 1; 0, 2) = mat(1, 3; 2, 4) $

(b)

$ (U U^(-1))_(j j) = sum_(k = 1)^m U_(j k) U_(k j)^(-1) = sum_(k = 1)^(j - 1) U_(j k) U_(k j)^(-1) + u_(j j)U_(j j)^(-1) + sum_(k = j + 1)^m U_(j k) U_(k j)^(-1) = 0 + u_(j j)U_(j j)^(-1) + 0 = 1 $

which means $U_(j j)^(-1) = 1/(u_(j j))$.

5.

1)

(a)

$ mat(1, , ; 3, 1, ; , , 1)mat(1, 4, 5; , 1, 5; , , 1) = A_1 $

(b)

$ mat(1, , ; , , 1; , 1, ;)A_2 = mat(1, , ;5, 1, ; -2, , 1)mat(4, -20, -12; , -1, -20; , , 16) $

2)

$ mat(1, 4, 5, 1, 0, 0; 3, 13, 20, 0, 1, 0; 0, 0, 1, 0, 0, 1; augment: #3) ==> mat(1, 4, 5, 1, 0, 0; 0, 1, 5, -3, 1, 0; 0, 0, 1, 0, 0, 1; augment: #3) ==> mat(1, 4, 0, 1, 0, -5; , 1, 0, -3,1, -5;
, , 1, 0, 0, 1; augment: #3) ==> mat(1, , , 13, -4, 15; , 1, , -3, 1, -5; , , 1, 0, 0, 1; augment: #3) $

which means 

$ A_1^(-1) = mat(13, -4, 15; -3, 1, -5; 0, 0, 1) $

6.

(a)

$v = 0$ and $u != 0$

(b)

False

(c)

False

(d)

No since a linear system can only have 0, 1, or infinity solutions.

(e)

False

(f)

False

(g)

True

(h)

True

(i)

$ P_2 P_1 = P_2 P_1 I_3 = mat(, , 1; 1, , ;, 1, ) $

(j)

$ (P P^T)_(i j) = sum_(k = 1)^m P_(i k)P^T_(k j) = sum_(k = 1)^m P_(i k)P_(j k) $

for permutation matrix $P$, for any $k in [1, m]$, exists only one $i$ such that $P_(i k) = 1$, which means if and only if $i = j$, $P_(i j) = 1$, which implies $P P^T = I$, i.e. $P^T = P^(-1)$

(k)

False

7.

(a)

$ A = alpha e_i e_j^T + beta e_k e_l^T $

when $i = k or j = l$, $A$ is a rank-one matrix.

(b)

$(A x)_i = alpha x_j$, $(A x)_k = beta x_l$ i.e the cost is $O(1)$.

For all $i in [1, m]$, $(A x)_i = sum_(j = 1)^m A_(i j)x_j $, which means the cost is $O(m times m) = O(m^2)$

8.

$ (I_m + u v^T)(I_m - u v^T) = I_m + u v^T - u v^T - u v^T u v^T = I_m - u(v^T u)v^T = I_m $

which means $(I_m + u v^T)^(-1) = I_m - u v_T$

9.

Assuming that

$ mat(A, C; , B)mat(X_11, X_12; X_21, X_22) = I_(m + n) $

we have

$ cases(A X_11 + C X_21 = I_m, A X_12 + C X_22 = 0, B X_21 = 0, B X_22 = I_n) $

which can be solved that

$ mat(A, C; , B)^(-1) = mat(A^(-1), A^(-1)C B^(-1); , B^(-1)) $

meanwhile, since $mat(A, C;, B)$ is an upper triangular matrix with non-zero diagonal elements, which means it is column independent, i.e. nonsingular.

10.

(a)

```python
import numpy as np

def gaussian_elimination_with_pivoting(A, b):
    n = A.shape[0]
    aug = np.hstack((A, b.reshape(-1, 1))) # Augmented matrix [A | b]

    for i in range(n):
        # Partial pivoting: find row with max abs

        max_row = np.argmax(np.abs(aug[i:, i])) + i
        aug[[i, max_row]] = aug[[max_row, i]]

        # Eliminate entries below pivot

        for j in range(i + 1, n):
            fac = aug[j, i] / aug[i, i]
            aug[j, i:] -= fac * aug[i, i:]

    # Back substitution

    x = np.zeros(n)

    for i in range(n - 1, -1, -1):
        x[i] = (aug[i, -1] - np.dot(aug[i, i + 1:n], x[i + 1:n])) / aug[i, i]

    return x
```

(b)

```python
n = int(input())

A = np.array([input().strip().split() for _ in range(n)], np.float64)

b = np.array(input().strip().split(), np.float64)

print(gaussian_elimination_with_pivoting(A, b))
```

with code above after part (a), we can get

$ X_1 = mat(-5; 2; 5; -3; 2; -1; 5; 2; 3; 3), X_2 = mat(-5; 2; 5; -3; 2; -1; 5; 2; 3; 3) $

])