Require Import QArith.
Require Import Reals.

Theorem numbertheory_xsqpysqintdenomeq:
  forall (x y : Q),
  Qden (x * x + y * y) = 1%positive ->
  Qden x = Qden y.
Proof.
Admitted.