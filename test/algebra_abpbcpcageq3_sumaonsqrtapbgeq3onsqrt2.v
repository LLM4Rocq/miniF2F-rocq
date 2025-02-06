Require Import Reals.
Open Scope R_scope.

Theorem algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2:
  forall a b c : R,
  0 < a -> 0 < b -> 0 < c -> 
  3 <= a * b + b * c + c * a ->
  3 / sqrt 2 <= a / sqrt (a + b) + b / sqrt (b + c) + c / sqrt (c + a).
Proof.
Admitted.