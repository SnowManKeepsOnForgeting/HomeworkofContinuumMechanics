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

Proof: For any $H in upright("Lin")$, differentiate the identity $A G(A) = I$
in the direction $H$. By the product rule,
$
  H G(A) + A D G(A)[H] = 0.
$
Since $G(A) = A^(-1)$, multiplying on the left by $A^(-1)$ gives
$
  A^(-1) H A^(-1) + D G(A)[H] = 0.
$
Therefore
$
  D G(A)[H] = - A^(-1) H A^(-1).
$#qedhere

3. Let $phi$ be defined on the set of all invertible tensors by $phi(A) = det(A^2)$. Compute $D phi(A)$.

Solution: Let $F(A) = A^2$ and $psi(B) = det B$. Since $A^2$ is invertible, the chain rule gives
$
  D phi(A)[H]
    &= D psi(F(A))[D F(A)[H]] \
    &= det(A^2) tr(A^(-2)(A H + H A)) \
    &= det(A^2) (tr(A^(-1) H) + tr(A^(-2) H A)) \
    &= 2 det(A^2) tr(A^(-1) H) \
    &= 2 (det A)^2 tr(A^(-1) H).
$#qedhere

4. Let $phi(v) = e^(v^2)$ for all $v in cal(U)$. Compute $D phi(v)$.

Solution: Let $f(v) = v^2 = v dot v$. For any vector $h$,
$
  D f(v)[h] = h dot v + v dot h = 2 v dot h.
$
By the chain rule,
$
  D phi(v)[h] = e^(f(v)) D f(v)[h] = 2 e^(v^2) (v dot h).
$#qedhere

5. Let $G: upright("Lin") -> upright("Lin")$ be defined by

$ G(A) = K(A) A^T, $

where $K: upright("Lin") -> upright("Lin")$ is differentiable. Show that if $G(A)$ is symmetric for each $A$ and if $K(I) = 0$, then $D K(I)$ has symmetric values (i.e., $D K(I)[H] = D K(I)[H]^T$for every $H in upright("Lin")$).

Proof:
$
  D G(A)[H] = D K(A)[H] A^T + K(A) H^T.
$
At $A = I$, the assumption $K(I) = 0$ gives $D G(I)[H] = D K(I)[H]$.
Since $G(A) = G(A)^T$ for every $A$, we have
$
  D G(A)[H] = (D G(A)[H])^T.
$
Therefore $D K(I)[H] = (D K(I)[H])^T$ for every $H$. #qedhere

6. Let $Q: RR -> upright("Orth")$ be differentiable.Show that $dot(Q)(t) Q(t)^T$ is skew at each $t in RR$.

Proof: We have $Q(t) Q(t)^T = I$. Differentiating with respect to $t$,
$
  dot(Q)(t) Q(t)^T + Q(t) dot(Q)(t)^T = 0.
$
so $dot(Q)(t) Q(t)^T$ is skew. #qedhere

7. Let $G: upright("Lin") -> upright("Lin")$ be differentiable and satisfy 
$
Q G(A) Q^T = G(Q A)
$
for all $A in upright("Lin")$ and $Q in upright("Orth")$. Show that
$
  G(A)W^T+W G(A)= D G(A)[W A]
$ 
for all $A in upright("Lin")$ and $W in upright("Skew")$.

Proof: Let $Q(t) = e^(W t)$. Since $W^T = -W$,
$
  Q(t)^T = e^(-W t) = Q(t)^(-1),
$
so $Q(t)$ is orthogonal. Therefore we have
$
  e^(W t) G(A) e^(-W t) = G(e^(W t) A).
$
Differentiating at $t = 0$ gives
$
  W G(A) + G(A) W^T = D G(A)[W A].
$#qedhere

8. Compute the derivatives of the principal invariants $l_1,l_2,l_3$: $upright("Lin")->RR$.

Solution: The principal invariants are
$
  l_1(A) &= tr A, \
  l_2(A) &= 1/2 ((tr A)^2 - tr(A^2)), \
  l_3(A) &= det A.
$
and we have
$
  D tr(A^2)[H] &= tr(A H + H A) = 2 tr(A H), \
  D tr(A^3)[H] &= tr(A^2 H + A H A + H A^2) = 3 tr(A^2 H).
$
Thus
$
  D l_1(A)[H] &= tr H, \
  D l_2(A)[H] &= (tr A)(tr H) - tr(A H),\
  D l_3(A)[H] &= (det A) tr(A^(-1) H).
$#qedhere

9. Let $alpha$, $phi$, $u$, $v$, $w$, and $S$ be smooth fields with $alpha$ and $phi$ scalar valued; $u$, $v$, and $w$ vector valued; and $S$ tensor valued. Establish identities, similar to (2), for

  (a) $nabla (alpha phi)$

  (b) $nabla [(u dot v) w]$

  (c) $op("div")(phi S)$

  (d) $Delta (v dot w)$ (with $v$ and $w$ of class $C^2$).


10. Let $phi$ and $v$ be class $C^2$. Show that

  (a) $upright("curl") nabla phi = 0$,

  (b) $upright("div") upright("curl") v = 0$.


11. $r(x) = x - o$.

  (a) Show that $nabla r = I$.

  (b) Let $e = r / abs(r)$. Compute $(nabla e)e$.


12. $r(x) = x - o$. Let $a in cal(V)$, $S in upright("Lin")$, and define $phi: cal(E)^3 -> bb(R)$ by
$
  phi = a dot (r times S r).
$
Compute $nabla phi$.


13. $r(x) = x - o$. Let $u$ be the vector field on $cal(E)^3 - {o}$ defined by
$
  u = r / abs(r)^3.
$
Show that $u$ is harmonic. Find a scalar field whose gradient is $u$.


14. Let $u$ be a class $C^2$ vector field. Show that

  (a) $upright("div") ((nabla u)u) = nabla u dot (nabla u)^T + u dot (nabla upright("div") u)$,

  (b) $nabla u dot (nabla u)^T = upright("div") ((nabla u)u - (upright("div") u)u) + (upright("div") u)^2$.


15. Let $u$ and $v$ be smooth. Show that
$
  upright("div") (u times v)
  = v dot upright("curl") u - u dot upright("curl") v.
$

16. A homogeneous deformation of the form
$
  x_1 &= p_1 + gamma p_2, \
  x_2 &= p_2, \
  x_3 &= p_3
$
is called a _pure shear_. For this deformation compute:

  (a) the matrices of $F$, $C$, and $B$;

  (b) the list $cal(I)_C$ of principal invariants of $C$ (or $B$);

  (c) the principal stretches.


17. Compute $C$, $B$, and $cal(I)_C$ for an extension of amount $lambda$ in the direction $e$.


18. Show that a deformation is isochoric if and only if $det C = 1$.


19. Show that
$
  C = I + nabla u + (nabla u)^T + (nabla u)^T nabla u.
$


20. Show that a deformation is rigid if and only if $cal(I)_C = (3, 3, 1)$.