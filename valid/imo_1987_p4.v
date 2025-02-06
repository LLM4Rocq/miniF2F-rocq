Require Import Arith.

Theorem imo_1987_p4 (f : nat -> nat) : 
  exists n, f (f n) <> n + 1987.
Proof.
Admitted.