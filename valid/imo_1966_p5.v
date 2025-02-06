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
