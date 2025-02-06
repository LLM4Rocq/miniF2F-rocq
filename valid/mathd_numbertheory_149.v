Require Import List.
Require Import Nat.
Require Import PArith.
Require Import Bool.
Import ListNotations.

Theorem mathd_numbertheory_149:
  fold_left plus
    (filter (fun x => andb (Nat.eqb (x mod 8) 5) (Nat.eqb (x mod 6) 3))
           (seq 0 50))
    0 = 66.

Proof.
