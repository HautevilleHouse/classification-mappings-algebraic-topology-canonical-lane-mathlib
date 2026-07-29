import canonicalLaneMathlib.AdmissibleClass
import Mathlib.AlgebraicTopology.FundamentalGroupoid.Basic
import Mathlib.CategoryTheory.Morphism

namespace HautevilleHouse
namespace ClassificationMappingsAlgebraicTopologyCanonicalLaneLean

structure ClassificationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ClassificationAdmittedObject where
  space : ClassificationSpace
  simplyConnected : Prop
  compactWithoutBoundary : Prop
  dimensionalCondition : Prop
  targetModel : Type
  targetTopology : TopologicalSpace targetModel
  mappingClassGroupData : Prop
  homotopyEquivalenceInfo : Prop
  conclusion : homotopyEquivalenceInfo

structure ClassificationEndgameState where
  object : ClassificationAdmittedObject

def ClassificationWitnessClosed (O : ClassificationAdmittedObject) : Prop :=
  O.homotopyEquivalenceInfo

end ClassificationMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse