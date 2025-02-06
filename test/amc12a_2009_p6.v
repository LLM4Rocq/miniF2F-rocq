Require Import Reals.

Open Scope R_scope.

Theorem amc12a_2009_p6
  (m n p q : R)
  (h₀ : p = Rpower 2 m)
  (h₁ : q = Rpower 3 n) :
  Rpower p (2 * n) * Rpower q m = Rpower 12 (m * n).

Proof.
