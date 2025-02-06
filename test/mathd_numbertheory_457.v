Require Import Nat.
Require Import Arith.

Theorem mathd_numbertheory_457 :
  forall n : nat,
  0 < n -> 
  Nat.divide 80325 (fact n) ->
  17 <= n.

Proof.
