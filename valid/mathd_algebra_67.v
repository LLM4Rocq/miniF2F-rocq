Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_67 
  (f g : R -> R)
  (h0 : forall x, f x = 5 * x + 3)
  (h1 : forall x, g x = x^2 - 2) :
  g (f (-1)) = 2.
Proof.
Admitted.