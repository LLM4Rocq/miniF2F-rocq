Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_247 :
  forall (t s : R) (n : nat),
  t = 2 * s - s ^ 2 ->
  s = INR(n*n) - 2^(n) + 1 ->
  n = 3%nat ->
  t = 0.

Proof.
