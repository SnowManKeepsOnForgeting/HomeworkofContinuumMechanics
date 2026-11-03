#import "@preview/ctheorems:2.0.0": *
#show: thm-rules        // Must include!

= Homework 3

1. Let $f_1$ and $f_2$ be deformations of $cal(B)$ with the same right Cauchy-Green strain tensors. Show that there exists a rigid deformation $g$ such that
$ f_2 = g compose f_1. $

Proof: Define $g = f_2 compose f_1^(-1)$ on $f_1(cal(B))$. Let
$F_1 = nabla f_1$ and $F_2 = nabla f_2$. At $x = f_1(p)$, the chain rule gives
$
  H(x) = nabla g(x) = F_2(p) F_1(p)^(-1).
$
Since $F_1^T F_1 = F_2^T F_2$, we have
$
  H^T H
    &= F_1^(-T) F_2^T F_2 F_1^(-1) \
    &= F_1^(-T) F_1^T F_1 F_1^(-1) = I.
$
Also, $det H = (det F_2)/(det F_1) > 0$. Thus $H$ is a rotation at every
point so $g$ is rigid.
The definition of $g$ gives $f_2 = g compose f_1$. #qedhere


2. Let $f$ be a deformation, $x = f(p)$, and let $d,e$ be nonparallel unit vectors. Define
$
  d_alpha &= f(p + alpha d) - f(p), \
  e_alpha &= f(p + alpha e) - f(p), \
  (d A_x)/(d A_p)
    &= lim_(alpha -> 0) abs(d_alpha times e_alpha)/abs((alpha d) times (alpha e)).
$
Use the identity
$ (S a) times (S b) = (det S) S^(-T) (a times b) $
to show that
$ m(x) (d A_x)/(d A_p) = G(p) n(p), $
where
$
  G &= (det F) F^(-T), \
  m(x) &= lim_(alpha -> 0) (d_alpha times e_alpha)/abs(d_alpha times e_alpha), \
  n(p) &= (d times e)/abs(d times e).
$

Proof: Let $F = nabla f(p)$ and $G = (det F) F^(-T)$. We have
$
  d_alpha = alpha F d + o(alpha), quad
  e_alpha = alpha F e + o(alpha).
$
Therefore
$
  d_alpha times e_alpha
    = alpha^2 (F d times F e) + o(alpha^2).
$
Since $F$ is invertible and $d,e$ are nonparallel, $F d times F e != 0$.
Thus both limits exist. We obtain
$
  m(x) (d A_x)/(d A_p)
    &= lim_(alpha -> 0)
      (d_alpha times e_alpha)/(alpha^2 abs(d times e)) \
    &= (F d times F e)/abs(d times e) \
    &= (det F) F^(-T) (d times e)/abs(d times e) \
    &= G(p) n(p).
$
In particular,
$
  (d A_x)/(d A_p) = abs(G(p) n(p)), quad
  m(x) = (G(p) n(p))/abs(G(p) n(p)).
$#qedhere


3. Let $cal(B)$ be the closed half-space
$ cal(B) = {p | 0 <= p_1 < infinity}, $
and consider the mapping $f$ defined by
$
  x_1 = -1/(p_1 + 1), quad x_2 = p_2, quad x_3 = p_3.
$

  (a) Verify that $f$ is one-to-one and $det nabla f > 0$.

  (b) Compute $f(cal(B))$ and show that $f$ is not a deformation.

  (c) Show that the boundary relation $f(partial cal(B)) = partial f(cal(B))$, namely $(5)_2$ in Section 6, is not satisfied.

Solution: (a) The function $p_1 -> -1/(p_1 + 1)$ is strictly increasing
for $p_1 >= 0$. Since the other two coordinates are unchanged, $f$ is
one-to-one. Also,
$
  nabla f = mat((p_1 + 1)^(-2), 0, 0; 0, 1, 0; 0, 0, 1),
$
so
$ det nabla f = (p_1 + 1)^(-2) > 0. $
#qedhere

(b)
$ p_1 = -1/x_1 - 1 >= 0. $
Hence
$ f(cal(B)) = {x | -1 <= x_1 < 0}. $
A deformation must map the body onto a closed region. Thus $f$ is not
a deformation. #qedhere

#block(breakable: false)[
(c) We have
$
  partial cal(B) &= {p | p_1 = 0}, \
  f(partial cal(B)) &= {x | x_1 = -1}, \
  partial f(cal(B)) &= {x | x_1 = -1} union {x | x_1 = 0}.
$
Therefore $f(partial cal(B)) != partial f(cal(B))$, so the boundary
relation is not satisfied. #qedhere
]


4. Let $u$ and $v$ be smooth vector fields on $cal(B)$ with the same infinitesimal strain. Show that $u-v$ is an infinitesimal rigid displacement.

Proof: Let $w = u-v$. 
$
  1/2 (nabla w + (nabla w)^T) = 0.
$
Thus $partial_j w_i = -partial_i w_j$. Commuting mixed derivatives,
$
  partial_k partial_j w_i
    &= -partial_k partial_i w_j
     = -partial_i partial_k w_j \
    &= partial_i partial_j w_k
     = partial_j partial_i w_k \
    &= -partial_j partial_k w_i
     = -partial_k partial_j w_i.
$
Hence all second derivatives of $w$ is zero. $nabla w = W$ for a constant skew tensor $W$. Therefore, for any fixed
$q in cal(B)$,
$ w(p) = w(q) + W(p-q). $
This is an infinitesimal rigid displacement. #qedhere


5. Let $cal(B)$ be bounded and let $E = 1/2 (nabla u + (nabla u)^T)$ be the infinitesimal strain. Define the mean strain $overline(E)$ by
$ upright("vol")(cal(B)) overline(E) = integral_(cal(B)) E dif V. $
Show that
$
  upright("vol")(cal(B)) overline(E)
    = 1/2 integral_(partial cal(B)) (u ⊗ n + n ⊗ u) dif A,
$
so that $overline(E)$ depends only on the boundary values of $u$.

Proof: Let $n$ be the outward unit normal. In Cartesian coordinates,
$E_(i j) = 1/2 (partial_j u_i + partial_i u_j)$. Applying the divergence
theorem to each component gives
$
  integral_(cal(B)) E_(i j) dif V
    &= 1/2 integral_(cal(B)) (partial_j u_i + partial_i u_j) dif V \
    &= 1/2 integral_(partial cal(B)) (u_i n_j + u_j n_i) dif A.
$
Thus
$
  upright("vol")(cal(B)) overline(E)
    = 1/2 integral_(partial cal(B)) (u ⊗ n + n ⊗ u) dif A.
$
The right side uses only the values of $u$ on $partial cal(B)$.#qedhere


6. (Korn's inequality) Let $cal(B)$ be bounded, let $u$ be of class $C^2$, and suppose that $u = 0$ on $partial cal(B)$. Show that
$ integral_(cal(B)) abs(nabla u)^2 dif V <= 2 integral_(cal(B)) abs(E)^2 dif V, $
where $E = 1/2 (nabla u + (nabla u)^T)$.

Proof: Write $A = nabla u$ and use the tensor norm $abs(A)^2 = A dot A$.
Expanding $E$ gives
$
  2 abs(E)^2
    = 1/2 (A + A^T) dot (A + A^T)
    = abs(A)^2 + A dot A^T.
$
In Cartesian coordinates, repeated indices are summed. Integrating by parts
twice, with both boundary terms zero because $u=0$ on $partial cal(B)$,
$
  integral_(cal(B)) A dot A^T dif V
    &= integral_(cal(B)) (partial_j u_i)(partial_i u_j) dif V \
    &= -integral_(cal(B)) u_i partial_j partial_i u_j dif V \
    &= -integral_(cal(B)) u_i partial_i (upright("div") u) dif V \
    &= integral_(cal(B)) (upright("div") u)^2 dif V >= 0.
$
Consequently,
$
  integral_(cal(B)) abs(nabla u)^2 dif V
    &= 2 integral_(cal(B)) abs(E)^2 dif V
      - integral_(cal(B)) (upright("div") u)^2 dif V \
    &<= 2 integral_(cal(B)) abs(E)^2 dif V.
$#qedhere


7. Prove that
$ dot(C) = 2 F^T D_m F. $

Proof: Let $L = upright("grad") v$ and $D = 1/2 (L + L^T)$. Here
$D_m (p,t) = D(x(p,t),t)$ is the material description of $D$, and the dot
denotes the material time derivative. Since $F = nabla_p x$ and
$partial_t x(p,t) = v(x(p,t),t)$, the chain rule gives
$
  dot(F) = nabla_p (v(x(p,t),t)) = L_m F.
$
Differentiating $C = F^T F$, we obtain
$
  dot(C)
    &= dot(F)^T F + F^T dot(F) \
    &= F^T L_m^T F + F^T L_m F \
    &= F^T (L_m^T + L_m) F = 2 F^T D_m F.
$#qedhere


#block(breakable: false)[
8. Let $v$ be a class $C^2$ velocity field. Show that
$
  upright("div") dot(v)
    = dot((upright("div") v)) + abs(D)^2 - abs(W)^2,
$
where $D$ and $W$ are the symmetric and skew parts of $L = upright("grad") v$.
]

Proof: All spatial derivatives below are taken with respect to $x$.
The material derivative of the velocity is
$ dot(v)_i = partial_t v_i + v_j partial_j v_i. $
Therefore
$
  upright("div") dot(v)
    &= partial_i partial_t v_i
      + (partial_i v_j)(partial_j v_i)
      + v_j partial_i partial_j v_i \
    &= partial_t (upright("div") v)
      + v dot upright("grad") (upright("div") v)
      + (partial_i v_j)(partial_j v_i) \
    &= dot((upright("div") v)) + tr(L^2).
$
Since $L = D+W$, $D^T = D$, and $W^T = -W$, we have
$
  tr(D W) = tr(W D) = 0, quad
  tr(D^2) = abs(D)^2, quad tr(W^2) = -abs(W)^2.
$
Thus
$
  tr(L^2) = tr(D^2) + 2 tr(D W) + tr(W^2)
    = abs(D)^2 - abs(W)^2.
$
Substituting this into the previous identity gives
$
  upright("div") dot(v)
    = dot((upright("div") v)) + abs(D)^2 - abs(W)^2.
$#qedhere


9. Let $x$ be a motion and suppose that, for some fixed $tau$,
$ x_tau (y,t) = q(t) + Q(t)(y-z), $
with $z$ and $q(t)$ points and $Q(t) in upright("Orth")^+$. Show that $x$ is rigid.

Proof: The relative motion $x_tau$ is defined by
$ x_tau (x(p,tau),t) = x(p,t). $
For any material points $p,r$, let $y_1 = x(p,tau)$ and $y_2 = x(r,tau)$.
Then
$
  x(p,t) - x(r,t)
    &= x_tau (y_1,t) - x_tau (y_2,t) \
    &= Q(t)(y_1-y_2).
$
Since $Q(t)$ is orthogonal,
$
  abs(x(p,t) - x(r,t))
    = abs(y_1-y_2)
    = abs(x(p,tau) - x(r,tau)).
$
The distance between any two material points is constant in time.
Thus $x$ is a rigid motion. #qedhere


#block(breakable: false)[
10. Let $x$ be a rigid motion. Show that, for a fixed time $tau$, the relative motion has the form
$ x_tau (y,t) = q(t) + Q(t)(y-z), $
where $z$ is a fixed point and $Q(t) in upright("Orth")^+$.

Proof: Fix $tau$ and let $cal(B)_tau = x(cal(B),tau)$. Since $x$ is rigid,
for every $y_1,y_2 in cal(B)_tau$,
$
  abs(x_tau (y_1,t) - x_tau (y_2,t)) = abs(y_1-y_2).
$
Thus, for each fixed $t$, $x_tau (dot,t)$ is a rigid deformation of
$cal(B)_tau$. By the characterization of rigid deformations, its gradient
is a constant rotation, which we denote by $Q(t)$.

Choose a fixed $z in cal(B)_tau$ and set
$
  q(t) = x_tau (z,t), quad Q(t) = nabla_y x_tau (z,t).
$
Then
$ x_tau (y,t) = q(t) + Q(t)(y-z). $
These functions are smooth because $x_tau$ is smooth. Also,
$x_tau (y,tau) = y$, so $q(tau) = z$ and $Q(tau) = I$. #qedhere
]


11. Show that the acceleration field of a rigid motion has the form
$
  dot(v)(x,t)
    = dot(v)(y,t) + dot(omega)(t) times (x-y)
      + omega(t) times [omega(t) times (x-y)],
$
where $omega$ is the angular velocity.

Proof: Let $X(t)$ and $Y(t)$ be the paths of any two material points.
For a rigid motion, the velocity field satisfies
$
  v(X(t),t) - v(Y(t),t) = omega(t) times (X(t)-Y(t)).
$
Differentiate along these paths. The derivatives on the left are the
material accelerations, so
$
  dot(v)(X(t),t) - dot(v)(Y(t),t)
    &= dot(omega)(t) times (X(t)-Y(t)) \
    &quad + omega(t) times (v(X(t),t)-v(Y(t),t)) \
    &= dot(omega)(t) times (X(t)-Y(t)) \
    &quad + omega(t) times [omega(t) times (X(t)-Y(t))].
$
At any fixed time $t$, write $x = X(t)$ and $y = Y(t)$. Then
$
  dot(v)(x,t)
    = dot(v)(y,t) + dot(omega)(t) times (x-y)
      + omega(t) times [omega(t) times (x-y)].
$#qedhere
