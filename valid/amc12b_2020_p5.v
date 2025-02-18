Require Import Nat.

Theorem amc12b_2020_p5 :
  forall (ap bp aw al bw bl : nat),
  ap = aw + al -> (* no draws *)
  bp = bw + bl ->
  3* aw = 2 * ap ->
  8* bw = 5 * bp ->
  aw = 7+bw ->
  al = 7+bl ->
  ap = 42.
Proof.
Admitted.
