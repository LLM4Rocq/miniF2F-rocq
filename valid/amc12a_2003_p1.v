Require Import Coq.Lists.List.
Import ListNotations.

Fixpoint sum_f (f : nat -> nat) (n : nat) : nat :=
  match n with
  | 0 => 0
  | S n' => sum_f f n' + f n'
  end.

Theorem amc12a_2003_p1:
    sum_f (fun n => 2*n+2) 2003 - sum_f (fun n => 2*n+1) 2003 = 2003.
Proof.
