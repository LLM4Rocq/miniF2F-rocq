Require Import Arith.
Require Import List.
Import ListNotations.

Theorem mathd_numbertheory_109 :
  forall (v : nat -> nat),
    (forall n, v n = 2 * n - 1) ->
    (fold_left plus (map v (seq 1 100)) 0) mod 7 = 4.
Proof.
Admitted.
