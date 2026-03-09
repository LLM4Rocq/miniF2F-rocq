Require Import ZArith.
Open Scope Z_scope.

Theorem mathd_numbertheory_780 :
  forall m x : Z,
    10 <= m ->
    m <= 99 ->
    (6 * x) mod m = 1 ->
    (x - 36) mod m = 0 ->
    m = 43.
Proof.
Admitted.