import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassNumbersQuadraticHermitianFormsCanonicalLaneLean

structure QuadraticField where
  base : ℚ
  discriminant : ℤ
  ringIntegerBasis : Type u
  ringIntegerBasisIsFree : Prop
  classNumber : ℕ
  classNumberPowerful : Prop

def QuadraticFieldClosed (Q : QuadraticField) : Prop :=
  Q.ringIntegerBasisIsFree ∧ Q.classNumberPowerful

theorem quadratic_field_closed_from_properties (Q : QuadraticField)
    (h1 : Q.ringIntegerBasisIsFree) (h2 : Q.classNumberPowerful) :
    QuadraticFieldClosed Q := by
  exact And.intro h1 h2

end ClassNumbersQuadraticHermitianFormsCanonicalLaneLean
end HautevilleHouse