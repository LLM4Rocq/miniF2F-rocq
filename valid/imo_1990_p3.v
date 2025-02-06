Require Import Nat.

Theorem imo_1990_p3 :
  forall n : nat,
  2 <= n ->
  (exists k, k * (n * n) = 2^n + 1) ->
  n = 3.
Proof.
Admitted.