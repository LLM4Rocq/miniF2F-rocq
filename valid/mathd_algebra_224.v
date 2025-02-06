Require Import Reals.
Require Import Finite_sets.
Require Import Finite_sets_facts.
Require Import Ensembles.

Open Scope R_scope.

Definition satisfies_condition (n : nat) : Prop :=
  (2 < sqrt (INR n))%R /\ (sqrt (INR n) < 7/2)%R.

Theorem mathd_algebra_224:
  cardinal nat (fun n => satisfies_condition n) 8.

Proof.
