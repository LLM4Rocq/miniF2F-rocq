Require Import Reals.

Open Scope R_scope.

Theorem amc12a_2008_p25 :
  forall (a b : nat -> R),
  (forall n, a (S n) = (sqrt (IZR 3)) * (a n) - (b n)) ->
  (forall n, b (S n) = (sqrt (IZR 3)) * (b n) + (a n)) ->
  a (100%nat) = 2%R ->
  b (100%nat) = 4%R ->
  a 1%nat + b 1%nat = 1 / (2^98)%R.

Proof.
