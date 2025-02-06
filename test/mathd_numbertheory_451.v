Require Import Nat.
Require Import List.
Require Import ZArith.
Require Import SetoidList.


Fixpoint get_divisors (n k: nat) : list nat :=
  match k with
  | 0 => nil
  | S k' => if (n mod k =? 0) 
            then k :: (get_divisors n k')
            else get_divisors n k'
  end.

Definition divisors (n: nat) := get_divisors n n.

Theorem mathd_numbertheory_451:
  forall (S: list nat),
  NoDup S ->
  (forall n, In n S <-> 
    2010 <= n /\ n <= 2019 /\
    exists m, length (divisors m) = 4 /\
    fold_right plus 0 (divisors m) = n) ->
  fold_right plus 0 S = 2016.

Proof.
