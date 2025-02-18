Require Import ZArith.
Require Import Lia.

Theorem amc12_2001_p21 :
  forall (a b c d : nat),
  a * b * c * d = fact 8 ->
  a * b + a + b = 524 ->
  b * c + b + c = 146 ->
  c * d + c + d = 104 ->
  Z.sub (Z.of_nat a) (Z.of_nat d) = 10%Z.

Proof.
