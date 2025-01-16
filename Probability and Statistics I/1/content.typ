#let title = [
	STA2001 Probability and Statistics I\ Assignment 1
]

#import "../../main.typ"
#main.content(title, [

1.

(a)

$ P(A union B) = P(A) + P(B) - P(A sect B) = 0.6 $

(b)

$ P(A union B') &= P(A) + P(B') - P(A sect B') \
&= P((A sect B') union (A sect B)) + (1 - P(B)) - P(A union B') \
&= P(A sect B) - P(B) + 1 = 0.8 $

(c)

$ P(A' union B) &= P(A') + P(B) - P(A' sect B) \
&= P((A' sect B) union (A sect B)) + (1 - P(A)) - P(A' union B) \
&= P(A sect B) - P(A) + 1 = 0.9 $

2.

(a)

$ &P(A_1 union A_2 union A_3) \ &= P(A_1) + P(A_2) + P(A_3) - P(A_1 sect A_2) - P(A_2 sect A_3) - P(A_1 sect A_3) + P(A_1 sect A_2 sect A_3) \ &= 1 - 1/3 + 1/27 = 19/27 $

(b)

$ P(A_1 union A_2 union A_3) = 1 - P(A'_1 sect A'_2 sect A'_3) = 1 - product_(i=1,2,3) P(A'_i) = 1 - (1 - 1/3)^3 $

3.

$ P(A union B union C) &= P(A union B) + P(C) - P((A union B) sect C) \
&= P(A) + P(B) + P(C) - P(A sect B) - P((A sect C) union (B sect C)) \
&= P(A) + P(B) + P(C) - P(A sect B) - P(A sect C) - P(A sect C) + P(A sect B sect C) qed $

4.

Let $X$ be the position to divide, $A$ be the event when the longer segment is at least two times longer than the shorter segment.

$ A = {X|0 <=  X < 1/3 or 2/3 < X < 1} ==> P(A) = 1/3 + (1 - 2/3) = 2/3 $

5.

(a)

the number can be computed by permutation

$ 9! = 362,880 $

(b)

since all the $S$ and $F$ are the same, respectively, which means the number can be computed by

$ binom(9, 3) = 84 $

(c)

for all different participant, we have $2$ situations, which means the number can be computed by

$ 2^9 = 512 $

6.

Since all choice is disordered, the probability can be easily computed.	

(a)

$ (binom(13, 5)binom(13, 4)binom(13, 3)binom(13, 1))/(binom(52, 13)) approx 0.0053878 $

(b)

$ (binom(13, 5)binom(13, 4)binom(13, 2)binom(13, 2))/(binom(52, 13)) approx 0.0088164 $

(c)

$ (binom(13, 5)binom(13, 4)binom(13, 1)binom(13, 3))/(binom(52, 13)) approx 0.0053878 $

(d)

$ P_1 = (binom(13, 3)binom(13, 1))/(binom(26, 4)) = 143/575 < P_2 = (binom(13, 2)binom(13, 2))/(binom(26, 4)) = 234/575 $

so the probability of "3 and 1" is greater than the probability of "2 and 2"

7.

The problem can be transformed into the number of solution of $x_1 + x_2 + dots.c + x_10 = 36$, for *non-negative* $x_i$, which also means the solution of $y_1 + y_2 + dots.c + y_10 = 46$ for *positive* $y_i$, which can be computed by

$ binom(36 + 10 - 1, 10 - 1) = 886,163,135 $

8. 

Since all choice is disordered, the probability can be easily computed.

(a)

$ (binom(4, 4)binom(4, 1)binom(13, 1)binom(12, 1))/(binom(52, 5)) = 1/(4,165) $

(b)

$ (binom(4, 3)binom(4, 2)binom(13, 1)binom(12, 1))/(binom(52, 5)) = 6/(4,165) $

(c)

$ (binom(4, 3)binom(4, 1)binom(4, 1)binom(13, 1)binom(12, 2))/(binom(52, 5)) = (88)/(4,165) $

(d)

$ (binom(4, 1)binom(4, 2)binom(4, 2)binom(13, 1)binom(12, 2))/(binom(52, 5)) = (198)/(4,165) $

(e)

$ (binom(4, 2)binom(4, 1)binom(4, 1)binom(4, 1)binom(13, 1)binom(12, 3))/(binom(52, 5)) = (352)/(833) $

9.

At any cross, the skiers can go left or right, which means we have $2^5$ situations in total. At $B$ and $C$, the skiers need to go left for once and twice, disorderedly and respectively, which imply

$ P_B = binom(5, 1)/2^5 = 5/32, P_C = binom(5, 2)/2^5 = 5/16 $

10.

Let $a_k$ be the number of the valid codewords of length $k$. For any codewords of length $k - 1$, which number is $4^(k - 1)$, if it is valid, we can add a non-zero digit after the original codewords, otherwise, we can add a digit $0$ to ensure it becomes valid, so we have

$ a_k = 3a_(k - 1) + (4^(k - 1) - a_(k - 1)) ==> a_k = 2a_(k - 1) + 4^(k - 1) $

which can be computed by

$ a_k - 4^k/2 = 2(a_(k - 1) - 4^(k - 1)/2), a_1 = 3 ==> a_1 - 4/2 = 1 ==> a_k - 4^k/2 = 2^(k - 1) ==> a_k = 4^k/2 + 2^(k - 1) $

so we have

$ P_k = a_k/(4^k) = (2^k + 1)/(2^(k + 1)) $

])