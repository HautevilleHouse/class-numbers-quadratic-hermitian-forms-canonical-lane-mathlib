import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassNumbersQuadraticHermitianFormsCanonicalLaneLean

structure ClassGroupPackage where
  idealGroup : Type u
  principalIdeals : Set idealGroup
  classGroup : Type v
  classGroupIsFinite : Prop
  classNumber : Nat
  classNumberComputed : classNumber = Fintype.card classGroup

structure ClassGroupEvidence (C : ClassGroupPackage) where
  classGroupIsFiniteClosed : C.classGroupIsFinite
  classNumberComputedClosed : C.classNumberComputed

def ClassGroupClosed (C : ClassGroupPackage) : Prop :=
  C.classGroupIsFinite ∧ C.classNumberComputed

theorem class_group_closed_from_evidence (C : ClassGroupPackage) (E : ClassGroupEvidence C) : ClassGroupClosed C := by
  exact And.intro E.classGroupIsFiniteClosed E.classNumberComputedClosed

end ClassNumbersQuadraticHermitianFormsCanonicalLaneLean
end HautevilleHouse