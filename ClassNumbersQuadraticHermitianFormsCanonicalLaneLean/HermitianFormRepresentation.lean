import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassNumbersQuadraticHermitianFormsCanonicalLaneLean

structure HermitianForm where
  dimension : ℕ
  matrix : Matrix (Fin dimension) (Fin dimension) ℤ
  hermitianCondition : Prop
  positiveDefinite : Prop
  classNumber : ℕ
  formClassNumberComputed : Prop

def HermitianFormClosed (H : HermitianForm) : Prop :=
  H.hermitianCondition ∧ H.positiveDefinite ∧ H.formClassNumberComputed

theorem hermitian_form_closed_from_evidence (H : HermitianForm)
    (h1 : H.hermitianCondition) (h2 : H.positiveDefinite) (h3 : H.formClassNumberComputed) :
    HermitianFormClosed H := by
  exact And.intro h1 (And.intro h2 h3)

end ClassNumbersQuadraticHermitianFormsCanonicalLaneLean
end HautevilleHouse