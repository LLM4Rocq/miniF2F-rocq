Require Import Nat.
Require Import ZArith.
Require Import List.

Theorem mathd_numbertheory_461 :
  forall n : nat,
  n = length (filter (fun x => Nat.gcd x 8 =? 1) (seq 1 7)) ->
  (Nat.modulo (3^n) 8) = 1.
Proof.
Admitted.