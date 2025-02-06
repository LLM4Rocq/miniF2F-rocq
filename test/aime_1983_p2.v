Require Import Reals.
Open Scope R_scope.

Theorem aime_1983_p2 :
  forall (x p : R) (f : R -> R),
  0 < p -> p < 15 ->
  p <= x -> x <= 15 ->
  f x = Rabs (x - p) + Rabs (x - 15) + Rabs (x - p - 15) ->
  15 <= f x.
Proof.
Admitted.