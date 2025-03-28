Require Import Coq.Arith.Arith.

Theorem mathd_numbertheory_435 :
  forall (k : nat),
    0 < k ->
    (forall n : nat, Nat.gcd (6 * n + k) (6 * n + 3) = 1) ->
    (forall n : nat, Nat.gcd (6 * n + k) (6 * n + 2) = 1) ->
    (forall n : nat, Nat.gcd (6 * n + k) (6 * n + 1) = 1) ->
    5 <= k.
Proof.
Admitted.
