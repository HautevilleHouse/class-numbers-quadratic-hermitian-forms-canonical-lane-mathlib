import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassNumbersQuadraticHermitianFormsCanonicalLaneLean

structure AdmissibleClass where
  object : ClassGroupPackage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ClassGroupClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClassNumbersQuadraticHermitianFormsCanonicalLaneLean
end HautevilleHouse