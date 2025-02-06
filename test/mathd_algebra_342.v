Require Import Coq.Reals.Reals.
Open Scope R_scope.


Fixpoint sum_f_R0 (f : nat -> R) (n : nat) : R :=
  match n with
  | O => 0
  | S n' => sum_f_R0 f n' + f n'
  end.

Theorem mathd_algebra_342 :
  forall (a d : R),
    sum_f_R0 (fun k => a + INR k * d) 5 = 70 ->
    sum_f_R0 (fun k => a + INR k * d) 10 = 210 ->
    a = 42 / 5.

Proof.
