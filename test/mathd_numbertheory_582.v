Require Import Coq.Arith.PeanoNat.
Require Import Coq.Arith.Arith.

Theorem mathd_numbertheory_582:
  forall n : nat,
  (0 < n) -> (exists k, n = 3 * k) ->
  (((n + 4) + (n + 6) + (n + 8)) mod 9 = 0).
Proof.
Admitted.