Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_480 (f : R -> R)
  (h0 : forall x : R, x < 0 -> f x = -(x^2) - 1)
  (h1 : forall x : R, 0 <= x -> x < 4 -> f x = 2)
  (h2 : forall x : R, x >= 4 -> f x = sqrt x) :
  f PI = 2.
Proof.
Admitted.
