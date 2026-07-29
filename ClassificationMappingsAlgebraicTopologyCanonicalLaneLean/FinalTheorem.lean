import canonicalLaneMathlib.AdmissibleClass
import ClassificationMappingsAlgebraicTopologyCanonicalLaneLean.BridgeLemmas
import ClassificationMappingsAlgebraicTopologyCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ClassificationMappingsAlgebraicTopologyCanonicalLaneLean

def ConstrainedTheoremClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_classification_endgame (A : AdmissibleClass) :
    ConstrainedTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassificationMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse