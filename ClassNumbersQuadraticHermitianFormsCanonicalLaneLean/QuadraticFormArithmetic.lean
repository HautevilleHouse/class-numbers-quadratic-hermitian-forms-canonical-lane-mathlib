import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassNumbersQuadraticHermitianFormsCanonicalLaneLean

structure QuadraticFormPackage (D : ℕ) where
  discriminant : ℕ := D
  form : ℤ × ℤ → ℤ
  primitiveCondition : Prop
  positiveDefinite : Prop
  reducedForm : Prop

structure QuadraticFormEvidence {D : ℕ} (Q : QuadraticFormPackage D) where
  primitiveConditionClosed : Q.primitiveCondition
  positiveDefiniteClosed : Q.positiveDefinite
  reducedFormClosed : Q.reducedForm

def QuadraticFormClosed {D : ℕ} (Q : QuadraticFormPackage D) : Prop :=
  Q.primitiveCondition ∧ Q.positiveDefinite ∧ Q.reducedForm

theorem quadratic_form_closed_from_evidence {D : ℕ} (Q : QuadraticFormPackage D) (E : QuadraticFormEvidence Q) : QuadraticFormClosed Q := by
  exact And.intro E.primitiveConditionClosed (And.intro E.positiveDefiniteClosed E.reducedFormClosed)

end ClassNumbersQuadraticHermitianFormsCanonicalLaneLean
end HautevilleHouse