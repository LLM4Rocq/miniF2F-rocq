Require Import Reals.
Require Import Coquelicot.Coquelicot.
Require Import QArith.
Require Import ZArith.
Require Import List.

Open Scope R_scope.

Theorem amc12a_2020_p25 :
  forall (a : Q) (S : list R),
    (forall x : R, In x S <-> 
      (IZR (Int_part x) * (x - IZR (Int_part x)) = Q2R a * Rpower x 2))
    -> NoDup S
    -> fold_left Rplus S 0 = 420
    -> (Z.pos (Qden a) + Qnum a = 929)%Z.


Proof.
