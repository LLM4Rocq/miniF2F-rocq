Require Import ZArith.
Require Import Lia.

Open Scope Z_scope.

Theorem mathd_numbertheory_320 :
  forall (n : Z),
    (0 <= n < 101)%Z ->
    (exists k : Z, 123456 - n = k * 101)%Z ->
    n = 34.

Proof.
