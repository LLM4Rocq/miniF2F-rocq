Require Import Reals.
Open Scope R_scope.

Theorem amc12a_2013_p8:
  forall x y: R,
  x <> 0 ->
  y <> 0 ->
  x <> y ->
  x + 2 / x = y + 2 / y ->
  x * y = 2.
Proof.
Admitted.