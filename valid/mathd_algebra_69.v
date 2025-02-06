Require Import Arith.

Theorem mathd_algebra_69 :
  forall (rows seats : nat),
  (rows * seats = 450) ->
  ((rows + 5) * (seats - 3) = 450) ->
  rows = 25.
Proof.
Admitted.