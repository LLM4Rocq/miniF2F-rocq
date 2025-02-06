

Require Import Coq.Reals.Reals.
Open Scope R_scope.

Fixpoint prod_1_to_n (n : nat) : R :=
  match n with
  | 0 => 1
  | S k => prod_1_to_n k * (1 + / (2 ^ (S k)))
  end.

Theorem induction_pord1p1on2powklt5on2 :
  forall n : nat,
    (0 < n)%nat ->
    prod_1_to_n n < 5 / 2.

Proof.
