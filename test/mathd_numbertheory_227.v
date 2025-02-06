Require Import Coq.Reals.Reals.
Open Scope R_scope.



Theorem mathd_numbertheory_227:
  forall (x y n : nat),
    x <> 0%nat ->
    y <> 0%nat ->
    n <> 0%nat ->
    (INR x / 4 + INR y / 6 = (INR x + INR y) / INR n) ->
    n = 5%nat.

Proof.
