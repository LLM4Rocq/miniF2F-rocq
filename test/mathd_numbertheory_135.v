Require Import Nat.
Require Import List.
Import ListNotations.

Theorem mathd_numbertheory_135 
  (n A B C : nat)
  (H0 : n = 3^17 + 3^10)
  (H1 : exists k, n + 1 = 11 * k)
  (H2 : A <> B /\ B <> C /\ A <> C)
  (H3 : A <= 9 /\ B <= 9 /\ C <= 9)
  (H4 : Nat.odd A = true /\ Nat.odd C = true)
  (H5 : ~(exists k, B = 3 * k))
  (H6 : n = B * 10^8 + A * 10^7 + B * 10^6 + C * 10^5 + C * 10^4 + 
          A * 10^3 + C * 10^2 + B * 10 + A) :
  100 * A + 10 * B + C = 129.

Proof.
