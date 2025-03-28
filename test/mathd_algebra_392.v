Require Import Arith.
Require Import Lia.

Theorem mathd_algebra_392 :
  forall (n : nat),
    Nat.even n = true ->
    n^2 + (n + 2)^2 + (n + 4)^2 = 12296 ->
    (n * (n + 2) * (n + 4)) / 8 = 32736.
Proof.
Admitted.
