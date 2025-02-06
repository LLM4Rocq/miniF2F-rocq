Require Import Nat.
Require Import List.
Require Import Arith.

Theorem mathd_numbertheory_343:
  (fold_left mult (map (fun k => 2 * k + 1) (seq 0 6)) 1) mod 10 = 5.
Proof.
Admitted.