import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassNumbersQuadraticHermitianFormsCanonicalLaneLean

structure BinaryQuadraticFormPackage where
  coefficientType : Type u
  discriminant : ℤ
  equivalenceRelation : Prop
  reducedForms : Prop
  classNumberDefined : Prop

structure BinaryQuadraticFormEvidence (B : BinaryQuadraticFormPackage) where
  equivalenceRelationClosed : B.equivalenceRelation
  reducedFormsClosed : B.reducedForms
  classNumberDefinedClosed : B.classNumberDefined

def BinaryQuadraticFormClosed (B : BinaryQuadraticFormPackage) : Prop :=
  B.equivalenceRelation ∧ B.reducedForms ∧ B.classNumberDefined

theorem binary_quadratic_form_closed_from_evidence (B : BinaryQuadraticFormPackage) (E : BinaryQuadraticFormEvidence B) : BinaryQuadraticFormClosed B := by
  exact And.intro E.equivalenceRelationClosed (And.intro E.reducedFormsClosed E.classNumberDefinedClosed)

end ClassNumbersQuadraticHermitianFormsCanonicalLaneLean
end HautevilleHouse