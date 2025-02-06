Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_131 :
  forall (a b : R) (f : R -> R),
    (forall x, f x = 2 * x^2 - 7 * x + 2) ->
    f a = 0 ->
    f b = 0 ->
    a <> b ->
    1 / (a - 1) + 1 / (b - 1) = -1.
Proof.
Admitted.