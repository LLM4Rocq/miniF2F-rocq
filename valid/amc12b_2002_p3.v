Require Import Nat.
Require Import ZArith.
Require Import Znumtheory.

Theorem amc12b_2002_p3 :
  forall (n : Z),
  (n > 0)%Z -> 
  prime (n * n - 3 * n + 2)%Z ->
  n = 3%Z.

Proof.
