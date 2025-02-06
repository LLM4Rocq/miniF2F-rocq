Require Import Coq.Arith.Arith.
Require Import Coq.Arith.PeanoNat.
Require Import Coq.Init.Nat.
Require Import Coq.ZArith.BinInt.

Theorem induction_ineq_nsqlefactn :
  forall n : nat,
  4 <= n ->
  n^2 <= fact n.
Proof.
Admitted.