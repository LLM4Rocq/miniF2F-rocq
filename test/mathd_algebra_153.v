Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_153 :
  forall n : R,
  n = 1/3 ->
  IZR (Int_part (10 * n)) + IZR (Int_part (100 * n)) + 
  IZR (Int_part (1000 * n)) + IZR (Int_part (10000 * n)) = 3702.

Proof.
