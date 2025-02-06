Require Import Arith.

Theorem induction_nfactltnexpnm1ngt3:
  forall (n : nat),
    3 <= n ->
    fact n < n^(n - 1).
Proof.
Admitted.