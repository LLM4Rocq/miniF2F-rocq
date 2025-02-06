Require Import List.
Import ListNotations.
Require Import Arith.

Theorem mathd_numbertheory_24 :
  (fold_right plus 0 (map (fun k => 11 ^ k) (seq 1 9))) mod 100 = 59.
Proof.
Admitted.