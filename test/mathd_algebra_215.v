Require Import Reals.
Require Import List.
Require Import Lra.

Open Scope R_scope.

Theorem mathd_algebra_215 (S : list R)
  (h₀ : forall x, In x S <-> (x + 3)^2 = 121) 
  (h₁ : NoDup S) :
  fold_right Rplus 0 S = -6.

Proof.
