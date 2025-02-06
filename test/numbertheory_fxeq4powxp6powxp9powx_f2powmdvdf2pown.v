Require Import Nat.
Require Import Arith.

Theorem numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown :
  forall (m n : nat) (f : nat -> nat),
  (forall x, f x = 4^x + 6^x + 9^x) ->
  (0 < m /\ 0 < n) ->
  m <= n ->
  exists k, f (2^n) = k * f (2^m).
Proof.
Admitted.