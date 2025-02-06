Require Import Nat.
Require Import ZArith.

Theorem mathd_numbertheory_483:
  forall a : nat -> nat,
  a 1 = 1 ->
  a 2 = 1 ->
  (forall n : nat, a (n + 2) = a (n + 1) + a n) ->
  a 100 mod 4 = 3.
Proof.
Admitted.