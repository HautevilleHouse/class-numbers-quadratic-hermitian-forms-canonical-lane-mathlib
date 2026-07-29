import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassNumbersQuadraticHermitianFormsCanonicalLaneLean

structure ClassNumberEstimate where
  fieldDiscriminant : ℤ
  lowerBound : ℝ
  upperBound : ℝ
  lowerBoundProved : Prop
  upperBoundProved : Prop
  effectiveConstant : ℝ
  constantPositive : Prop

def ClassNumberEstimateClosed (E : ClassNumberEstimate) : Prop :=
  E.lowerBoundProved ∧ E.upperBoundProved ∧ E.constantPositive

theorem class_number_estimate_closed_from_evidence (E : ClassNumberEstimate)
    (h1 : E.lowerBoundProved) (h2 : E.upperBoundProved) (h3 : E.constantPositive) :
    ClassNumberEstimateClosed E := by
  exact And.intro h1 (And.intro h2 h3)

end ClassNumbersQuadraticHermitianFormsCanonicalLaneLean
end HautevilleHouse