Require Import Reals.
Require Import Coquelicot.Coquelicot.

Open Scope C_scope.

Theorem mathd_algebra_192
  (q e d : C)
  (h0 : q = 11 - 5 * Ci)
  (h1 : e = 11 + 5 * Ci)
  (h2 : d = 2 * Ci) :
  q * e * d = 292 * Ci.

Proof.
