#import "@preview/ctheorems:2.0.0": *
#show: thm-rules        // Must include!

= Homework 2

1. Compute $D G(A)$ for each of the following functions $G: upright("Lin") -> upright("Lin")$.

  (a) $G(A) = (tr A) A$

  (b) $G(A) = A B A$ 

  (c) $G(A) = A^T A$

  (d) $G(A) = (u dot A u) A$ 

Solution: 
(a)
$
  G(A + H) &= (tr A + tr H)(A + H) \
  &= G(A) + (tr H) A + (tr A) H + (tr H) H.
$
Hence
$
  D G(A)[H] = (tr H) A + (tr A) H.
$#qedhere

(b) 
$
  G(A + H) &= (A + H) B (A + H) \
  &= G(A) + H B A + A B H + H B H.
$
Hence
$
  D G(A)[H] = H B A + A B H.
$#qedhere

(c) 
$
  G(A + H) &= (A^T + H^T)(A + H) \
  &= G(A) + H^T A + A^T H + H^T H.
$
Hence
$
  D G(A)[H] = H^T A + A^T H.
$#qedhere

(d)
$
  G(A + H) &= (u dot A u + u dot H u)(A + H) \
  &= G(A) + (u dot H u) A + (u dot A u) H
    + (u dot H u) H.
$
Hence
$
  D G(A)[H] = (u dot H u) A + (u dot A u) H.
$#qedhere


2. Let $G$ be defined on the set of all invertible tensors by $G(A) = A^(-1)$. Assuming that $G$ is differentiable, show that

$ D G(A)[H] = - A^(-1) H A^(-1). $

3. Let $phi$ be defined on the set of all invertible tensors by $phi(A) = det(A^2)$. Compute $D phi(A)$.

4. Let $phi(v) = e^(v^2)$ for all $v in cal(U)$. Compute $D phi(v)$.

5. Let $G: upright("Lin") -> upright("Lin")$ be defined by

$ G(A) = K(A) A^T, $

where $K: upright("Lin") -> upright("Lin")$ is differentiable. Show that if $G(A)$ is symmetric for each $A$ and if $K(I) = 0$, then $D K(I)$ has symmetric values (i.e., $D K(I)[H] = D K(I)[H]^T$for every $H in upright("Lin")$).

6. Let $Q: RR -> upright("Orth")$ be differentiable.Show that $dot(Q)(t) Q(t)^T$ is skew at each $t in RR$.

7. Let $G: upright("Lin") -> upright("Lin")$ be differentiable and satisfy 
$
Q G(A) Q^T = G(Q A)
$
for all $A in upright("Lin")$ and $Q in upright("Orth")$. Show that
$
  G(A)W^T+W G(A)= D G(A)[W A]
$ 
for all $A in upright("Lin")$ and $W in upright("Skew")$.

8. Compute the derivatives of the principal invariants $l_1,l_2,l_3$: $upright("Lin")->RR$.

9. Let $alpha$, $phi$, $u$, $v$, $w$, and $S$ be smooth fields with $alpha$ and $phi$ scalar valued; $u$, $v$, and $w$ vector valued; and $S$ tensor valued. Establish identities, similar to (2), for

  (a) $nabla (alpha phi)$

  (b) $nabla [(u dot v) w]$

  (c) $op("div")(phi S)$

  (d) $Delta (v dot w)$ (with $v$ and $w$ of class $C^2$).
