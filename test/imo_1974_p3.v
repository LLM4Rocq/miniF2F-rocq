Require Import Arith.
Require Import List.

Fixpoint binom (n k : nat) : nat :=
  match n, k with
  | 0, 0 => 1
  | 0, S _ => 0
  | S _, 0 => 1
  | S n', S k' => binom n' k' + binom n' (S k')
  end.

Definition f (n k : nat) : nat := binom (2 * n + 1) (2 * k + 1) * 2 ^ (3 * k).

Theorem imo_1974_p3 :
  forall (n : nat),
  ~ Nat.divide 5 (fold_left plus (map (f n) (seq 0 (S n))) 0).
Proof.
