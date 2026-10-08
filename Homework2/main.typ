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

Solution: We use $(nabla v)_(i j) = partial_j v_i$ and
$(upright("div") S)_i = partial_j S_(i j)$ in Cartesian coordinates;
repeated indices are summed.

(a)
$
  nabla (alpha phi) = phi nabla alpha + alpha nabla phi.
  #qedhere
$

(b) For any constant vector $h$,
$
  D(u dot v)[h]
    &= ((nabla u)h) dot v + u dot ((nabla v)h) \
    &= h dot ((nabla u)^T v + (nabla v)^T u).
$
Applying the product rule once more gives
$
  nabla [(u dot v) w]
    = (u dot v) nabla w
      + w ⊗ ((nabla u)^T v + (nabla v)^T u).
  #qedhere
$

(c)
$
  (upright("div") (phi S))_i
    = partial_j (phi S_(i j))
    = S_(i j) partial_j phi + phi partial_j S_(i j). 
$
Hence
$
  upright("div") (phi S) = S nabla phi + phi upright("div") S.
  #qedhere
$

(d)
$
  Delta (v dot w)
    &= partial_j partial_j (v_i w_i) \
    &= (Delta v_i) w_i
      + 2 (partial_j v_i)(partial_j w_i) + v_i Delta w_i \
    &= (Delta v) dot w + 2 nabla v dot nabla w + v dot (Delta w).
  #qedhere
$


10. Let $phi$ and $v$ be class $C^2$. Show that

  (a) $upright("curl") nabla phi = 0$,

  (b) $upright("div") upright("curl") v = 0$.

Proof: (a) The tensor $partial_j partial_k phi$ is symmetric in $j,k$, whereas
$epsilon_(i j k)$ is skew in these indices. Thus
$
  (upright("curl") nabla phi)_i
    = epsilon_(i j k) partial_j partial_k phi = 0.
  #qedhere
$

(b) Similarly, symmetry in $i,j$ gives
$
  upright("div") upright("curl") v
    = epsilon_(i j k) partial_i partial_j v_k = 0.
  #qedhere
$


11. $r(x) = x - o$.

  (a) Show that $nabla r = I$.

  (b) Let $e = r / abs(r)$. Compute $(nabla e)e$.

Solution: (a) For every vector $h$,
$
  D r(x)[h] = h,
$
so $nabla r = I$. #qedhere

(b) On $cal(E)^3 - {o}$, write $rho = abs(r)$, so that
$nabla rho = r / rho = e$. Therefore
$
  nabla e
    &= nabla (rho^(-1) r)
     = rho^(-1) I - rho^(-3) r ⊗ r \
    &= 1/rho (I - e ⊗ e).
$
Since $e dot e = 1$,
$
  (nabla e)e = 1/rho (e - (e dot e)e) = 0.
  #qedhere
$


12. $r(x) = x - o$. Let $a in cal(V)$, $S in upright("Lin")$, and define $phi: cal(E)^3 -> bb(R)$ by
$
  phi = a dot (r times S r).
$
Compute $nabla phi$.

Solution: Since $a$ and $S$ are constant and $D r(x)[h] = h$,
$
  D phi(x)[h]
    &= a dot (h times S r + r times S h) \
    &= h dot (S r times a) + (S h) dot (a times r) \
    &= h dot (S r times a + S^T (a times r)).
$
Thus
$
  nabla phi = S r times a + S^T (a times r).
  #qedhere
$


13. $r(x) = x - o$. Let $u$ be the vector field on $cal(E)^3 - {o}$ defined by
$
  u = r / abs(r)^3.
$
Show that $u$ is harmonic. Find a scalar field whose gradient is $u$.

Solution: Write $rho = abs(r) > 0$ and take
$
  phi(x) = -1/rho.
$
Using $nabla rho = r/rho$, we obtain
$
  nabla phi = rho^(-2) nabla rho = r/rho^3 = u.
$
Moreover, $upright("div") r = 3$ and $nabla (rho^(-3)) = -3 r/rho^5$, so
$
  Delta phi
    &= upright("div") u \
    &= rho^(-3) upright("div") r + r dot nabla (rho^(-3)) \
    &= 3/rho^3 - 3 (r dot r)/rho^5 = 0.
$
Since $phi$ is smooth away from $o$, derivatives commute and
$
  Delta u = Delta (nabla phi) = nabla (Delta phi) = 0.
$#qedhere


14. Let $u$ be a class $C^2$ vector field. Show that

  (a) $upright("div") ((nabla u)u) = nabla u dot (nabla u)^T + u dot (nabla upright("div") u)$,

  (b) $nabla u dot (nabla u)^T = upright("div") ((nabla u)u - (upright("div") u)u) + (upright("div") u)^2$.

Proof: (a)
$
  upright("div") ((nabla u)u)
    &= partial_i ((partial_j u_i) u_j) \
    &= (partial_i partial_j u_i) u_j
      + (partial_j u_i)(partial_i u_j) \
    &= u dot nabla (upright("div") u)
      + nabla u dot (nabla u)^T.
  #qedhere
$

(b) The product rule gives
$
  upright("div") ((upright("div") u)u)
    = u dot nabla (upright("div") u) + (upright("div") u)^2.
$
Subtracting this identity from part (a),
$
  upright("div") ((nabla u)u - (upright("div") u)u)
    = nabla u dot (nabla u)^T - (upright("div") u)^2.
$So we have
$
  nabla u dot (nabla u)^T = upright("div") ((nabla u)u - (upright("div") u)u) + (upright("div") u)^2.
$


15. Let $u$ and $v$ be smooth. Show that
$
  upright("div") (u times v)
  = v dot upright("curl") u - u dot upright("curl") v.
$

Proof:
$
  upright("div") (u times v)
    &= partial_i (epsilon_(i j k) u_j v_k) \
    &= epsilon_(i j k) (partial_i u_j) v_k
      + epsilon_(i j k) u_j partial_i v_k \
    &= v_k epsilon_(k i j) partial_i u_j
      - u_j epsilon_(j i k) partial_i v_k \
    &= v dot upright("curl") u - u dot upright("curl") v.
  #qedhere
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

Solution: (a) Since $F_(i j) = (partial x_i) / (partial p_j)$,
$
  F &= mat(1, gamma, 0; 0, 1, 0; 0, 0, 1), \
  C = F^T F &= mat(1, gamma, 0; gamma, 1 + gamma^2, 0; 0, 0, 1), \
  B = F F^T &= mat(1 + gamma^2, gamma, 0; gamma, 1, 0; 0, 0, 1).
  #qedhere
$

(b) The trace, sum of the principal $2 times 2$ minors, and determinant are
$
  l_1(C) &= 3 + gamma^2, \
  l_2(C) &= (1 (1 + gamma^2) - gamma^2) + 1 + (1 + gamma^2)
           = 3 + gamma^2, \
  l_3(C) &= (det F)^2 = 1.
$
Therefore
$
  cal(I)_C = (3 + gamma^2, 3 + gamma^2, 1).
$
The tensor $B = F C F^(-1)$ has the same principal invariants. #qedhere

(c) One eigenvalue of $C$ is $1$. The other two satisfy
$
  mu^2 - (2 + gamma^2) mu + 1 = 0,
$
and hence are
$
  mu_+ = 1 + gamma^2/2 + abs(gamma)/2 sqrt(gamma^2 + 4), quad
  mu_- = 1 + gamma^2/2 - abs(gamma)/2 sqrt(gamma^2 + 4).
$
The principal stretches are the positive square roots of the eigenvalues:
$
  lambda_+ = (sqrt(gamma^2 + 4) + abs(gamma))/2, quad
  lambda_- = (sqrt(gamma^2 + 4) - abs(gamma))/2, quad
  lambda_3 = 1.
$
In particular, $lambda_+ lambda_- = 1$. #qedhere


17. Compute $C$, $B$, and $cal(I)_C$ for an extension of amount $lambda$ in the direction $e$.

// Convention: Gurtin, An Introduction to Continuum Mechanics.
// https://ndl.ethernet.edu.et/bitstream/123456789/46287/1/19.pdf
Solution: For an extension of amount $lambda > 0$ along the unit vector $e$,
$
  F = I + (lambda - 1) e ⊗ e.
$
Let $P = e ⊗ e$. Since $P^T = P$ and $P^2 = P$, $F$ is symmetric and
$
  C = B = F^2
    = I + (2(lambda - 1) + (lambda - 1)^2) P
    = I + (lambda^2 - 1) e ⊗ e.
$
The eigenvalue in direction $e$ is $lambda^2$, while both eigenvalues in
the plane perpendicular to $e$ are $1$. Consequently,
$
  cal(I)_C = (lambda^2 + 2, 2 lambda^2 + 1, lambda^2).
  #qedhere
$


18. Show that a deformation is isochoric if and only if $det C = 1$.

Proof:
$
  det C = det(F^T) det F = (det F)^2 = J^2.
$
The deformation is isochoric exactly when $J = 1$ everywhere. Positivity
of $J$ makes this equivalent to $det C = 1$ everywhere. #qedhere


19. Show that
$
  C = I + nabla u + (nabla u)^T + (nabla u)^T nabla u.
$

Proof: Let $f(p)$ be the deformation and $u(p) = f(p) - p$ its displacement
field. Here gradients are taken with respect to the reference position $p$.
Then
$
  F = nabla f = I + nabla u.
$
Therefore
$
  C &= F^T F = (I + (nabla u)^T)(I + nabla u) \
    &= I + nabla u + (nabla u)^T + (nabla u)^T nabla u.
  #qedhere
$


20. Show that a deformation is rigid if and only if $cal(I)_C = (3, 3, 1)$.

Proof: If the deformation is rigid, it has the form
$f(p) = b + Q(p - o)$, with constant translation $b$ and constant proper
orthogonal tensor $Q$. Hence $F = Q$ and $C = Q^T Q = I$, which gives
$
  cal(I)_C = (tr I, l_2(I), det I) = (3, 3, 1).
$

Conversely, suppose $cal(I)_C = (3, 3, 1)$ everywhere. The characteristic
polynomial of $C$ is
$
  det(t I - C) = t^3 - 3 t^2 + 3 t - 1 = (t - 1)^3.
$
Since $C$ is symmetric positive definite, its spectral decomposition gives
$C = I$. Thus $F^T F = I$ at every point.

To show that $F$ is constant, set $a_i = partial_i f$. The vectors $a_i$ form an
orthonormal basis because $a_j dot a_k = delta_(j k)$. Define
$
  T_(i j k) = (partial_i a_j) dot a_k.
$
Equality of mixed derivatives gives $T_(i j k) = T_(j i k)$, while
differentiating $a_j dot a_k = delta_(j k)$ gives
$T_(i j k) = -T_(i k j)$. Combining these symmetries,
$
  T_(i j k) &= T_(j i k) = -T_(j k i) = -T_(k j i) \
            &= T_(k i j) = T_(i k j) = -T_(i j k).
$
Thus every $T_(i j k)$ is zero. As the $a_k$ form a basis,
$partial_i a_j = 0$ for all $i,j$, and hence $nabla F = 0$.
Connectedness now implies $F = Q$ for a constant orthogonal tensor $Q$;
orientation preservation gives $det Q = 1$. Integrating $nabla f = Q$
yields $f(p) = b + Q(p - o)$, a rigid deformation. #qedhere
