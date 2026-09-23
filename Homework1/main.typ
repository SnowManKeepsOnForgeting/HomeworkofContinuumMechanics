#import "@preview/ctheorems:2.0.0": *
#show: thm-rules        // Must include!

= Homework 1


1. Show that the sum S + T and product ST are tensors.
Proof: Let $u,v$ be any vector in the vector space $V$. Then $(S+T) 0 =S 0 + T 0 = 0 $ and $(S+T)(alpha u + beta v) = S(alpha u + beta v) + T (alpha u + beta v) = alpha S u + beta S v + alpha T u + beta T v = alpha (S+T)u + beta (S+T)v$ so that $S+T$ is linear i.e. a tensor.#qedhere

2. Establish the existence and uniqueness of the transpose $S^T$ of $S$.
Proof: Let $u,v$ be any vector in the vector space $V$. Let $phi(u) = S u dot v $ then $phi$ is a linear function so that there exist a unique vector $a$ such $phi(u) = a dot u$ for any $u$ in space $V$ (riesz represetation). Let $v -> a$ be a map. Then let any $phi(u) = S u  dot (alpha s + beta t)$ and $phi(u) = S u dot 0$. By this way it is easy to prove that a map $v->a$ is linear thus the map is a tensor and mark this tensor as $S^T$. We have $S u dot v = u dot S^T v$. #qedhere

3. Establish 
(1) $(S+T)^T = S^T + T^T$

(2) $(S T)^T = T^T S^T$

(3) $(S^T)^T = S$

(4) $(a times.o b)^T = (b times.o a)$

(5) $(a times.o b)(c times.o d) = (b dot c)a times.o d$

(6) $ (e_i times.o e_i)(e_j times.o e_j)
  = cases(
    0"," & i != j,
    e_i times.o e_i"," & i = j,
  )
$

(7) $sum_i e_i times.o e_i = I$

(8) $tr(S^T) = tr(S)$

(9) $tr(S T) = tr(T S)$

(10) $I dot S  = tr(S)$

(11) $R dot (S T) = (S^T R) dot T = (R T^T) dot S$

(12) $u dot S v = S dot (u times.o v)$

(13) $(a times.o b)dot (u times.o v) = (a dot u) (b dot v)$

Proof: (1) Let $u,v$ be any vector in space $V$. 
$
  (S+T)u dot v = S u dot v + T u dot v = u dot S^T v + u dot T^T v = u dot (S^T + T^T)v #qedhere
$

(2)
$
  (S T) u dot v  = S(T u ) dot v = T u dot S^T v = u dot T^T S^T v #qedhere
$ 

(3)
$
  (S^T) u dot v = S v dot u = u dot (S^T)^T v #qedhere
$

(4)
$
  (a times.o b) u dot v = (b dot u)a dot v = u dot (a dot v)b = u dot (b times.o a) v #qedhere  
$

(5)
$
  (a times.o b)(c times.o d)u = (a times.o b) (d dot u) c = (d dot u)(b dot c) a = (b dot c) (a times.o d)u #qedhere
$

(6)
$
  (e_i times.o e_i)(e_j times.o e_j) = (e_i dot e_j)(e_i times.o e_j) = cases(
    0"," & i != j,
    e_i times.o e_i"," & i = j,
  )#qedhere
$

(7) Let $u = u_i e_i$
$
  (sum_i e_i times.o e_i)u =sum_i (e_i dot u) e_i = u_i e_i = u #qedhere 
$

(8)
$
  tr(S^T) = tr(sum_(i,j) S^T_(i j)e_i times.o e_j) = tr(sum_(i,j) S_(j,i) e_i times.o e_j) = sum_(i,j)S_(j,i) tr(e_i times.o e_j) = sum_i S_(i,i) = tr(S)#qedhere 
$

(9)
$
  tr(S T) &= tr((sum_(i,j)S_(i,j) e_i times.o e_j) (sum_(i,j)T_(i,j) e_i times.o e_j) )\
  &= tr(sum_(i,j,k,l)S_(i,j) T_(k,l) (e_i times.o e_j)(e_k times.o e_l))\
  &= tr(sum_(i,j,k,l)S_(i,j) T_(k,l) (e_j dot e_k)(e_i times.o e_l))\
  &= tr(sum_(i,j,k)S_(i,j) T_(j,k) (e_i times.o e_k))= S_(i j)T_(j i)
$

$
  tr(T S) &= tr((sum_(i,j)T_(i,j) e_i times.o e_j) (sum_(i,j)S_(i,j) e_i times.o e_j) )\
  &= tr(sum_(i,j,k,l)T_(i,j) S_(k,l) (e_i times.o e_j)(e_k times.o e_l))\
  &= tr(sum_(i,j,k,l)T_(i,j) S_(k,l) (e_j dot e_k)(e_i times.o e_l))\
  &= tr(sum_(i,j,k)T_(i,j) S_(j,k) (e_i times.o e_k))\
  &= T_(i j)S_(j i) = tr(S T) #qedhere

$

(10)
$
  I dot S = tr(I^T S) = tr(S) #qedhere
$

(11)
$
  R dot (S T) = tr(R^T S T) = tr((sum_(i,j)R_(j,i)e_i times.o e_j)(sum_(k,l)S_(k,l)e_k times.o e_l)(sum_(m,n)T_(m,n)e_m times.o e_n))\
  =tr(sum_(i,j,l,n)R_(j i)S_(j l)T_(l n) e_i times.o e_n) = R_(j i) S_( j k) T_(k i)
$
We have
$
  (S^T R) dot T = S_(j i) R_(j k) T_(i k) = R dot (S T)\
  (R T^T) dot S = R_(i j) T_(k j) S_(i k) = R dot (S T) #qedhere
$

(12)
$
  u dot S v = u dot S_(i j) v_j e_ i= u_i S_(i j) v_j\
  S dot (u times.o v) = S_(i j) (u times.o v)_(i j) = S_(i j) u_i v_j #qedhere
$

(13)
$
  (a times.o b) dot (u  times.o v) = (a times.o b)_(i j) (u times.o v)_(i j) = a_i b_j u _i v_j = (a dot u)(b dot v)#qedhere
$

4. Prove that the operation $S dot T$ is indeed an inner product; that is, show
that
(a) $S dot T = T dot S$,

(b) $S dot T$ is linear in T for S fixed,

(c) $S dot S >= 0$,

(d) $S dot S = 0$ only when S = 0.

Proof:(a) $T dot S = tr(T^T S) = tr((sum_(i j)T_(j i)e_i times.o e_j)(sum_(k l)S_(k l)e_k times.o e_l))=sum_(i j k)T_(j i)S_(j k)tr(e_i times.o e_k) = sum_(i j) T_(j i) S_(j i) = S dot T$#qedhere

(b) First $S dot 0 = 0$. Second, $S dot (alpha M + beta N) = alpha S_(i j)  M_(i j) + beta S_(i j)  N_(i j) = alpha S dot M + beta S dot N$, then inner dot of tensor is linear.#qedhere

(c)(d) $S dot S = S_(i j)^2 >= 0 $ if and only if $S_(i j) = 0$ in other word $S = 0$ equals to 0.#qedhere

5. Show that the trace of a tensor equals the trace of its symmetric part, so that, in particular, the trace of a skew tensor is zero.

Proof: For any S in Lin, we have $tr(S^T) = tr(sum_(i j)S_(j i)e_i times.o e_j) = S_(i i) = tr(S)$. For any T in Skw, we have $tr(T) = tr(-T^T)$ as well as $tr(T) - tr(-T^T) = 2tr(T) = 0$ then $tr(T) = 0$. #qedhere

6. Let $phi: cal(V) times cal(V) times cal(V) -> RR$ be trilinear and skew symmetric; that is, $phi$ is linear in each argument and

$
phi(u, v, w)
= -phi(v, u, w)
= -phi(u, w, v)
= -phi(w, v, u)
$

for all $u, v, w in cal(V)$. Let $S in "Lin"$. Show that

$
phi(S e_1, e_2, e_3)
+ phi(e_1, S e_2, e_3)
+ phi(e_1, e_2, S e_3)
= ("tr" S) phi(e_1, e_2, e_3).
$
Proof: $phi(S e_1,e_2,e_3) = phi(S_(i 1)e_i,e_2,e_3) = S_(1 1)phi(e_1,e_2,e_3)$. (Since any same vector be each two variants means that it is equal and opposite to itself i.e. equals to zero)
Thus
$
L H S = S_(i i) phi(e_1,e_2,e_3) = tr(S) phi(e_1,e_2,e_3)#qedhere
$

7. Let $Q$ be an orthogonal tensor, and let $e$ be a vector with $Q e = e$.

(a)Show that
$
Q^T e = e
$.
(b)Let $w$ be the axial vector corresponding to the skew part of $Q$. Show that $w$ is parallel to $e$.

Proof: (a)$Q^T e = e<=>Q Q^T e = Q e  <=> e = e$#qedhere

(b) $w times e = 1/2(Q-Q^T)e = 0$ then $w$ is parallel to $e$.