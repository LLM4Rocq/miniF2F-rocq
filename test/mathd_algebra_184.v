Require Import Reals.
Require Import Coq.Reals.Reals.

Open Scope R_scope.

Theorem mathd_algebra_184 (a b : R)
  (h₀ : 0 < a) (h₁ : 0 < b)
  (h₂ : a^2 = 6 * b)
  (h₃ : a^2 = 54 / b) :
  a = 3 * sqrt 2.
Proof.
Admitted.