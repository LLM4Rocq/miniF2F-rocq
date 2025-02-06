











Require Import Coq.Lists.List.
Import ListNotations.


Fixpoint sum_f (f : nat -> nat) (n : nat) : nat :=
  match n with
  | 0 => 0
  | S n' => sum_f f n' + f n'
  end.

Theorem amc12a_2003_p1:
  forall (u v : nat -> nat),
    (forall n, u n = 2 * n + 2) ->
    (forall n, v n = 2 * n + 1) ->
    sum_f u 2003 - sum_f v 2003 = 2003.

Proof.
