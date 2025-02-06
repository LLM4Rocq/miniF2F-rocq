Require Import Reals.
Open Scope R_scope.

Theorem imo_1964_p2:
  forall (a b c : R),
    0 < a /\ 0 < b /\ 0 < c ->
    c < a + b ->
    b < a + c ->
    a < b + c ->
    a² * (b + c - a) + b² * (c + a - b) + c² * (a + b - c) <= 3 * a * b * c.
Proof.
Admitted.