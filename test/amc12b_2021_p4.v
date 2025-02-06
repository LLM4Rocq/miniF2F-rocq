Require Import Coq.Reals.Reals.
Open Scope R_scope.

Theorem amc12b_2021_p4 :
  forall (m a : nat),
    (0 < m)%nat ->
    (0 < a)%nat ->
    INR m / INR a = 3 / 4 ->
    (84 * INR m + 70 * INR a) / (INR m + INR a) = 76.

Proof.
