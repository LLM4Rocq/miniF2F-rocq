Require Import Nat.
Require Import ZArith.

Theorem mathd_numbertheory_284 :
  forall a b : nat,
  1 <= a /\ a <= 9 /\ b <= 9 ->
  10 * a + b = 2 * (a + b) ->
  10 * a + b = 18.
Proof.
Admitted.