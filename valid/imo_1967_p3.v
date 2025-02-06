Require Import Nat.
Require Import Arith.


Definition is_prime (p : nat) := 
  p > 1 /\ forall n, 1 < n < p -> ~(exists k, n * k = p).


Fixpoint prod_from_1_to (f : nat -> nat) (n : nat) : nat :=
  match n with
  | 0 => 1
  | S m => (prod_from_1_to f m) * (f (S m))
  end.


Theorem imo_1967_p3 :
  forall (k m n : nat) (c : nat -> nat),
    0 < k /\ 0 < m /\ 0 < n ->
    (forall s, c s = s * (s + 1)) ->
    is_prime (k + m + 1) ->
    n + 1 < k + m + 1 ->
    exists d : nat,
      prod_from_1_to c n * d = prod_from_1_to (fun i => c (m + i) - c k) n.

Proof.
