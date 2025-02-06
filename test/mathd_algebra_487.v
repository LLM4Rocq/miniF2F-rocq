Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_487
  (a b c d : R)
  (h₀ : b = a^2)
  (h₁ : a + b = 1)
  (h₂ : d = c^2)
  (h₃ : c + d = 1)
  (h₄ : a <> c) :
  sqrt ((a - c)^2 + (b - d)^2) = sqrt 10.
Proof.
Admitted.
