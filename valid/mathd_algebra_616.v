Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_616
  (f g : R -> R)
  (h₀ : forall x, f x = x^3 + 2 * x + 1)
  (h₁ : forall x, g x = x - 1) :
  f (g 1) = 1.
Proof.
Admitted.