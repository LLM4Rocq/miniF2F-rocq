Require Import Reals.
Open Scope R_scope.

Theorem imo_1965_p2
  (x y z : R)
  (a : nat -> R)
  (H0 : (0 < a O)%R /\ (0 < a 4%nat)%R /\ (0 < a 8%nat)%R)
  (H1 : (a 1%nat < 0)%R /\ (a 2%nat < 0)%R)
  (H2 : (a 3%nat < 0)%R /\ (a 5%nat < 0)%R)
  (H3 : (a 6%nat < 0)%R /\ (a 7%nat < 0)%R)
  (H4 : (0 < a O + a 1%nat + a 2%nat)%R)
  (H5 : (0 < a 3%nat + a 4%nat + a 5%nat)%R)
  (H6 : (0 < a 6%nat + a 7%nat + a 8%nat)%R)
  (H7 : (a O * x + a 1%nat * y + a 2%nat * z = 0)%R)
  (H8 : (a 3%nat * x + a 4%nat * y + a 5%nat * z = 0)%R)
  (H9 : (a 6%nat * x + a 7%nat * y + a 8%nat * z = 0)%R) :
  (x = 0 /\ y = 0 /\ z = 0)%R.

Proof.
