Require Import Coq.Reals.Reals.
Open Scope R_scope.

Theorem imo_1965_p1 :
  forall (x : R),
    0 <= x ->
    x <= 2 * PI ->
    2 * cos x <= Rabs (sqrt (1 + sin (2 * x)) - sqrt (1 - sin (2 * x))) ->
    Rabs (sqrt (1 + sin (2 * x)) - sqrt (1 - sin (2 * x))) <= sqrt 2 ->
    PI / 4 <= x /\ x <= 7 * PI / 4.

Proof.
