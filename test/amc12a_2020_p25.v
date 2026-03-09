Require Import Reals.
Require Import List.

Open Scope R_scope.

Theorem amc12a_2020_p25 :
  forall (p q : nat), (0 < q)%nat -> Nat.gcd p q = 1%nat ->
  forall (S : list R),
    (forall x : R, In x S <->
      (0 < x /\ IZR (Int_part x) * (x - IZR (Int_part x)) = INR p / INR q * x^2))
    -> NoDup S
    -> fold_left Rplus S 0 = 420
    -> (p + q = 929)%nat.
Proof.
Admitted.
