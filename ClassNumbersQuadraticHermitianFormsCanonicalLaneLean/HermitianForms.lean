import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassNumbersQuadraticHermitianFormsCanonicalLaneLean

structure HermitianFormPackage where
  baseField : Type u
  dimension : Nat
  hermitianMatrix : Type v
  signature : Prod Nat Nat
  definiteCondition : Prop
  automorphismGroup : Type w

structure HermitianFormEvidence (H : HermitianFormPackage) where
  signatureClosed : H.signature = (H.dimension, 0) ∨ H.signature = (0, H.dimension)
  definiteConditionClosed : H.definiteCondition

def HermitianFormClosed (H : HermitianFormPackage) : Prop :=
  (H.signature = (H.dimension, 0) ∨ H.signature = (0, H.dimension)) ∧ H.definiteCondition

theorem hermitian_form_closed_from_evidence (H : HermitianFormPackage)
    (E : HermitianFormEvidence H) : HermitianFormClosed H := by
  exact And.intro E.signatureClosed E.definiteConditionClosed

end ClassNumbersQuadraticHermitianFormsCanonicalLaneLean
end HautevilleHouse