/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Kudzo Ahegbebu, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import minif2f_import

open_locale big_operators
open_locale nat
open_locale real
open_locale rat

theorem mathd_algebra_478
  (b h v : ℝ)
  (h₀ : 0 < b ∧ 0 < h ∧ 0 < v)
  (h₁ : v = 1 / 3 * (b * h))
  (h₂ : b = 30)
  (h₃ : h = 13 / 2) :
  v = 65 :=
begin
  rw [h₂, h₃] at h₁,
  rw h₁,
  norm_num,
end