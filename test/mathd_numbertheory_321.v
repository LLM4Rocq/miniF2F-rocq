Require Import ZArith.
Open Scope Z_scope.

Theorem mathd_numbertheory_321:
  forall n : Z,
  (1 <= n <= 1399) /\ (n * 160 mod 1399 = 1) ->
  n = 1058.
Proof.
Admitted.