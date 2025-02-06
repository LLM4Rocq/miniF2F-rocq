(* Step 1: Import necessary libraries.
   We need to perform finite summations over natural numbers.
   Coq's standard library provides the `List` module which can be used for summations.
   Alternatively, the `mathcomp` library offers more advanced features for finite sums.
   For simplicity, we'll use the `List` module here. *)

Require Import List.
Import ListNotations.
Require Import Arith.

(* Step 2: Define a function to compute the finite sum
   of a function over a range of natural numbers.
   We'll define `sum_f` which takes a function `f` and an upper bound `n`,
   and computes the sum of `f k` for `k` from `0` to `n - 1`. *)

Fixpoint sum_f (f : nat -> nat) (n : nat) : nat :=
  match n with
  | 0 => 0
  | S m => f m + sum_f f m
  end.

(* Step 3: State the theorem.
   The theorem `induction_sum2kp1npqsqm1` states that for any positive integer `n`,
   the sum of `2k + 3` for `k` from `0` to `n - 1` is equal to `(n + 1)^2 - 1`. *)

Theorem induction_sum2kp1npqsqm1 : forall n : nat,
  sum_f (fun k => 2 * k + 3) n = (n + 1) * (n + 1) - 1.
Proof.
Admitted.
