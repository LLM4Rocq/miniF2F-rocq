Require Import Reals.
Require Import ZArith.
Open Scope R_scope.

Theorem amc12a_2020_p13 :
  forall (a b c : nat) (n : R),
    n <> 1 ->
    (1 < a)%nat /\ (1 < b)%nat /\ (1 < c)%nat ->
    Rpower (n * Rpower (n * Rpower n (/ INR c)) (/ INR b)) (/ INR a) = Rpower n (25/36) ->
    b = 3%nat.

Proof.
