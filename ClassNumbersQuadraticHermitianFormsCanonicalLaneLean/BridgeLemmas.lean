import canonicalLaneMathlib.AdmissibleClass
import ClassNumbersQuadraticHermitianFormsCanonicalLaneLean.ClassGroupStructure

namespace HautevilleHouse
namespace ClassNumbersQuadraticHermitianFormsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ClassGroupClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end ClassNumbersQuadraticHermitianFormsCanonicalLaneLean
end HautevilleHouse