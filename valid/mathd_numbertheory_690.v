Require Import Coq.Arith.Arith.

Theorem mathd_numbertheory_690 :
  314 mod 3 = 2 /\
  314 mod 5 = 4 /\
  314 mod 7 = 6 /\
  314 mod 9 = 8 /\
  (forall n : nat,
    n mod 3 = 2 /\
    n mod 5 = 4 /\
    n mod 7 = 6 /\
    n mod 9 = 8 ->
    314 <= n).

Proof.
