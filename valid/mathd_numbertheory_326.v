(* 
Step 1: Define the theorem with parameter n : nat.

Step 2: Assume that (n - 1) * n * (n + 1) = 720.

Step 3: Show that n + 1 = 10.
*)

Theorem mathd_numbertheory_326 :
  forall n : nat,
    (n - 1) * n * (n + 1) = 720 ->
    n + 1 = 10.
Proof.
Admitted.