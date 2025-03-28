Require Import Nat.
Require Import List.

Definition has_three_divisors (n : nat) : bool :=
  length (filter (fun d => n mod d =? 0) (seq 1 n)) =? 3.

Theorem mathd_numbertheory_221:
  length (filter has_three_divisors (seq 1 999)) = 11.
Proof.
Admitted.
