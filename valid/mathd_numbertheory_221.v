Require Import Nat.
Require Import List.
Require Import ZArith.


Definition divides (d n : nat) : Prop := 
  exists k : nat, n = k * d.


Definition has_three_divisors (n : nat) : Prop :=
  exists l : list nat,
    NoDup l /\
    (forall d : nat, In d l <-> (d > 0 /\ divides d n)) /\
    length l = 3.


Theorem mathd_numbertheory_221:
  exists l : list nat,
    NoDup l /\
    (forall x : nat, In x l <-> 
      (x > 0 /\ x < 1000 /\ has_three_divisors x)) /\
    length l = 11.

Proof.
