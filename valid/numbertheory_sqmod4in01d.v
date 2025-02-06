Require Import ZArith.
Open Scope Z_scope.

Theorem numbertheory_sqmod4in01d :
  forall a : Z, (a^2 mod 4 = 0) \/ (a^2 mod 4 = 1).
Proof.
Admitted.