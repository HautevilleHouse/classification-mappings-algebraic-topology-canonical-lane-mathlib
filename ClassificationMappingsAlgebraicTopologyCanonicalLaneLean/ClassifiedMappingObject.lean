import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationMappingsAlgebraicTopologyCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ClassifiedMappingSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  basepoint : carrier

structure ClassifiedMappingObject where
  source : ClassifiedMappingSpace
  target : ClassifiedMappingSpace
  mapping : source.carrier → target.carrier
  continuousMap : Continuous mapping
  homotopyClassClosed : Prop
  conclusion : homotopyClassClosed

structure ClassificationEndgameState where
  object : ClassifiedMappingObject

def MappingClassClosed (O : ClassifiedMappingObject) : Prop :=
  O.homotopyClassClosed

end ClassificationMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse
