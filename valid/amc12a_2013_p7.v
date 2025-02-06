Require Import Reals.
Open Scope R_scope.

Theorem amc12a_2013_p7 
  (s : nat -> R)
  (h0 : forall n : nat, s (S (S n)) = s (S n) + s n)
  (h1 : s 9%nat = 110)
  (h2 : s 7%nat = 42) :
  s 4%nat = 10.

Proof.
