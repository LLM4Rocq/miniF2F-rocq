Require Import Reals.
Require Import Arith.

Open Scope R_scope.

Theorem algebra_ineq_nto1onlt2m1on :
  forall n : nat,
  (n >= 1)%nat ->
  Rpower (INR n) (1 / INR n) < 2 - 1 / INR n.

Proof.
