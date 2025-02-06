Require Import Coq.Reals.Reals.
Open Scope R_scope.


Fixpoint sum_1_to_n (f : nat -> R) (n : nat) : R :=
  match n with
  | O => 0
  | S n' => sum_1_to_n f n' + f (S n')
  end.

Theorem imo_1966_p4
  (n : nat)
  (x : R)
  (H0 : forall (k : nat), (0 < k)%nat -> forall (m : Z),
          x <> IZR m * PI / INR (2 ^ k))
  (H1 : (0 < n)%nat) :
  sum_1_to_n (fun k => 1 / sin (INR (2 ^ k) * x)) n
  = 1 / tan x - 1 / tan (INR (2 ^ n) * x).

Proof.
