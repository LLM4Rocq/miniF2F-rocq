Require Import Nat.

Theorem amc12a_2003_p5 :
  forall (A M C : nat),
  (A <= 9 /\ M <= 9 /\ C <= 9) ->
  (10000 * A + 1000 * M + 100 * C + 10 * 1 + 0) + 
  (10000 * A + 1000 * M + 100 * C + 10 * 1 + 2) = 123422 ->
  A + M + C = 14.
Proof.
Admitted.