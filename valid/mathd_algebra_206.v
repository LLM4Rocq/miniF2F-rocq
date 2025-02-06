Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_206:
  forall (a b : R) (f : R -> R),
  (forall x, f x = x^2 + a*x + b) ->
  2*a <> b ->
  f (2*a) = 0 ->
  f b = 0 ->
  a + b = -1.
Proof.
Admitted.