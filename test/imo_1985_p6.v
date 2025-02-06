Require Import Reals.
Open Scope R_scope.

Theorem imo_1985_p6 :
  forall (f : nat -> R -> R),
  (forall x : R, f 1%nat x = x) ->
  (forall (x : R) (n : nat), f (S n) x = f n x * (f n x + /INR n)) ->
  exists! a : R, forall n : nat,
    (0 < INR n)%R ->
    0 < f n a /\ f n a < f (S n) a /\ f (S n) a < 1.

Proof.
