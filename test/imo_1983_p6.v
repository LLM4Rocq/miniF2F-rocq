Require Import Reals.
Open Scope R_scope.

Theorem imo_1983_p6 : 
  forall (a b c : R),
  (0 < a /\ 0 < b /\ 0 < c) ->
  c < a + b ->
  b < a + c ->
  a < b + c ->
  0 <= a^2 * b * (a - b) + b^2 * c * (b - c) + c^2 * a * (c - a).
Proof.
Admitted.