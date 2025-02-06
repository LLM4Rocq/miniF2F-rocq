Require Import Arith ZArith Znumtheory.

Theorem induction_11div10tonmn1ton:
  forall n : nat,
  Z.divide 11 (Z.pow 10 (Z.of_nat n) - Z.pow (-1) (Z.of_nat n)).
Proof.
Admitted.
