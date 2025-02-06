Require Import Arith.

Theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2:
  forall n : nat, 0 < n ->
  (3^(2^n) - 1) mod (2^(n + 3)) = 2^(n + 2).
Proof.
Admitted.