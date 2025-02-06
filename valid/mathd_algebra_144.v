Require Import Arith.PeanoNat.

Theorem mathd_algebra_144
  (a b c d : nat)
  (h0 : 0 < a) (h1 : 0 < b) (h2 : 0 < c) (h3 : 0 < d)
  (h4 : c - b = d)
  (h5 : b - a = d)
  (h6 : a + b + c = 60)
  (h7 : a + b > c) :
  d < 10.
Proof.
Admitted.