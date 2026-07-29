import canonicalLaneMathlib.AdmissibleClass
import ClassificationMappingsAlgebraicTopologyCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ClassificationMappingsAlgebraicTopologyCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ClassificationMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse