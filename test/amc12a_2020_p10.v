Require Import Reals.
Require Import Coquelicot.Coquelicot.
Require Import ZArith.
Require Import List.
Require Import Nat.

Open Scope R_scope.

Definition log_base (b x : R) : R := ln x / ln b.

Fixpoint sum_digits_aux (fuel n acc: nat) {struct fuel} : nat :=
  match fuel with
  | 0 => acc
  | S fuel' => match n with
               | 0 => acc
               | _ => sum_digits_aux fuel' (n / 10) (acc + (n mod 10))
               end
  end.

Definition sum_digits (n: nat) : nat := sum_digits_aux (S n) n 0.

Theorem amc12a_2020_p10 :
  exists! n : nat,
  (n > 0)%nat /\
  log_base 2 (log_base 16 (INR n)) = log_base 4 (log_base 4 (INR n)) /\
  sum_digits n = (13%nat).


Proof.
