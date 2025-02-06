Require Import Arith.
Require Import List.
Import ListNotations.

Definition condition (p1 : nat * (nat * (nat * nat))) : bool :=
  let '(A, p2) := p1 in let '(B, p3) := p2 in let '(C, D) := p3 in
  Nat.even A && Nat.even B && Nat.even C && Nat.even D &&
    ((1000 * A + 100 * B + 10 * C + D) mod 5 =? 0).

Theorem amc12a_2020_p4 :
  length (filter condition
    (list_prod (seq 1 9)
      (list_prod (seq 0 10)
        (list_prod (seq 0 10) (seq 0 10))))) = 100.
Proof.





