Require Import Reals.
Open Scope R_scope.

Theorem imo_1966_p5 (x a : nat -> R)
  (H0 : a (S O) > a (S (S O)))
  (H1 : a (S (S O)) > a (S (S (S O))))
  (H2 : a (S (S (S O))) > a (S (S (S (S O)))))
  (H3 : Rabs (a (S O) - a (S (S O))) * x (S (S O)) +
        Rabs (a (S O) - a (S (S (S O)))) * x (S (S (S O))) +
        Rabs (a (S O) - a (S (S (S (S O))))) * x (S (S (S (S O)))) = R1)
  (H4 : Rabs (a (S (S O)) - a (S O)) * x (S O) +
        Rabs (a (S (S O)) - a (S (S (S O)))) * x (S (S (S O))) +
        Rabs (a (S (S O)) - a (S (S (S (S O))))) * x (S (S (S (S O)))) = R1)
  (H5 : Rabs (a (S (S (S O))) - a (S O)) * x (S O) +
        Rabs (a (S (S (S O))) - a (S (S O))) * x (S (S O)) +
        Rabs (a (S (S (S O))) - a (S (S (S (S O))))) * x (S (S (S (S O)))) = R1)
  (H6 : Rabs (a (S (S (S (S O)))) - a (S O)) * x (S O) +
        Rabs (a (S (S (S (S O)))) - a (S (S O))) * x (S (S O)) +
        Rabs (a (S (S (S (S O)))) - a (S (S (S O)))) * x (S (S (S O))) = R1) :
  x (S (S O)) = R0 /\
  x (S (S (S O))) = R0 /\
  x (S O) = R1 / Rabs (a (S O) - a (S (S (S (S O))))) /\
  x (S (S (S (S O)))) = R1 / Rabs (a (S O) - a (S (S (S (S O))))).
Proof.
Admitted.

Theorem imo_1966_p5':
  forall (m n : nat) (x a : nat -> R),
  (forall i j, a i = a j -> i = j) ->
  (Rabs (a 1%nat - a 2%nat) * x 2%nat + Rabs (a 1%nat - a 3%nat) * x 3%nat + Rabs (a 1%nat - a 4%nat) * x 4%nat = INR 1) ->
  (Rabs (a 2%nat - a 1%nat) * x 1%nat + Rabs (a 2%nat - a 3%nat) * x 3%nat + Rabs (a 2%nat - a 4%nat) * x 4%nat = INR 1) ->
  (Rabs (a 3%nat - a 1%nat) * x 1%nat + Rabs (a 3%nat - a 2%nat) * x 2%nat + Rabs (a 3%nat - a 4%nat) * x 4%nat = INR 1) ->
  (Rabs (a 4%nat - a 1%nat) * x 1%nat + Rabs (a 4%nat - a 2%nat) * x 2%nat + Rabs (a 4%nat - a 3%nat) * x 3%nat = INR 1) ->
  (1<= m <= 4 )%nat -> (1<= n <= 4)%nat -> (forall i : nat, a m >= a i) ->
  (forall i, a n <= a i) ->
  (x m = 1/ (a m - a n)) /\ (x n = x m) /\ (forall i : nat , (i<=4)%nat -> i <> m -> i <> n -> x i = R0).
Proof.
Admitted.
