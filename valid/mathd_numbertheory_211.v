Require Import List.
Import ListNotations.
Require Import Arith.

Theorem mathd_numbertheory_211 :
  length (filter (fun n => (4 * n - 2) mod 6 =? 0) (List.seq 1 59)) = 20.

Proof.
