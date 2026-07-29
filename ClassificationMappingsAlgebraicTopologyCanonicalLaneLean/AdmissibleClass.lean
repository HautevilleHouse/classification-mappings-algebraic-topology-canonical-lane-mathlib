import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationMappingsAlgebraicTopologyCanonicalLaneLean

structure AdmissibleClass where
  object : ClassificationMappingsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ClassificationMappingsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClassificationMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse