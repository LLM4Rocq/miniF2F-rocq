Require Import ZArith.
Open Scope Z_scope.

Theorem imo_2019_p1 (f : Z -> Z) :
  ((forall a b, f (2 * a) + (2 * f b) = f (f (a + b))) <-> (forall z, f z = 0 \/ exists c, forall z, f z = 2 * z + c)).
Proof.
Admitted.