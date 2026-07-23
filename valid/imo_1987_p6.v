Require Import List.
Require Import Znumtheory.
Require Import ZArith.
Require Import Reals.
Require Import Lia.

Open Scope nat_scope.

Definition f (p k : nat) : nat := k ^ 2 + k + p.

Theorem imo_1987_p6 :
  forall (p : nat), 2 <= p ->
  (forall k, (INR k <= sqrt (INR p / 3))%R ->
    prime (Z.of_nat (f p k))) ->
  forall k, k <= p - 2 -> prime (Z.of_nat (f p k)).
Proof.
