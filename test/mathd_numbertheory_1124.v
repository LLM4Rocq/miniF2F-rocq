Require Import Nat.
Require Import ZArith.

Theorem mathd_numbertheory_1124 :
  forall n : nat,
  n <= 9 ->
  (exists k : nat, 374 * 10 + n = 18 * k) ->
  n = 4.

Proof.
