Require Import List.
Require Import Reals.
Require Import Coquelicot.Coquelicot.

Open Scope C_scope.

Theorem amc12a_2009_p15 :
  forall (n : nat), (0 < n)%nat ->
  fold_left Cplus (map (fun k => INR k * Ci ^ k) (seq 1 n)) 0
    = 48 + 49 * Ci ->
  (n = 97)%nat.
Proof.
