Require Import Arith.
Require Import ZArith.

Theorem mathd_numbertheory_110:
  forall a b : nat,
  (0 < a)%nat -> (0 < b)%nat -> (b <= a)%nat ->
  (a + b) mod 10 = 2 ->
  (2 * a + b) mod 10 = 1 ->
  (a - b) mod 10 = 6.
Proof.
Admitted.