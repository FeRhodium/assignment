#set text(font: "New Computer Modern", size: 8.28pt)
#set page(numbering: "1", number-align: center, margin: (top: 2cm, bottom: 2cm, left: 1.5cm, right: 1.5cm))
#show math.equation: set text(weight: 400) // Ensure math isn't unintentionally bolded by headings
#set page(margin: (x: 0.2in, y: 0.2in), numbering: "1", columns: 4, paper: "a3", flipped: true)
#let rank = math.op("rank")
#set math.mat(delim: "[")

 Rank of a Matrix

 Column Rank:
- Defined as the maximum number of linearly independent columns in $A$.
- If $A = C R$, columns of $C$ form a basis for $C(A)$.
- Key theorem: All maximum independent column sets have the same size (proof via contradiction with $C = C' W$).

 Row Rank $=$ Column Rank:
- Row rank is the column rank of $A^T$.
- Using CR decomposition $A = C R$, show $rank(A) = rank(A^T)$.

 Properties of Rank:
- $rank(A B) <= min(rank(A), rank(B))$.
- $rank(A + B) <= rank(A) + rank(B)$.
- Sylvester Inequality: $rank(A B) >= rank(A) + rank(B) - n$.
- Frobenius Inequality: $rank(A B C) >= rank(A B) + rank(B C) - rank(B)$.

 Block Matrices:
- For $mat(A, B; C, D)$, if $A$ is invertible:
  $rank(mat(A, B; C, D)) = rank(A) + rank(D - C A^(-1) B)$.

 Basis of a Subspace

 Definition:
- A basis is a maximal independent and spanning set in subspace $V$.
- All bases of $V$ have the same size (dimension $dim(V)$).

 Theorems:
- Every spanning set can be reduced to a basis.
- Every independent set can be extended to a basis.
- Uniqueness: A list ${v_1, ..., v_n}$ is a basis iff every $v in V$ has a unique linear combination.

 Direct Sum Decomposition:
- For any subspace $U subset.eq V$, there exists $W$ such that $V = U plus.circle W$.

 Four Fundamental Subspaces of $A in R^(m x n)$

 Definitions:
- Column space $C(A) subset.eq R^m$: Span of columns of $A$.
- Null space $N(A) subset.eq R^n$: Solutions to $A x = 0$.
- Row space $C(A^T) subset.eq R^n$: Span of rows of $A$.
- Left null space $N(A^T) subset.eq R^m$: Solutions to $A^T y = 0$.

 Dimensions:
- $dim(C(A)) = dim(C(A^T)) = rank(A)$.
- $dim(N(A)) = n - rank(A)$, $dim(N(A^T)) = m - rank(A)$.
- Rank-Nullity Theorem:
  $rank(A) + dim(N(A)) = n$.

 Orthogonal Complements:
- $R^m = C(A) plus.circle N(A^T)$.
- $R^n = C(A^T) plus.circle N(A)$.
- $C(A) inter N(A^T)$, $C(A^T) inter N(A)$.

 Example: For $A = mat(1, 3, 5, 0, 7; 1, 3, 5, 1, 9; 1, 3, 5, 1, 9)$:
- CR decomposition: $A = C R = mat(1, 1, 1; 1, 1, 1; 1, 1, 1) mat(1, 0; 0, 1; 0, 0) mat(1, 3, 5, 0, 7; 0, 0, 0, 1, 2)$.
  (Note: The provided OCR for CR decomposition seems to have an issue with matrix dimensions, I've interpreted it as best as possible. The middle matrix in OCR was $mat(1,1;1,1;1,1)$ $mat(1,3,5,0,7;0,0,1,2)$ which implies the first matrix should be $3 times 2$ and second $2times 5$. The example $A$ is $3 times 5$. A CR decomposition $A=C R$ would mean $C$ is $m times k$ and $R$ is $k times n$. If $k=2$, then $C$ is $3 times 2$ and $R$ is $2 times 5$. Let's assume $C = mat(1,0;1,1;1,1)$ and $R = mat(1,3,5,0,7;0,0,0,1,2)$ as a more plausible decomposition based on typical forms.)
  Corrected plausible CR decomposition: $A = C R = mat(1, 0; 1, 1; 1, 1) mat(1, 3, 5, 0, 7; 0, 0, 0, 1, 2)$.
- Column space: $C(A) = op("Span") {mat(1;1;1), mat(0;1;1)}$.
- Null space: $N(A)$ spanned by $Q mat(-F; I_3)$. (Note: $F$ and $Q$ are not defined in the provided text, this is a general form).

 Application of Rank-Nullity:
- If $A^2 = 0$, then $rank(A) <= n/2$.
- Generalization: $A^k = 0 ==> rank(A) <= (1 - 1/k) n$.

 Transformations

 Definition:
A transformation maps input $x in R^n$ to output $b in R^m$.

 Examples:
- Reflection matrix:
  $A = mat(-1, 0; 0, 1)$, $b = A x = mat(-x_1; x_2)$.
- Rotation matrix ($90^o$):
  $A = mat(0, -1; 1, 0)$, $b = A x = mat(-x_2; x_1)$.

 Linear Transformations

 Definition:
A map $T: V -> W$ is linear if:
$T(alpha u + beta v) = alpha T(u) + beta T(v)$, $forall u, v in V, alpha, beta in R$.

 Examples:
- Matrix multiplication: $T(x) = A x$.
- Derivative operator: $T(u) = (d u)/(d x)$ on $P_2$.
- Non-example: $T(x) = x + x_0$ (affine, not linear).

 Null and Range Spaces:
- Null space: $N(T) = {u | T(u) = 0}$.
- Range space: $C(T) = {T(u) | u in V}$.
- Rank-Nullity: $dim(N(T)) + dim(C(T)) = dim(V)$.

 Matrix Representation of Linear Transformations

 Construction:
Given bases ${v_1, ..., v_n}$ of $V$ and ${w_1, ..., w_m}$ of $W$, the matrix $A in R^(m x n)$ satisfies:
$T(v_j) = sum_(i=1)^m a_(i j) w_i$, for $j = 1, ..., n$.

 Example:
Derivative operator on $P_2 -> P_1$:
$T{1, x, x^2} = {1, x} mat(0, 1, 0; 0, 0, 2)$.

 Change of Basis

 New Bases:
Let $B_V in R^(n x n)$ and $B_W in R^(m x m)$ define new bases. The transformed matrix is:
$B_W^(-1) A B_V$.

 Special Cases:
- Rank $k$ matrix: $B_W^(-1) A B_V = mat(I_k, 0; 0, 0)$.
- SVD: $B_W^(-1) A B_V = Sigma$ (diagonal with singular values).
- Eigenvalue decomposition: $B_V^(-1) A B_V = Lambda$ (diagonal with eigenvalues).
- Jordan form: $B_V^(-1) A B_V = J$ (block diagonal with Jordan blocks).

 Composition of Linear Transformations

 Definition:
For $S: U -> V$ and $T: V -> W$, the composition $T S: U -> W$ is linear.

 Matrix Representation:
If $S$ and $T$ have matrices $B$ and $A$, then $T S$ has matrix $A B$.

 Example:
Rotation by $alpha$ then $beta$:
$A B = mat(cos(alpha + beta), -sin(alpha + beta); sin(alpha + beta), cos(alpha + beta))$.

 Orthogonality

 Orthogonal Vectors:
- Two vectors $u, v in R^m$ are orthogonal if $u^T v = 0$.
- Pythagorean theorem: $norm(u + v)^2 = norm(u)^2 + norm(v)^2$.

 Orthogonal/Orthonormal Sets:
- A set of vectors is *orthogonal* if pairwise orthogonal.
- It is *orthonormal* if all vectors additionally have unit length.
- Example: Standard basis vectors in $R^m$ form an orthonormal basis.

 Orthogonal Subspaces:
- Subspaces $U$ and $V$ are orthogonal ($U inter V$) if $u^T v = 0$ for all $u in U, v in V$.
- Orthogonal Complements: If $U inter V$ and $U + V = R^m$, then $U^inter = V$.
- Fundamental Theorem:
  $C(A^T)^inter = N(A)$, $N(A)^inter = C(A^T)$
  $C(A)^inter = N(A^T)$, $N(A^T)^inter = C(A)$

 Projection

 1D Projection:
- Projection of $u$ onto $op("Span"){v}$:
  $alpha = (v^T u) / norm(v)^2$, Projection matrix: $P = (v v^T) / norm(v)^2$.
- Properties: $P^T = P$, $P^2 = P$, and $rank(P) = 1$.

 Projection onto Subspaces:
- Let $A$ be a basis matrix for subspace $V$. The projection of $b$ onto $V$ is:
  $hat(x) = (A^T A)^(-1) A^T b$, Projection matrix: $P = A (A^T A)^(-1) A^T$.
- Key equation: $A^T (b - A hat(x)) = 0$ (normal equation).
- If $A$ has orthonormal columns: $P = A A^T$.

 Properties:
- Rank of $P$ equals the dimension of the subspace.
- For complementary subspaces (e.g., z-axis and $x y$-plane in $R^3$):
  $P_1 + P_2 = I$.

 Example:
$A = mat(2, 4; 4, 8; 4, 8) ==> P_c = mat(1/5, 2/5; 2/5, 4/5)$ (via CR decomposition)
(Note: The example matrix A is $3 times 2$. The projection matrix $P_c$ is given as $2 times 2$. If $A$ represents the column space, $P_c$ should be $3 times 3$. If $A$ is used to project onto its column space, $P_A = A(A^T A)^(-1)A^T$. The provided $P_c$ seems to be related to a specific decomposition or context not fully detailed. Assuming $P_c$ is the projection matrix onto the column space of some related matrix, not directly $A$ as shown, or there's missing context for this specific $P_c$.)

 Key Applications:
- Solving inconsistent linear systems $A x = b$ via least squares.
- Orthogonal decomposition: $x = x_r + x_n$, $x_r in C(A^T)$, $x_n in N(A)$.
- Minimum norm solution: $x_r$ is the unique solution in $C(A^T)$.

 Least Squares (LS) Problems

 Polynomial Fitting Example:
- Model: $f(x; w) = w_0 + w_1 x + ... + w_M x^M$.
- Matrix form: $y = X w + e$, where $X$ is a Vandermonde matrix.
- Objective: Minimize $norm(e)^2 = norm(y - X w)^2$.
- Overfitting: High-degree polynomials (e.g., $M=9$) yield large coefficients.

 General Formulation:
- For $A in R^(m x n)$, $b in R^m$, solve $min_x norm(b - A x)^2$.
- Solution via projection: $A hat(x)$ is the projection of $b$ onto $C(A)$.
- Normal equation: $A^T A hat(x) = A^T b$.
- If $A$ is rank-deficient: Solutions form $hat(x) + N(A)$.

 Orthogonal Matrices

 Definition:
$Q in R^(m x m)$ is orthogonal if $Q^T Q = I$.

 Examples:
- Permutation matrices.
- Rotation matrix:
  $Q = mat(cos(theta), -sin(theta); sin(theta), cos(theta))$.
- Reflection matrix:
  $Q = I - 2 u u^T$ ($norm(u) = 1$).

 Projection:
For $Q = [Q_1 Q_2]$:
$P_V = Q_1 Q_1^T$, $P_(V^inter) = Q_2 Q_2^T$.

 Householder Transformations

 Definition:
Reflection matrix $Q = I - 2 u u^T$ where $norm(u) = 1$.

 Key Property:
$Q^T = Q$, $Q^(-1) = Q$, $Q^2 = I$.

 Vector Reflection:
For vector $x$, set
$v = op("sign")(x_1) norm(x) e_1 + x ==> Q = I - (2 v v^T) / (v^T v)$.

 Numerical Stability:
Choosing $v = op("sign")(x_1) norm(x) e_1 + x$ avoids cancellation errors.

 QR Decomposition

 Process via Householder
- Apply $n$ Householder transformations to $A in RR^(m times n)$:
  $ Q_n Q_(n-1) ... Q_1 A = R = mat(hat(R); 0) $, $hat(R)$ upper triangular.

- Full decomposition: $A = Q R$, reduced form: $A = hat(Q) hat(R)$.

- Example: For $A = mat(1, 2, 3; -1, 0, -3; 0, -2, 3)$:
  $ A = underbrace(mat(1/sqrt(2), 1/sqrt(6), 1/sqrt(3); -1/sqrt(2), 1/sqrt(6), 1/sqrt(3); 0, -2/sqrt(6), 1/sqrt(3)))_Q underbrace(mat(sqrt(2), sqrt(2), sqrt(18); 0, sqrt(6), -sqrt(6); 0, 0, sqrt(3)))_R $

- Application to LS: Solve $hat(R) x = hat(Q)^T b$ for minimal error $||hat(Q)^T b||$.

 Orthonormal Matrices
- Definition: A matrix $Q in RR^(m times n)$ is orthonormal if $Q^T Q = I_n$. Columns are pairwise orthogonal and unit-length.
- Properties:
  - Preserves vector norms: $||Q x|| = ||x||$.
  - Simplifies LS problems: If $A = Q$, the solution is $hat(x) = Q^T b$.
  - Projection matrix onto $C(Q)$: $P = Q Q^T$.
- Example: For $Q = 1/3 mat(-1, 2, 2; 2, -1, 2; 2, 2, -1)$:
  $ b = sum_(i=1)^3 q_i (q_i^T b) $ (orthogonal decomposition).

 Gram-Schmidt Orthogonalization
- Objective: Convert vectors {$a_1, ..., a_n$} into orthonormal {$q_1, ..., q_n$}.
- Algorithm (Classical):
  - Initialize $q_1 = a_1 / (||a_1||)$.
  - For $j > 1$:
    $ v_j = a_j - sum_(i=1)^(j-1) (q_i^T a_j) q_i, q_j = v_j /( ||v_j||) $
- Yields reduced QR decomposition $A = hat(Q) hat(R)$, where $hat(R)$ is upper triangular.

- Example: For $a_1 = mat(1; 1; 1; 1)$:
  $ q_1 = 1/2 mat(1; 1; 1; 1),q_2 = 1/2 mat(1; 1; -1; -1) $

- LS Application: Solve $hat(R) hat(x) = hat(Q)^T b$ with error $||e||^2 = ||b||^2 - ||hat(Q)^T b||^2$.

 QR Decomposition Comparison
- Gram-Schmidt: Computes reduced QR $A = hat(Q) hat(R)$.
- Householder: Directly constructs full QR $A = Q R$.
- Numerical Stability: Modified Gram-Schmidt > Classical Gram-Schmidt.

 Pseudoinverse (Moore-Penrose Inverse)
- Definition: For any matrix $A in RR^(m times n)$, the pseudoinverse $A^+ in RR^(n times m)$ is the unique matrix satisfying:
  $ (A X)^T = A X, quad (X A)^T = X A, quad A X A = A, quad X A X = X $
- Key Properties:
  - Solves least squares (LS): $x^+ = A^+ b$ minimizes $||b - A x||$ and $||x||$.
  - Projects $b$ onto $C(A)$: $A A^+ b = p$.
  - Projects $x$ onto $C(A^T)$: $A^+ A x = x_r$.
- Special Cases:
  - Full column rank: $A^+ = (A^T A)^(-1) A^T$.
  - Full row rank: $A^+ = A^T (A A^T)^(-1)$.

 Pseudoinverse and CR Decomposition
- CR Decomposition: For $A = C R$, where $C$ has full column rank and $R$ has full row rank:
  $ A^+ = R^+ C^+ = R^T (R R^T)^(-1) (C^T C)^(-1) C^T $

- Example: For the incidence matrix $A = mat(-1, 1, 0, 0; -1, 0, 1, 0; dots.v, dots.v, dots.v, dots.v)$ :
  $ A = C R => A^+ = 1/8 mat(-2, -2, 0, -2, 0; 2, 0, -2, 0, -2; dots.v, dots.v, dots.v, dots.v, dots.v) $

- Projection Matrices:
  $ A^+ A = text("Projection onto ") C(A^T) $, $A A^+ = text("Projection onto ") C(A) $

 Left and Right Inverses
- Left Inverse: Exists if $rank(A) = n$ ($A$ has full column rank):
  $ X A = I_n => X = (A^T A)^(-1) A^T $
- Right Inverse: Exists if $rank(A) = m$ ($A$ has full row rank):
  $ A X = I_m => X = A^T (A A^T)^(-1) $
- Relation to Pseudoinverse:
  - Left inverse: $A^+ = (A^T A)^(-1) A^T$ when $rank(A) = n$.
  - Right inverse: $A^+ = A^T (A A^T)^(-1)$ when $rank(A) = m$.
- Applications
  - LS Solutions: $x^+ = A^+ b$ provides the minimum-norm solution.
  - Rank-Deficient Systems: Pseudoinverse generalizes solutions for $N(A) != {0}$.

 Determinant: Definition and Basic Properties
- Definition: A function $det : RR^(m times m) -> RR$ satisfying:
  - Multilinear in columns (linear in each column).
  - Alternating: Swapping two columns changes the sign.
  - Normalization: $det(I_m) = 1$.
- Key Examples:
  - $2 times 2$: $det mat(a, b; c, d) = a d - b c$.
  - $3 times 3$:
    $ det mat(a, b, c; p, q, r; x, y, z) = a q z + b r x + c p y - a r y - b p z - c q x $
- Alternating Property:
  $ det(..., a_i, ..., a_j, ...) = -det(..., a_j, ..., a_i, ...) $

 The Big Formula
- For $A in RR^(m times m)$, the determinant is a sum over all permutations:
  $ det(A) = sum_(sigma in S_m) (-1)^(op("parity")(sigma)) a_(1 sigma(1)) a_(2 sigma(2)) ... a_(m sigma(m)) $,
  where $S_m$ is the set of permutations of {$1, 2, ..., m$}.
- Uniqueness: The big formula uniquely defines the determinant function.

 Further Properties
- Multiplicativity:
  $ det(A B) = det(A) det(B) $
- Triangular Matrices:
  $ det(U) = u_(11) u_(22) ... u_(m m) $ (product of diagonal entries).
- Singularity: $A$ singular $<==> det(A) = 0$.
- Transpose Invariance:
  $ det(A) = det(A^T) $
- Row Perspective: Determinant is multilinear and alternating in rows.

 Further Properties of Determinants
- Nonsingularity:
  $ A op(" is nonsingular") <==> det(A) != 0 $
- Block Diagonal Matrices: For $A = mat(B, C; 0, D)$:
  $ det(A) = det(B) dot det(D) $
- Rank-One Modification: For $A = D + e e^T$ ($D = op("diag")(a_1, ..., a_m)$):
  $ det(A) = (product_(i=1)^m a_i) (1 + sum_(i=1)^m 1/a_i) $

 Cofactor Formula and Cramer's Rule
- Cofactor $C_(i j)$:
  $ C_(i j) = (-1)^(i+j) det(op("minor matrix") A_(i j)) $
- Expansion Along Rows/Columns: For any $i$:
  $ det(A) = sum_(j=1)^n a_(i j) C_(i j) $ (row expansion).
  $ det(A) = sum_(j=1)^n a_(j i) C_(j i) $ (column expansion).

- Cramer's Rule: For $A x = b$, if $det(A) != 0$:
  $ x_j = det(B_j) / det(A) $,
  where $B_j$ replaces the $j$-th column of $A$ with $b$.

 Determinant and Volume
- Parallelepiped Volume: For vectors $a_1, ..., a_m in RR^m$:
  $ op("Vol")(P(a_1, ..., a_m)) = |det(A)| $ ($A = (a_1 | ... | a_m)$).
- Zero Volume: Volume is zero iff vectors are linearly dependent.
- Linear Transformations: For $T(x) = A x$ and region $S$:
  $ op("Vol")(T(S)) = |det(A)| dot op("Vol")(S) $
- Hadamard Inequality:
  $ |det(A)| <= product_(i=1)^n ||a_i|| $

 Examples
- $3 times 3$ Matrix:
  $ det mat(1, 3, 5; 2, 0, -1; 4, -3, 1) = -51 $
- Volume Scaling: For $A = mat(1, 2; 2, 1)$, $op("Vol")(T(S)) = 3 dot op("Vol")(S)$.

 Eigenvalues and Eigenvectors
- Eigenpair Definition:
  - For $A in RR^(n times n)$, a nonzero vector $x$ is an eigenvector with eigenvalue $lambda$ if:
    $ A x = lambda x $
  - Eigenspace: $N(A - lambda I)$ is the subspace of eigenvectors for $lambda$.
  - Characteristic Polynomial:
    - Defined as $f(lambda) = det(A - lambda I)$.
    - Roots of $f(lambda) = 0$ are eigenvalues.
    - Example for $A = mat(0, 6, 8; 1/2, 0, 0; 0, 1/2, 0)$:
      $ f(lambda) = -lambda^3 + 3 lambda + 2 = -(lambda - 2)(lambda + 1)^2 $

- Trace and Determinant:
  - $op("tr")(A) = sum lambda_i$, $det(A) = product lambda_i$.
  - For $2 times 2$ matrices:
    $ f(lambda) = lambda^2 - op("tr")(A) lambda + det(A) $

 Diagonalization
- Independence of Eigenvectors:
  - Theorem: Eigenvectors for distinct eigenvalues are linearly independent.
  - Proof via Vandermonde Matrix: For $c_1 x_1 + ... + c_k x_k = 0$, construct equations:
    $ M c = mat(x_1, ..., x_k; lambda_1 x_1, ..., lambda_k x_k; ...; lambda_1^(k-1) x_1, ..., lambda_k^(k-1) x_k) mat(c_1; ...; c_k) = 0 $.
    Since $det(V) = product_(i<j) (lambda_j - lambda_i) != 0$, all $c_i = 0$.
- Diagonalization Criteria:
  - $A$ is diagonalizable iff there exists invertible $X$ and diagonal $Lambda$ such that:
    $ X^(-1) A X = Lambda $
  - Sufficient condition: $n$ distinct eigenvalues.
  - Necessary and sufficient condition: $op("AM")(lambda_i) = op("GM")(lambda_i)$ for all eigenvalues.
- Jordan Canonical Form:
  - Non-diagonalizable matrices can be transformed into Jordan blocks:
    $ J = mat(lambda, 1; 0, lambda) $, $op("AM")=2$, $op("GM")=1$.
- Applications:
  - Fibonacci sequence: Solve $P_(k+2) = P_(k+1) + P_k$ using eigenvalues of:
    $ A = mat(1, 1; 1, 0) $, $lambda_(1,2) = (1 plus.minus sqrt(5))/2 $.
  Solution:
  $ P_k = ( ( (1+sqrt(5))/2 )^k - ( (1-sqrt(5))/2 )^k ) / sqrt(5) $

 Symmetric Matrices and Spectral Decomposition
- Symmetric Matrix Properties:
  - $A in RR^(m times m)$ is symmetric if $A^T = A$.
  - All eigenvalues of symmetric matrices are real.
  - Eigenvectors corresponding to distinct eigenvalues are orthogonal.
- Spectral Theorem:
  - For symmetric $A$, there exists orthogonal $Q$ such that:
    $ A = Q Lambda Q^T $, $Lambda = op("diag")(lambda_1, ..., lambda_m)$.
  - Proof uses Householder transformations and induction.
- Positive Definite Matrices:
  - Definition: $x^T A x > 0$ forall $x != 0$.
  - Equivalent conditions:
    - All eigenvalues $lambda_i > 0$.
    - $A = B^T B$ with $B$ full column rank.
    - All leading principal minors > 0.
  - Cholesky decomposition: $A = L L^T$ with $L$ lower triangular.
- Congruence Transformation:
  - For quadratic form $x^T A x$, basis change $x = B y$ gives:
    $ y^T (B^T A B) y $
  - Preserves inertia (numbers of positive/negative eigenvalues).

 Complex Vectors and Fourier Matrices
- Complex Arithmetic:
  - Polar form: $z = r e^(i theta)$, Euler's formula $e^(i theta) = cos theta + i sin theta$.
  - Hermitian transpose: $v^H = bar(v)^T$.
  - Inner product: $u^H v = sum bar(u)_i v_i$.
- Hermitian Matrices:
  - $A^H = A ==>$ real eigenvalues, orthogonal eigenvectors.
  - Example:
    $ S = mat(2, 3-3i; 3+3i, 5) $, $lambda_1 = 8$, $lambda_2 = -1$.

 Singular Value Decomposition (SVD)
- Key Concepts:
  - Applies to general rectangular matrices $A in RR^(m times n)$.
  - Connects to spectral decomposition of symmetric matrices via two orthogonal matrices $U$ and $V$.
  - Geometric interpretation: Transforms unit sphere into hyperellipse via stretching/rotation.
- Geometric Perspective:
  - Unit sphere $S subset RR^n$, under $A$, maps to hyperellipse $A S subset RR^m$.
  - Singular values $sigma_1 >= sigma_2 >= ... >= sigma_n$: lengths of principal semi-axes.
  - Left singular vectors {$u_i$}: directions of principal axes in $RR^m$.
  - Right singular vectors {$v_i$}: pre-images satisfying $A v_i = sigma_i u_i$.
- Matrix Form:
  - Reduced SVD (for $m >= n$):
    $ A = U_hat Sigma_hat V^T $, $U_hat in RR^(m times n)$, $Sigma_hat in RR^(n times n)$, $V in RR^(n times n)$.
  - Full SVD: Expand $U_hat$ to orthogonal $U in RR^(m times m)$, pad $Sigma_hat$ with zeros:
    $ A = U Sigma V^T, Sigma = mat(hat(Sigma); 0) in RR^(m times n) $

 Algebraic Derivation of SVD
- Connection to Eigenvalue Decomposition:
  - For $A in RR^(m times n)$:
    $ A^T A = V (Sigma^T Sigma) V^T $, $A A^T = U (Sigma Sigma^T) U^T $.
  - Singular values: $sigma_i = sqrt(lambda_i(A^T A))$.
  - $V$ contains eigenvectors of $A^T A$, $U$ contains eigenvectors of $A A^T$.

- Uniqueness:
  - Singular values are uniquely determined.
  - Singular vectors are unique up to sign if singular values are distinct.

 Matrix 2-Norm and Frobenius Norm
- Definitions:
  - 2-norm: $||A||_2 = max_(||x||=1) ||A x|| = sigma_1$ (largest singular value).
  - Frobenius norm: $||A||_F = sqrt(sum_(i,j) |a_(i j)|^2) = sqrt(sigma_1^2 + ... + sigma_(min{m,n})^2)$.
- Properties:
  - Both norms are unitarily invariant: $||A|| = ||U A V||$ for unitary $U, V$.
  - Relationship: $||A||_2 <= ||A||_F$.

 SVD: Geometric Interpretation
- For $A = U Sigma V^T$ and unit sphere $S subset RR^n$:
  - $V^T S$: Preserves the unit sphere (orthogonal transformation).
  - $Sigma (V^T S)$: Stretches into a hyperellipse with principal axes scaled by $sigma_i$.
  - $U (Sigma V^T S)$: Rotates/reflects the hyperellipse, with principal axes aligned to columns of $U$.

 SVD: Key Properties
- Basis transformation:
  - $U^H b = Sigma (V^H x)$: Diagonalizes $A$ in the bases $U$ and $V$.
  - $rank(A)$ = number of nonzero singular values.
- Four fundamental subspaces ($r = rank(A)$):
  - Column space: $C(A) = op("span"){u_1, ..., u_r}$.
  - Nullspace: $N(A) = op("span"){v_(r+1), ..., v_n}$.
  - Row space: $C(A^H) = op("span"){v_1, ..., v_r}$.
  - Left nullspace: $N(A^H) = op("span"){u_(r+1), ..., u_m}$.
  - Direct sums:
    $ CC^m = C(A) plus.circle N(A^H) $, $CC^n = C(A^H) plus.circle N(A) $.
- Relationships with eigenvalue decomposition:
  - $A^T A = V (Sigma^T Sigma) V^T$, $A A^T = U (Sigma Sigma^T) U^T$.
  - For Hermitian $A$, SVD coincides with eigenvalue decomposition if $A$ is SPD.
  - Volume property: $|det(A)| = product_(i=1)^m sigma_i$.