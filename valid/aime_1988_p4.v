Require Import Reals.
Open Scope R_scope.

Theorem aime_1988_p4 :
  forall (n : nat) (a : nat -> R),
  (forall k, (k < n)%nat -> Rabs (a k) < 1) ->
  sum_f_R0 (fun k => Rabs (a k)) (pred n) = 19 + Rabs (sum_f_R0 (fun k => a k) (pred n)) ->
  (20 <= n)%nat.

Proof.
