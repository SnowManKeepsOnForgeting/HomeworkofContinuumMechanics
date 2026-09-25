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

(a) Show that
$
Q^T e = e
$.
(b) Let $w$ be the axial vector corresponding to the skew part of $Q$. Show that $w$ is parallel to $e$.

Proof: (a)$Q^T e = e<=>Q Q^T e = Q e  <=> e = e$.#qedhere

(b) $w times e = 1/2(Q-Q^T)e = 0$ then $w$ is parallel to $e$.#qedhere

8. Show that if $w$ is the axial vector of $W in #text("Skm")$, then
$
  norm(w)_2 = 1/sqrt(2) norm(W)_2
$
Proof:
Let $W$ be 
$
  mat(W) = mat(0,-gamma,beta;gamma,0,-alpha;-beta,alpha,0)
$
then $w = mat(alpha,beta,gamma)^T$. We have $norm(W)_2^2 = W dot W = 2(alpha^2 + beta^2 + gamma^2)$ and $norm(w)_2^2 = alpha^2 + beta^2 + gamma^2$. So $norm(w)_2 = 1/sqrt(2) norm(W)_2$.#qedhere

9. Determine the spectrum, the characteristic spaces, and a spectral decomposition for each of the following tensors:
$
  A = alpha I + beta m times.o m \
  B = m times.o n + n times.o m.
$Here $alpha$ and $beta$ are scalars, while $m$ and $n$ are orthogonal unit vectors.

Proof: For $A$ we have $A n = alpha I n + beta (m times.o m ) n = alpha n$ and $A m = alpha I m + beta (m times.o m ) m = (alpha + beta)m$. Then we have $A(m times n) = alpha (m times n) $. Thus ${x in V|m dot x = 0}$ and span${m}$ is the characteristic space of $alpha$. We have $A = (alpha+beta) m times.o m + alpha(I- m times.o m)$.

For $B$ we have $B(m times n) = 0$, $B((m+n)/sqrt(2)) = sqrt(1/2)(m+n)$ and $B((m-n)/sqrt(2)) = -sqrt(1/2)(m-n)$. Thus the span${m times n}$, span${sqrt(1/2)(m+n)}$ and span$sqrt(1/2){m-n}$ is the characteristic space of B and we have $B =1/2(m+n) times.o (m+n) + 1/2(m-n) times.o (m-n)$.#qedhere

10. Let $D in$ Sym, $Q in$ Orth. Show that the spectrum of $D$ equals the spectrum of $Q D  Q^T$. Show further that if $e$ is an eigenvector of $D$, then $Q e$ is an eigenvector of $Q D  Q^T$ corresponding to the same eigenvalue.

Proof: For any spectrum $lambda$ of $D$ satisfing $D e = lambda e$ we have $Q D Q^T (Q e) = Q D e = lambda (Q e)$. Then the spectrum of $D$ remain and the conclusion is also true. #qedhere

11.  A tensor $P$ is a perpendicular projection if $P$ is symmetric and $P^2 = P$.
(a) Let $n$ be a unit vector. Show that each of the following tensors is a
perpendicular projection:
$ I, quad 0, quad n times.o n, quad I - n times.o n. $ 
(b) Show that, conversely, if $P$ is a perpendicular projection, then $P$
admits one of the representations above.

Proof: (a) $I^2 = I$, $0^2 =0$, $(n times.o n)(n times.o n) = (n dot n) (n times.o n) =(n times.o n)$ thus $(n times.o n)^2 = (n times.o n)$ and $(I - n times.o n)(I - n times.o n) = I^2 - 2 I(n times.o n) + (n times n)^2 = I - n times.o n$. #qedhere

(b) Let $lambda$ be any spectrum of $P$ and $lambda$ must satisfy $P^3e = P e = lambda^3e = lambda e$. So $lambda^3 - lambda = 0$. We have 
$
  lambda^3 -lambda = lambda(lambda-1)(lambda+1) = 0
$. Thus $lambda in {0,-1,1}$ and $P in$ Sym which means $P$ can be represented by its spectrum with unit vector. Which means $P$ must be the form of represetation above. #qedhere

12. Let $F = R U$ and $F = V R$ denote the right and left polar decompositions of $F in upright("Lin")^+$.

(a) Show that $U$ and $V$ have the same spectrum $(omega_1, omega_2, omega_3)$.

(b) Show that $F$ and $R$ admit the representations
  $
  F = sum_i omega_i f_i times.o e_i,
  $
  $
  R = sum_i f_i times.o e_i,
  $
where $e_i$ and $f_i$ are, respectively, the eigenvectors of $U$ and $V$ corresponding to $omega_i$.

Proof: (a) For any $omega in {omega_1,omega_2,omega_3}$ and corresponding $e$ we have $U e = omega e <=> R U e = omega R e <=> V (R e) = omega (R e)$. #qedhere 

(b) From (a) we have $f_i = R e_i$. So $R = sum_i R e_i times.o e_i= sum_i f_i times.o e_i$ and $F e_i = omega R e_i$ so $F = sum_i F e_i times.o e_i = sum_i omega_i R=sum_i omega_i f_i times.o e_i$. #qedhere

13. Let $R$ be the rotation corresponding to the polar decomposition of $F in upright("Lin")^+$. Show that $R$ is the closest rotation to $F$ in the sense that
  $
  norm(F - R)_2 < norm(F - Q)_2
  $
for all rotations $Q != R$.

Proof: 
$
    norm(F - Q)_2^2 -norm(F - R)_2^2 = 2 F dot R - 2F dot Q = 2R U dot (R-Q)=2U dot (I - R^T Q)\
    =U dot (R^T Q - I)(R^T Q - I)^T = tr((R^T Q - I)^T U(R^T Q - I))
$
For any vector $x$ we have $x^T (R^T Q - I)^T U(R^T Q - I)x = (x^T (R^T Q - I)^T) U((R^T Q - I)x)>=0$ iff $x=0 or I = R^T Q$, so $norm(F - Q)_2^2 -norm(F - R)_2^2 >=0$ iff $I = R^T Q$ i.e $R=Q$. #qedhere