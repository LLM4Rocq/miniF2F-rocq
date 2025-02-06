Require Import Nat.
Require Import Arith.

Definition is_greatest (P : nat -> Prop) (n : nat) : Prop :=
  P n /\ (forall m, P m -> m <= n).

Theorem mathd_numbertheory_43 :
  is_greatest (fun n => exists k, k * (15^n) = fact 942) 233.

Proof.
