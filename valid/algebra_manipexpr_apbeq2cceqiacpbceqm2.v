Require Import Reals.
Require Import Coquelicot.Coquelicot.

Open Scope C_scope.

Theorem algebra_manipexpr_apbeq2cceqiacpbceqm2:
  forall (a b c : C),
  a + b = 2 * c ->
  c = Ci ->
  a * c + b * c = -2.

Proof.
