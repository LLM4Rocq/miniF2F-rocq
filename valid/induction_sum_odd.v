Require Import Coq.Arith.Arith.

(* Helper function to compute the sum of f from 0 to n-1 *)
Fixpoint sum_n (f : nat -> nat) (n : nat) : nat :=
  match n with
  | 0 => 0
  | S m => f m + sum_n f m
  end.

Theorem induction_sum_odd : forall n : nat,
  n > 0 ->
  sum_n (fun k => 2 * k + 1) n = n * n.
Proof.
Admitted.
