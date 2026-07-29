import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationMappingsAlgebraicTopologyCanonicalLaneLean

structure HomologyBridge where
  source : Types
  target : Types
  naturalTransformation : Types
  homologyFunctor : Types
  exactness : Prop
  naturality : Prop
  exactnessTerm : exactness
  naturalityTerm : naturality

structure HomologyBridgeEvidence (B : HomologyBridge) where
  exactnessClosed : B.exactness
  naturalityClosed : B.naturality

def HomologyBridgeClosed (B : HomologyBridge) : Prop :=
  B.exactness ∧ B.naturality

theorem homology_bridge_closed_from_evidence
    (B : HomologyBridge) (E : HomologyBridgeEvidence B) :
    HomologyBridgeClosed B := by
  exact And.intro E.exactnessClosed E.naturalityClosed

end ClassificationMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse