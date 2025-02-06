Require Import Nat.
Require Import ZArith.
From Coq Require Import Znumtheory.

Open Scope Z_scope.

Theorem mathd_numbertheory_293 :
  forall n : Z,
  (0 <= n <= 9)%Z ->
  exists k : Z, (20 * 100 + 10 * n + 7 = 11 * k)%Z ->
  n = 5.

Proof.
