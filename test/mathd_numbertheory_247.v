Require Import ZArith.
Open Scope Z_scope.

Theorem mathd_numbertheory_247 : forall n : Z,
  (3 * n) mod 11 = 2 -> n mod 11 = 8.
Proof.
Admitted.