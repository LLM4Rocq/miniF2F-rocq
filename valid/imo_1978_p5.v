Require Import Reals.
Require Import Nat.
Require Import Lra.

Open Scope R_scope.

Theorem imo_1978_p5 :
  forall (n : nat) (f : nat -> nat),
    (forall x y, f x = f y -> x = y) ->  
    f O = O ->
    (0 < n)%nat ->
    sum_f_R0 (fun k => 1 / INR (S k)) (pred n) <= 
    sum_f_R0 (fun k => INR (f (S k)) / (INR (S k) * INR (S k))) (pred n).

Proof.
