Require Import Nat.
Require Import List.

Open Scope nat_scope.

Theorem mathd_numbertheory_12:
  length (filter (fun x => x mod 20 =? 0) (seq 15 (86-15))) = 4.
Proof.
Admitted.
