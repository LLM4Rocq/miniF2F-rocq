Require Import Coq.Arith.Arith.

Theorem amc12_2001_p2 (a b n : nat) :
  (1 <= a <= 9) -> (0 <= b <= 9) -> (n = 10 * a + b) -> (n = a * b + a + b) -> 
  (b = 9).
Proof.
Admitted.