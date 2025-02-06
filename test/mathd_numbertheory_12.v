Require Import Nat.
Require Import List.
Require Import ZArith.

Open Scope nat_scope.

Theorem mathd_numbertheory_12:
  length (filter (fun x => Nat.modulo x 20 =? 0) (seq 15 (86-15))) = 4.

Proof.
