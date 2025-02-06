Require Import ZArith.
Open Scope Z_scope.

Theorem numbertheory_notequiv2i2jasqbsqdiv8:
  ~ (forall a b : Z, 
    (exists i j : Z, a = 2 * i /\ b = 2 * j) <-> 
    (exists k : Z, a ^ 2 + b ^ 2 = 8 * k)).
Proof.
Admitted.