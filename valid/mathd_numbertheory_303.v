Require Import Nat.
Require Import List.
Import ListNotations.



Theorem mathd_numbertheory_303 (S : list nat)
  (H : forall n, In n S <-> 2 <= n
                         /\ (171 mod n = 80 mod n)
                         /\ (468 mod n = 13 mod n)):
  fold_left plus S 0 = 111.

Proof.
