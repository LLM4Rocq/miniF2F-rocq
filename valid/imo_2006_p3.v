Require Import Reals.
Open Scope R_scope.

Theorem imo_2006_p3 (a b c : R) :
  (a * b * (a^2 - b^2)) + (b * c * (b^2 - c^2)) + (c * a * (c^2 - a^2)) <= (9 * sqrt 2) / 32 * (a^2 + b^2 + c^2)^2.
Proof.
Admitted.