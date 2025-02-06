Require Import Nat.
Require Import List.

Fixpoint divisors_aux (n k: nat) : list nat :=
  match k with
  | 0 => nil
  | S k' => if (n mod k =? 0) 
            then k :: (divisors_aux n k')
            else divisors_aux n k'
  end.

Definition divisors (n: nat) := divisors_aux n n.

Theorem mathd_numbertheory_543:
  (length (divisors (30 ^ 4))) - 2 = 123.

Proof.
