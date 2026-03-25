Require Import ZArith.
Require Import Znumtheory.
Require Import PArith.
Require Import Arith.

Open Scope Z_scope.

Theorem numbertheory_2pownm1prime_nprime:
  forall n : nat,
    (0 < n)%nat ->
    prime (Z.of_nat (2^n - 1)) ->
    prime (Z.of_nat n).

Proof.
