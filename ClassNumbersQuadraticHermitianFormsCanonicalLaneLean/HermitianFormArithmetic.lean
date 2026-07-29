import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassNumbersQuadraticHermitianFormsCanonicalLaneLean

structure HermitianFormPackage (K : Type u) [Field K] where
  vectorSpace : Type v
  [isVectorSpace : AddCommGroup vectorSpace]
  [module : Module K vectorSpace]
  form : vectorSpace → vectorSpace → K
  hermitianCondition : Prop
  positiveDefinite : Prop

structure HermitianFormEvidence {K : Type u} [Field K] (H : HermitianFormPackage K) where
  hermitianConditionClosed : H.hermitianCondition
  positiveDefiniteClosed : H.positiveDefinite

def HermitianFormClosed {K : Type u} [Field K] (H : HermitianFormPackage K) : Prop :=
  H.hermitianCondition ∧ H.positiveDefinite

theorem hermitian_form_closed_from_evidence {K : Type u} [Field K] (H : HermitianFormPackage K) (E : HermitianFormEvidence H) : HermitianFormClosed H := by
  exact And.intro E.hermitianConditionClosed E.positiveDefiniteClosed

end ClassNumbersQuadraticHermitianFormsCanonicalLaneLean
end HautevilleHouse