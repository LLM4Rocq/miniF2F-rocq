Require Import ZArith.
Require Import Znumtheory.
Require Import PArith.

Open Scope Z_scope.

Theorem numbertheory_2pownm1prime_nprime:
  forall n : Z,
    n > 0 ->
    prime (2^n - 1) ->
    prime n.

Proof.
