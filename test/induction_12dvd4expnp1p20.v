Require Import Arith.

Theorem induction_12dvd4expnp1p20 :
  forall n : nat, exists k : nat, 4^(n+1) + 20 = 12 * k.

Proof.
