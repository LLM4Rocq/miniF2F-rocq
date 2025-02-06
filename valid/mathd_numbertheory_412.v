Require Import Nat.
Require Import ZArith.
Open Scope nat_scope.

Theorem mathd_numbertheory_412 :
  forall (x y : nat),
  (x mod 19 = 4) ->
  (y mod 19 = 7) ->
  ((x + 1)^2 * (y + 5)^3) mod 19 = 13.
Proof.
Admitted.