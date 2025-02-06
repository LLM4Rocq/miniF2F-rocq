Require Import Coq.Arith.Arith.


Fixpoint sum_to (f : nat -> nat) (n : nat) :=
  match n with
  | 0 => 0
  | S p => sum_to f p + f p
  end.


Notation "∑ k < n , f" :=
  (sum_to (fun k => f) n)
  (at level 60, k ident, n at level 60, f at level 60).

Theorem induction_sumkexp3eqsumksq :
  forall n : nat,
    (∑ k < n, k^3) = (∑ k < n, k)^2.

Proof.
