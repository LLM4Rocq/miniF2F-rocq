Require Import Reals.
Require Import QArith.QArith.
Require Import Lia.
Require Import ZArith.

Theorem aimeII_2020_p6 :
  forall t : nat -> Q,
  t 1%nat = 20#1 ->  
  t 2%nat = 21#1 ->
  (forall n : nat, (n >= 3)%nat -> 
    t n = Qdiv (Qplus (Qmult (inject_Z 5) (t (n-1)%nat)) (inject_Z 1)) 
              (Qmult (inject_Z 25) (t (n-2)%nat))) ->
  Z.add (Qnum (t 2020%nat)) (Z.pos (Qden (t 2020%nat))) = Z.of_nat 626.

Proof.
