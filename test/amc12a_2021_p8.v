Require Import Arith.
Require Import ZArith.

Theorem amc12a_2021_p8 :
  forall (d : nat -> nat),
    d 0 = 0 ->
    d 1 = 0 ->
    d 2 = 1 ->
    (forall n : nat, n >= 3 -> d n = d (n-1) + d (n-3)) ->
    (Nat.even (d 2021)) = true /\ 
    (Nat.even (d 2022)) = false /\ 
    (Nat.even (d 2023)) = true.

Proof.
