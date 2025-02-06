Require Import Coq.Arith.Arith.

Theorem mathd_numbertheory_33:
  forall (n : nat),
  (n < 398) ->
  (n * 7 mod 398 = 1) ->
  n = 57.
Proof.
Admitted.