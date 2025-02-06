Require Import Reals.
Require Import ZArith.
Require Import List.
Require Import SetoidList.

Open Scope R_scope.

Theorem mathd_algebra_170:
  forall (S: list Z),
    NoDup S ->
    (forall n:Z, In n S <-> (Rabs (IZR n - 2) <= 5.6)%R) ->
    length S = 11%nat.

Proof.
