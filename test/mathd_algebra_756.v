Require Import Reals.

Theorem mathd_algebra_756 :
  forall (a b : R),
  Rpower 2 a = IZR 32 ->
  Rpower a b = IZR 125 ->
  Rpower b a = IZR 243.

Proof.
