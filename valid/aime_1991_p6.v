Require Import Reals.
Require Import ZArith.
Require Import List.
Require Import Lia.

Open Scope R_scope.

Definition range_sum (r : R) := 
  fold_left Z.add
    (map (fun k => Int_part (r + IZR (Z.of_nat k) / 100))
         (seq 19 73))
    0%Z.

Theorem aime_1991_p6 :
  forall r : R,
  range_sum r = 546%Z ->
  Int_part (100 * r) = 743%Z.

Proof.
