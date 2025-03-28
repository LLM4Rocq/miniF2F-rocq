Require Import Arith.
Require Import List.
Import ListNotations.

Theorem mathd_numbertheory_109 :
  forall (v : nat -> nat),
    (forall n, v n = 2 * n - 1) ->
    (list_sum (map v (seq 1 100))) mod 7 = 4.
Proof.
Admitted.
