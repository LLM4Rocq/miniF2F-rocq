Require Import Coq.Reals.Reals.
Open Scope R_scope.

Theorem algebra_apbon2pownleqapownpbpowon2 :
  forall (a b : R) (n : nat),
    0 < a ->
    0 < b ->
    (0 < n)%nat ->
    ((a + b) / 2)^n <= (a ^ n + b ^ n) / 2.

Proof.
