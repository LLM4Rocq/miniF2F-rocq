Require Import ZArith.
Open Scope Z_scope.

Theorem numbertheory_sqmod3in01d (a : Z) :
  (a^2 mod 3 = 0) \/ (a^2 mod 3 = 1).
Proof.
Admitted.