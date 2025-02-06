Require Import Reals.
Require Import Coquelicot.Coquelicot.
Require Import Lia.

Open Scope R_scope.

Theorem aime_1997_p11 :
  forall x : R,
  x = (sum_n_m (fun n => cos (INR n * PI / 180)) 1 44) / 
      (sum_n_m (fun n => sin (INR n * PI / 180)) 1 44) ->
  floor (100 * x) = 241%Z.

Proof.
