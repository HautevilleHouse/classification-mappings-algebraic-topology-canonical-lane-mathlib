import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ClassificationMappingsAlgebraicTopologyCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ClassificationMappingsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ClassificationMappingsAdmittedObject where
  space : ClassificationMappingsSpace
  compactObject : Prop
  finitelyGenerated : Prop
  representationTheorem : Type
  representationTopology : TopologicalSpace representationTheorem
  universalPropertySatisfied : Prop
  conclusion : universalPropertySatisfied

structure ClassificationMappingsEndgameState where
  object : ClassificationMappingsAdmittedObject

def ClassificationMappingsWitnessClosed (O : ClassificationMappingsAdmittedObject) : Prop :=
  O.universalPropertySatisfied

end ClassificationMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse