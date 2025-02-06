Require Import Reals.
Require Import Coquelicot.Coquelicot.
Require Import List.

Open Scope R_scope.

Theorem amc12b_2021_p21 (S : list R) :
  NoDup S ->
  (forall x : R, In x S <-> 
    (0 < x /\ Rpower x (Rpower 2 (sqrt 2)) = Rpower (sqrt 2) (Rpower 2 x))) ->
  2 <= fold_right Rplus 0 S /\ fold_right Rplus 0 S < 6.

Proof.
