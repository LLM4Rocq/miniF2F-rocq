Require Import Nat.
Require Import List.
Import ListNotations.



Theorem mathd_numbertheory_303 (l : list nat)
  (H : forall n, In n l <-> 2 <= n
                         /\ (171 mod n = 80 mod n)
                         /\ (468 mod n = 13 mod n)):
  NoDup l ->
  list_sum l = 111.
Proof.
