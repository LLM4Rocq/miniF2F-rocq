Require Import QArith.
Require Import Nat.

Theorem amc12a_2019_p9 :
  forall (a : nat -> Q),
    a (1%nat) = 1%Q ->
    a (2%nat) = (3#7)%Q ->
    (forall n : nat, a (S (S n)) = 
      Qdiv (Qmult (a n) (a (S n)))
           (Qminus (Qmult (2#1)%Q (a n)) (a (S n)))) ->
    Z.add (Qnum (a (2019%nat))) (Z.pos (Qden (a (2019%nat)))) = 8078%Z.

Proof.
