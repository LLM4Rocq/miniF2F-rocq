Require Import Nat.
Require Import ZArith.
Require Import List.
Require Import ListSet.
Require Import Arith.


Fixpoint fact (n : nat) : nat :=
  match n with
  | 0 => 1
  | S n' => S n' * fact n'
  end.


Definition satisfies_condition (n : nat) : Prop :=
  (exists k : nat, n = k * 5) /\ 
  Nat.lcm (fact 5) n = 5 * Nat.gcd (fact 10) n.


Theorem amc12a_2020_p21 :
  exists (l : list nat),
    NoDup l /\
    (forall n : nat, In n l <-> satisfies_condition n) /\
    length l = 48.

Proof.
