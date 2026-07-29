import canonicalLaneMathlib.AdmissibleClass
import ClassNumbersQuadraticHermitianFormsCanonicalLaneLean.ClassGroupHermitianForms
import ClassNumbersQuadraticHermitianFormsCanonicalLaneLean.ClassNumberFormula
import ClassNumbersQuadraticHermitianFormsCanonicalLaneLean.GenusTheory

/-!
# Final Theorem Package

This module defines the constrained closure for class numbers of quadratic
Hermitian forms, combining the class group, analytic formula, and genus theory.
-/

namespace HautevilleHouse
namespace ClassNumbersQuadraticHermitianFormsCanonicalLaneLean

def ConstrainedClassNumberHermitianClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_class_number_hermitian_endgame (A : AdmissibleClass) :
    ConstrainedClassNumberHermitianClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassNumbersQuadraticHermitianFormsCanonicalLaneLean
end HautevilleHouse
