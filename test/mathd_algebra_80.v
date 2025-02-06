From Coq Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_80:
  forall (x : R), x <> -1 -> (x - 9) / (x + 1) = 2 -> x = -11.
Proof.
Admitted.