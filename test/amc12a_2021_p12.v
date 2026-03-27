From mathcomp Require Import all_ssreflect all_algebra.
Import GRing.Theory Num.Theory.
Open Scope ring_scope.
Set Implicit Arguments.
Unset Strict Implicit.

Definition amc_poly {F : nzRingType} (a b c d : F) : {poly F} :=
  'X^6 - 10%:R *: 'X^5 + a *: 'X^4 + b *: 'X^3 + c *: 'X^2 + d *: 'X + 16%:R%:P.

Definition is_pos_int {F : nzRingType} (x : F) : Prop :=
  exists n : nat, (n > 0)%N /\ x = n%:R.

Theorem amc12a_2021_p12 (F : numClosedFieldType) (a b c d : F)
  (h1 : forall x : F, root (amc_poly a b c d) x -> is_pos_int x) :
  b = -(88%:R).
Proof.
Admitted.
