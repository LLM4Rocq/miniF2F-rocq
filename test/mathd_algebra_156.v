Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_156
  (x y : R)
  (f g : R -> R)
  (h₀ : forall t, f t = t^4)
  (h₁ : forall t, g t = 5 * t^2 - 6)
  (h₂ : f x = g x)
  (h₃ : f y = g y)
  (h₄ : x^2 < y^2) :
  y^2 - x^2 = 1.
Proof.
Admitted.