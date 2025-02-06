Require Import Arith.

Theorem amc12_2000_p1 :
  forall (i m o : nat),
  i <> m /\ m <> o /\ o <> i /\ (i * m * o = 2001) -> 
  i + m + o <= 671.
Proof.
Admitted.