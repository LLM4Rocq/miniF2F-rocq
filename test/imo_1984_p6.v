Require Import Arith.

Theorem imo_1984_p6
  (a b c d k m : nat)
  (H0 : 0 < a /\ 0 < b /\ 0 < c /\ 0 < d)
  (H1 : Nat.Odd a /\ Nat.Odd b /\ Nat.Odd c /\ Nat.Odd d)
  (H2 : a < b /\ b < c /\ c < d)
  (H3 : a * d = b * c)
  (H4 : a + d = 2 ^ k)
  (H5 : b + c = 2 ^ m) :
  a = 1.

Proof.
