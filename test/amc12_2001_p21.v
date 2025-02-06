Require Import Nat.
Require Import ZArith.
Require Import Lia.

Open Scope nat_scope.

Theorem amc12_2001_p21 :
  forall (a b c d : nat),
  (a * b * c * d = 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1)%nat ->
  (a * b + a + b = 524)%nat ->
  (b * c + b + c = 146)%nat ->
  (c * d + c + d = 104)%nat ->
  Z.sub (Z.of_nat a) (Z.of_nat d) = 10%Z.

Proof.
