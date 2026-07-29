import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassNumbersQuadraticHermitianFormsCanonicalLaneLean

structure HilbertClassFieldPackage where
  baseField : Type u
  classField : Type v
  extensionDegree : ℕ
  unramifiedAbelian : Prop
  degreeEqualsClassNumber : Prop

structure HilbertClassFieldEvidence (H : HilbertClassFieldPackage) where
  unramifiedAbelianClosed : H.unramifiedAbelian
  degreeEqualsClassNumberClosed : H.degreeEqualsClassNumber

def HilbertClassFieldClosed (H : HilbertClassFieldPackage) : Prop :=
  H.unramifiedAbelian ∧ H.degreeEqualsClassNumber

theorem hilbert_class_field_closed_from_evidence (H : HilbertClassFieldPackage) (E : HilbertClassFieldEvidence H) : HilbertClassFieldClosed H := by
  exact And.intro E.unramifiedAbelianClosed E.degreeEqualsClassNumberClosed

end ClassNumbersQuadraticHermitianFormsCanonicalLaneLean
end HautevilleHouse