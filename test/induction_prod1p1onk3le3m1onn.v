Require Import Coq.Reals.Reals.

Open Scope R_scope.



Fixpoint prod_1_to_n (f : nat -> R) (n : nat) : R :=
  match n with
  | O => 1
  | S p => prod_1_to_n f p * f (S p)
  end.



Theorem induction_prod1p1onk3le3m1onn :
  forall (n : nat),
    (n > 0)%nat ->
    prod_1_to_n (fun k => 1 + / (INR k ^ 3)) n <= 3 - / INR n.

Proof.
