import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassNumbersQuadraticHermitianFormsCanonicalLaneLean

structure QuadraticFormPackage where
  baseField : Type u
  dimension : Nat
  formMatrix : Type v
  hermitianCondition : Prop
  discriminant : Prop
  hasseInvariant : Prop

structure QuadraticFormEvidence (Q : QuadraticFormPackage) where
  hermitianConditionClosed : Q.hermitianCondition
  discriminantClosed : Q.discriminant
  hasseInvariantClosed : Q.hasseInvariant

def QuadraticFormClosed (Q : QuadraticFormPackage) : Prop :=
  Q.hermitianCondition ∧ Q.discriminant ∧ Q.hasseInvariant

theorem quadratic_form_closed_from_evidence (Q : QuadraticFormPackage)
    (E : QuadraticFormEvidence Q) : QuadraticFormClosed Q := by
  exact And.intro E.hermitianConditionClosed
    (And.intro E.discriminantClosed E.hasseInvariantClosed)

end ClassNumbersQuadraticHermitianFormsCanonicalLaneLean
end HautevilleHouse