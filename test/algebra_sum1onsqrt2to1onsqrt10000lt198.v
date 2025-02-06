Require Import Coq.Reals.Reals.
Open Scope R_scope.



Theorem algebra_sum1onsqrt2to1onsqrt10000lt198 :
  sum_f_R0 (fun i => 1 / sqrt (INR (i + 2))) 9998 < 198.

Proof.
