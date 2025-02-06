Require Import Nat.

Theorem mathd_numbertheory_521 :
  forall m n : nat,
    (exists k1, m = 2 * k1) ->  
    (exists k2, n = 2 * k2) ->  
    m - n = 2 ->               
    m * n = 288 ->            
    m = 18.                   

Proof.
