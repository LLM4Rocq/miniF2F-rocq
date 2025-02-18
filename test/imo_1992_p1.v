Require Import ZArith.
Open Scope Z_scope.

Theorem imo_1992_p1 :
  forall p q r : Z,
  1 < p -> p < q -> q < r ->
  ((p - 1) * (q - 1) * (r - 1) | p * q * r - 1) ->
  (p, q, r) = (2, 4, 8) \/ (p, q, r) = (3, 5, 15).
Proof.
Admitted.
