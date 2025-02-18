Require Import Bool.
Require Import Arith.
Require Import List.
Import ListNotations.

Definition condition '(a,b,c,d) : bool :=
  Nat.even a && Nat.even b && Nat.even c && Nat.even d &&
    ((1000 * a + 100 * b + 10 * c + d) mod 5 =? 0).

Theorem amc12a_2020_p4 :
  length (filter condition
    (list_prod
       (list_prod
          (list_prod (seq 1 9) (seq 0 10))
          (seq 0 10))
       (seq 0 10))) = 100.
Proof.
