import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassNumbersQuadraticHermitianFormsCanonicalLaneLean

structure ClassFieldPackage where
  baseField : Type u
  hilbertClassField : Type v
  classGroupIsGaloisGroup : Prop
  artinReciprocity : Prop
  conductor : ℕ

structure ClassFieldEvidence (C : ClassFieldPackage) where
  classGroupIsGaloisGroupClosed : C.classGroupIsGaloisGroup
  artinReciprocityClosed : C.artinReciprocity

def ClassFieldClosed (C : ClassFieldPackage) : Prop :=
  C.classGroupIsGaloisGroup ∧ C.artinReciprocity

theorem class_field_closed_from_evidence (C : ClassFieldPackage)
    (E : ClassFieldEvidence C) : ClassFieldClosed C := by
  exact And.intro E.classGroupIsGaloisGroupClosed E.artinReciprocityClosed

end ClassNumbersQuadraticHermitianFormsCanonicalLaneLean
end HautevilleHouse