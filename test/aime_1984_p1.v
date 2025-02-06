Require Import Reals.

Open Scope R_scope.

Theorem aime_1984_p1 :
  forall (u : nat -> R),
  (forall n, u (n + 1)%nat = u n + 1) ->
  sum_f_R0 (fun k => u (k + 1)%nat) 97 = 137 ->
  sum_f_R0 (fun k => u (2 * (k + 1))%nat) 48 = 93.
Proof.
