Require Import List.
Require Import Znumtheory.
Require Import ZArith.
Require Import Reals.
Require Import Lia.

Open Scope nat_scope.

Theorem imo_1987_p6 :
  forall (n : nat), 2 <= n ->
  (forall k, (2 <= INR k <= sqrt (INR n / 3))%R ->
    prime (Z.of_nat (k ^ 2 + k + n))) ->
  forall k, k <= n - 2 -> prime (Z.of_nat (k ^ 2 + k + n)).
Proof.
