Require Import ZArith.
Open Scope Z_scope.

Theorem mathd_numbertheory_765:
  forall x : Z,
    x < 0 ->
    (24 * x mod 1199 = 15) ->
    x <= -449.
Proof.
Admitted.