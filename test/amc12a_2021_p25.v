Require Import Arith.
Require Import List.
Require Import Reals.

Open Scope R_scope.

Definition divisors (n : nat) : list nat :=
  filter (fun d => n mod d =? 0) (seq 1 n).

Fixpoint fueled_sum_digits (fuel n : nat) : nat :=
  match fuel with
  | 0 => 0
  | S fuel' =>
    if n mod 10 =? n then n else n mod 10 + fueled_sum_digits fuel' (n / 10)
  end.

Definition sum_digits n := fueled_sum_digits (S n) n.

Theorem amc12a_2021_p25 :
  forall (N : nat) (f : nat -> R),
  (forall n, (0 < n)%nat ->
    f n = INR (length (divisors n)) / Rpower (INR n) (1 / 3)) ->
  (forall n, n <> N -> f n < f N) ->
  (sum_digits N = 9)%nat.
Proof.
