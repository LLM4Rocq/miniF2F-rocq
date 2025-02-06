Require Import Coq.Arith.PeanoNat.
Require Import Coq.Arith.Arith.

Theorem mathd_numbertheory_34 : 
  forall x : nat, 
  (x < 100) -> 
  (x * 9 mod 100 = 1) -> 
  (x = 89).
Proof.
Admitted.