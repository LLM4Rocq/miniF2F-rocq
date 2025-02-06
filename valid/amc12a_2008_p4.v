Require Import Coq.Reals.Reals.
Open Scope R_scope.


Fixpoint Rprod (n : nat) (f : nat -> R) : R :=
  match n with
  | 0 => 1
  | S n' => Rprod n' f * f n
  end.



Theorem amc12a_2008_p4:
  Rprod 501 (fun k => (4 * INR k + 4) / (4 * INR k)) = 502.

Proof.
