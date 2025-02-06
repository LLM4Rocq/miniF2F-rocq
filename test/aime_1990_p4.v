Require Import Reals.
Open Scope R_scope.

Theorem aime_1990_p4:
  forall x : R,
  0 < x ->
  x^2 - 10*x - 29 <> 0 ->
  x^2 - 10*x - 45 <> 0 ->
  x^2 - 10*x - 69 <> 0 ->
  1/(x^2 - 10*x - 29) + 1/(x^2 - 10*x - 45) - 2/(x^2 - 10*x - 69) = 0 ->
  x = 13.
Proof.
Admitted.