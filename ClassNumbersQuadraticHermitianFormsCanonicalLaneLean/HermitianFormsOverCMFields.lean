import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassNumbersQuadraticHermitianFormsCanonicalLaneLean

structure HermitianFormOverCMFieldPackage where
  cmField : Type u
  hermitianForm : Type v
  classGroupAction : Prop
  classNumberInvariant : Prop
  stableEquivalence : Prop

structure HermitianFormOverCMFieldEvidence (H : HermitianFormOverCMFieldPackage) where
  classGroupActionClosed : H.classGroupAction
  classNumberInvariantClosed : H.classNumberInvariant
  stableEquivalenceClosed : H.stableEquivalence

def HermitianFormOverCMFieldClosed (H : HermitianFormOverCMFieldPackage) : Prop :=
  H.classGroupAction ∧ H.classNumberInvariant ∧ H.stableEquivalence

theorem hermitian_form_over_cm_field_closed_from_evidence (H : HermitianFormOverCMFieldPackage) (E : HermitianFormOverCMFieldEvidence H) : HermitianFormOverCMFieldClosed H := by
  exact And.intro E.classGroupActionClosed (And.intro E.classNumberInvariantClosed E.stableEquivalenceClosed)

end ClassNumbersQuadraticHermitianFormsCanonicalLaneLean
end HautevilleHouse