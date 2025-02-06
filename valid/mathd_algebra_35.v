Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_35
  (p q : R -> R)
  (h₀ : forall x, p x = 2 - x^2)
  (h₁ : forall x, x <> 0 -> q x = 6 / x) :
  p (q 2) = -7.
Proof.
Admitted.