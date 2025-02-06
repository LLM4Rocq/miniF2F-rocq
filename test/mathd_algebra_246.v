Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_246
  (a b : R)
  (f : R -> R)
  (h₀ : forall x, f x = a * x^4 - b * x^2 + x + 5)
  (h₂ : f (-3) = 2) :
  f 3 = 8.
Proof.
Admitted.