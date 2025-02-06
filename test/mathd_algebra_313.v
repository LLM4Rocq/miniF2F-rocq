Require Import Reals.
Require Import Coquelicot.Coquelicot.

Open Scope C_scope.

Theorem mathd_algebra_313
  (v i z : C)
  (h0 : v = i * z)
  (h1 : v = 1 + Ci)
  (h2 : z = 2 - Ci) :
  i = 1/5 + 3/5 * Ci.

Proof.
