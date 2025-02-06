Require Import Reals.
Open Scope R_scope.

Theorem amc12_2000_p11 :
  forall a b : R,
  a <> 0 -> b <> 0 ->
  a * b = a - b ->
  a / b + b / a - a * b = 2.
Proof.
Admitted.