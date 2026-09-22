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
  &= tr(sum_(i,j,k)S_(i,j) T_(j,k) (e_i times.o e_k))\
$

$
  tr(T S) &= tr((sum_(i,j)T_(i,j) e_i times.o e_j) (sum_(i,j)S_(i,j) e_i times.o e_j) )\
  &= tr(sum_(i,j,k,l)T_(i,j) S_(k,l) (e_i times.o e_j)(e_k times.o e_l))\
  &= tr(sum_(i,j,k,l)T_(i,j) S_(k,l) (e_j dot e_k)(e_i times.o e_l))\
  &= tr(sum_(i,j,k)T_(i,j) S_(j,k) (e_i times.o e_k))\
  &= tr(sum_(i,j,k)S_(i,j) T_(j,k) (e_i times.o e_k)) = tr(S T) #qedhere

$

(10)
$
  I dot S = tr(I^T S) = tr(S)
$

(11)
$
  R dot (S T) = tr(R^T S T) 
$