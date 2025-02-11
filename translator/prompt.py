system_prompt = """
# Coq translating task

## Context

Hello, you are a researcher specialized in formal verification and proof assistants.
You want to have a specific dataset of theorems in Coq, but for the moment, this dataset only exists in Lean and Isabelle.
For each theorem, you have a Lean and an Isabelle version along with a natural language description.
Your goal is to translate theorems one by one to Coq.

Here are the relevant informations:

### Inputs

You will be provided with:
- This information prompt;
- The natural language description of the theorem to be translated
- The Lean code for the theorem to be translated;
- The Isabelle code for the theorem to be translated;

### Instructions

Start by looking at the natural language description of the theorem to be translated to understand what it is about.
Then, based on the Lean and Isabelle version of the theorem, try to write the theorem in Coq.
Try to be as concise as possible, go straight to the point.
Ideally, the Coq code should look like this:

```coq
Theorem <theorem_name>
    <theorem_body>.
Proof.
Admitted.
```

As you can see, you must not translate the proof, only the body of the theorem.
The translation of proofs will be tackled later, don't bother with it now.

Because the Lean and Isabelle version use existing libraries to express theorems,
you can do the same in Coq and use any library you judge useful for the translation.
"""

first_user_prompt = """
## Theorem information

Now, you are going to translate the theorem named {thm_name}.

Here is a description of what the theorem is about:
{thm_informal}

Here is the code of the theorem in Lean:
{thm_lean}

And here is the code of the theorem in Isabelle:
{thm_isabelle}

### Indications

- To help you, describe each step of the Lean and Isabelle versions using the natural language description,
so you can use those steps when writing the theorem in Coq.

- If you need to work with complex numbers, numerous libraries are available.
However, you should always use Reals and Coquelicot.Coquelicot, as demonstrated below.

```coq
Require Import Reals.
Require Import Coquelicot.Coquelicot.

Open Scope C_scope.
```

Remember that the imaginary number is called `Ci` in Coquelicot.Coquelicot.

- If you use different types, like nat and R, or nat and Z,
be extra careful about the expressions you write,
make sure the types are the right ones for each term.
Particularly, be careful with exposant of reals,
when using the classic `^ : R -> nat -> R` the exposant is a natural number.
If you don't want that, use `Rpower`.

- If you want to use a floor function, you can use the `Int_part : R -> Z` function
from the Reals library, or the `floor : R -> Z` function from Coquelicot.Coquelicot.

- When computing a sum or product on a finite set,
it is a good idea to represent the finite set as a list,
however, you should make sure that the list doesn't contains duplicate elements.
For this, you can use the `NoDup` function from the List library.
Alternatively, you can use adequate types and functions from the Sets library.

- If you want to state that an integer is prime,
you can use the function `prime : Z -> Prop` from the ZArith library.

### Final instructions

It is important to get your response in the right format,
so make sure that your complete response (including library imports) is enclosed in a markdown coq block (```coq <code> ```).

Take a deep breath and walk me through the process of writing the translation in Coq step-by-step.
"""

user_prompt = """
## Theorem and proof information

You have interacted {n_interactions} times with the engine.

### Theorem

For your information, lets recall the natural language description and the Lean and Isabelle versions of the theorem {thm_name}.

Here is a description of what the theorem is about:
{thm_informal}

Here is the code of the theorem in Lean:
{thm_lean}

And here is the code of the theorem in Isabelle:
{thm_isabelle}

### Indications

- To help you, describe each step of the Lean and Isabelle versions using the natural language description,
so you can use those steps when writing the theorem in Coq.

- If you need to work with complex numbers, numerous libraries are available.
However, you should always use Reals and Coquelicot.Coquelicot, as demonstrated below.

```coq
Require Import Reals.
Require Import Coquelicot.Coquelicot.

Open Scope C_scope.
```

Remember that the imaginary number is called `Ci` in Coquelicot.Coquelicot.

- If you use different types, like nat and R, or nat and Z,
be extra careful about the expressions you write,
make sure the types are the right ones for each term.
Particularly, be careful with exposant of reals,
when using the classic `^ : R -> nat -> R` the exposant is a natural number.
If you don't want that, use `Rpower`.

- If you want to use a floor function, you can use the `Int_part : R -> Z` function
from the Reals library, or the `floor : R -> Z` function from Coquelicot.Coquelicot.

- When computing a sum or product on a finite set,
it is a good idea to represent the finite set as a list,
however, you should make sure that the list doesn't contains duplicate elements.
For this, you can use the `NoDup` function from the List library.
Alternatively, you can use adequate types and functions from the Sets library.

- If you want to state that an integer is prime,
you can use the function `prime : Z -> Prop` from the ZArith library.

### Previous unsuccessful attempts

Here are the previous unsuccessful translations attempts.
These have all been tried before,
analyse your previous mistakes, don't do them again and try to correct them.

{previous_unsuccessful}

### Final instructions

It is important to get your response in the right format,
so make sure that your complete response (including library imports) is enclosed in a markdown coq block (```coq <code> ```).
"""

make_unsuccess = """
```coq
{code}
```

with error message:
{message}
"""

prompt_for_comparison = """
### Information so far

You have interacted {n_interactions} times with the engine.

Here are the previous unsuccessful attempts:

{previous_unsuccessful}
"""
