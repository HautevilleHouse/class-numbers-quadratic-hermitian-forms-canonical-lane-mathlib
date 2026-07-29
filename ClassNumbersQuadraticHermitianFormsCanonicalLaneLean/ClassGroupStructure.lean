import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassNumbersQuadraticHermitianFormsCanonicalLaneLean

structure ClassGroupPackage where
  baseField : Type u
  discriminant : ℤ
  classNumber : ℕ
  groupStructure : Prop
  classNumberFinite : Prop
  groupAbelian : Prop

structure ClassGroupEvidence (C : ClassGroupPackage) where
  groupStructureClosed : C.groupStructure
  classNumberFiniteClosed : C.classNumberFinite
  groupAbelianClosed : C.groupAbelian

def ClassGroupClosed (C : ClassGroupPackage) : Prop :=
  C.groupStructure ∧ C.classNumberFinite ∧ C.groupAbelian

theorem class_group_closed_from_evidence (C : ClassGroupPackage) (E : ClassGroupEvidence C) : ClassGroupClosed C := by
  exact And.intro E.groupStructureClosed (And.intro E.classNumberFiniteClosed E.groupAbelianClosed)

end ClassNumbersQuadraticHermitianFormsCanonicalLaneLean
end HautevilleHouse