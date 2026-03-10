Require Import Arith.

Definition choose n k :=
  if k <=? n then fact n / (fact k * fact (n - k)) else 0.

Theorem numbertheory_nckeqnm1ckpnm1ckm1 :
  forall (n k : nat),
    0 < k <= n ->
    choose n k = choose (n-1) k + choose (n-1) (k-1).
Proof.
Admitted.
