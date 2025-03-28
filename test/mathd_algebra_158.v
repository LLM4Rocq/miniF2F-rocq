Require Import NArith.
Require Import List.
Import ListNotations.

Theorem mathd_algebra_158 a :
   list_sum (map (fun k => 2 * k + 1) (seq 0 8)) -
   list_sum (map (fun k => a + 2 * k) (seq 0 5)) = 4 ->
  a = 8.
Proof.
Admitted.
