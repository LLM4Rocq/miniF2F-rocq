Require Import Coq.Arith.Arith.
Require Import Coq.ZArith.ZArith.
Open Scope nat_scope.

Theorem mathd_numbertheory_296:
  forall n : nat,
  2 <= n ->
  exists x, x^3 = n ->
  exists t, t^4 = n ->
  4096 <= n.
Proof.
Admitted.