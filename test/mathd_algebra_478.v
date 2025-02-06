Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_478:
  forall (b h v : R),
  (0 < b /\ 0 < h /\ 0 < v) ->
  v = (1/3) * (b * h) ->
  b = 30 ->
  h = 13/2 ->
  v = 65.
Proof.
Admitted.