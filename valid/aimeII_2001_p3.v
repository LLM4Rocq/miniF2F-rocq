Require Import ZArith.
Require Import Nat.

Theorem aimeII_2001_p3 :
  forall (x : nat -> Z),
    x 1%nat = 211%Z ->
    x 2%nat = 375%Z ->
    x 3%nat = 420%Z ->
    x 4%nat = 523%Z ->
    (forall n : nat, (n >= 5)%nat -> 
      x n = (x (n - 1)%nat - x (n - 2)%nat + x (n - 3)%nat - x (n - 4)%nat)%Z) ->
    (x 531%nat + x 753%nat + x 975%nat)%Z = 898%Z.

Proof.
