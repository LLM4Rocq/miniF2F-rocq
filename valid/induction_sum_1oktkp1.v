Require Import Coq.Reals.Reals.
Open Scope R_scope.



Theorem induction_sum_1oktkp1 :
  forall (n : nat),
    (sum_f_R0 (fun k => / (INR (k + 1) * INR (k + 2))) (n - 1)) = (INR n) / (INR n + 1).

Proof.
