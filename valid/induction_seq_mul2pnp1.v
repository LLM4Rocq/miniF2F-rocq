Require Import Nat.

Theorem induction_seq_mul2pnp1 :
  forall n : nat,
  forall u : nat -> nat,
  (u 0 = 0) ->
  (forall n, u (n + 1) = 2 * u n + (n + 1)) ->
  (u n = 2 ^ (n + 1) - (n + 2)).
Proof.
Admitted.