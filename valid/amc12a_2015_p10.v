Require Import Nat.

Theorem amc12a_2015_p10
  (x y : nat)
  (h0 : (0 < y)%nat)
  (h1 : (y < x)%nat)
  (h2 : (x + y + x * y = 80)%nat) :
  x = 26%nat.

Proof.
