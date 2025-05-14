Require Import Reals.
Require Import Coquelicot.Coquelicot.
Require Import Lia.

Open Scope R_scope.

Definition degree (x : R) : R := (x * PI / 180).

Theorem aime_1997_p11 :
  forall x : R,
  x = (sum_n_m (fun n => cos (degree (INR n))) 1 44) /
      (sum_n_m (fun n => sin (degree (INR n))) 1 44) ->
  floor (100 * x) = 241%Z.

Proof.
