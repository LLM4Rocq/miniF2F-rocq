Require Import Coq.Arith.PeanoNat.
Require Import Coq.Arith.Arith.

Theorem mathd_numbertheory_234 :
  forall a b : nat, 
  (1 <= a /\ a <= 9 /\ b <= 9) ->
  (10 * a + b)^3 = 912673 ->
  a + b = 16.
Proof.
Admitted.