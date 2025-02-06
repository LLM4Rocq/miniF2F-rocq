Require Import Arith.

Theorem imo_1964_p1_1 :
  forall n : nat,
  (Nat.divide 7 (2^n - 1)) -> (Nat.divide 3 n).

Proof.
