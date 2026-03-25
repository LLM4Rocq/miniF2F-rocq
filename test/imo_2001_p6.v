Require Import ZArith.
Require Import Znumtheory.

Open Scope Z_scope.

Theorem imo_2001_p6 :
  forall (a b c d : Z),
    0 < a /\ 0 < b /\ 0 < c /\ 0 < d ->
    d < c ->
    c < b ->
    b < a ->
    a * c + b * d = (b + d + a - c) * (b + d - a + c) ->
    ~ prime (a * b + c * d).

Proof.
