Require Import Reals.
Require Import Rfunctions.
Require Import Sets.Ensembles.
Require Import Sets.Finite_sets.
Require Import ZArith.

Open Scope R_scope.

Theorem amc12b_2020_p21:
  let S := fun n:nat => 
    (0 < n)%nat /\ 
    exists k:Z, 
      (IZR k = (INR n + 1000) / 70) /\
      k = Z.of_nat (Z.to_nat (up (sqrt (INR n)) - 1)) in
  Finite nat S /\ cardinal nat S 6.

Proof.
