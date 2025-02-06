Require Import Reals.
Require Import Nat.

Open Scope R_scope.

Theorem amc12a_2017_p7 :
  forall f : nat -> R,
    f 1%nat = 2 ->
    (forall n : nat, (1 < n)%nat /\ Nat.even n = true -> f n = f (n - 1)%nat + 1) ->
    (forall n : nat, (1 < n)%nat /\ Nat.odd n = true -> f n = f (n - 2)%nat + 2) ->
    f (2017%nat) = 2018.

Proof.
