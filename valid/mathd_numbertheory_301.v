Require Import Arith.
Require Import ZArith.

Open Scope nat_scope.

Theorem mathd_numbertheory_301:
  forall j : nat,
  j > 0 ->
  (3 * (7 * j + 3)) mod 7 = 2.
Proof.
Admitted.