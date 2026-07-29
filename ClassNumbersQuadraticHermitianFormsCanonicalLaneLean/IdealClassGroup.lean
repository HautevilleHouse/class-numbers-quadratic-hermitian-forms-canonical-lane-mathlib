import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassNumbersQuadraticHermitianFormsCanonicalLaneLean

structure IdealClassGroup where
  numberField : Type u
  ringOfIntegers : Type v
  classGroup : Type w
  classGroupStructure : String
  classNumberComputed : ℕ
  classNumberVerified : Prop

def IdealClassGroupClosed (I : IdealClassGroup) : Prop :=
  I.classNumberVerified ∧ (I.classGroupStructure ≠ "")

theorem ideal_class_group_closed_from_evidence (I : IdealClassGroup)
    (h1 : I.classNumberVerified) (h2 : I.classGroupStructure ≠ "") :
    IdealClassGroupClosed I := by
  exact And.intro h1 h2

end ClassNumbersQuadraticHermitianFormsCanonicalLaneLean
end HautevilleHouse