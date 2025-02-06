Require Import Reals.
Open Scope R_scope.

Theorem amc12a_2017_p2:
  forall (x y : R),
  x <> 0 ->
  y <> 0 ->
  x + y = 4 * (x * y) ->
  (1 / x) + (1 / y) = 4.
Proof.
Admitted.