Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_96:
  forall (x y z a : R),
  (0 < x) -> (0 < y) -> (0 < z) -> 
  (ln x - ln y = a) -> 
  (ln y - ln z = 15) -> 
  (ln z - ln x = -7) ->
  a = -8.
Proof.
Admitted.