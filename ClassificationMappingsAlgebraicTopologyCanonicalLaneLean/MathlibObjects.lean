import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ClassificationMappingsAlgebraicTopologyCanonicalLaneLean

structure ClassificationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ClassificationAdmittedObject where
  space : ClassificationSpace
  simplyConnected : Prop
  oriented : Prop
  compact : Prop
  homotopyEquivalentToSphereBouquet : Prop
  conclusion : homotopyEquivalentToSphereBouquet

def ClassificationWitnessClosed (O : ClassificationAdmittedObject) : Prop :=
  O.homotopyEquivalentToSphereBouquet

end ClassificationMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse