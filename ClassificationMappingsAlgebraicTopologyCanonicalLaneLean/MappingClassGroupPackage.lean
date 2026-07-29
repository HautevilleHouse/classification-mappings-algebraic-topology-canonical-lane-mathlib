import ClassificationMappingsAlgebraicTopologyCanonicalLaneLean.ClassificationObject
import Mathlib.AlgebraicTopology.FundamentalGroupoid.FundamentalGroup
import Mathlib.Topology.AlgebraicTopology.MappingClassGroup

namespace HautevilleHouse
namespace ClassificationMappingsAlgebraicTopologyCanonicalLaneLean

structure MappingClassGroupPackage (O : ClassificationAdmittedObject) where
  surfaceType : Type
  mappingClassGroup : Type
  mappingClassGroupFinitelyGenerated : Prop
  DehnTwistGenerators : Prop
  actionOnHomology : Prop
  mappingClassGroupClosed : Prop

structure MappingClassGroupEvidence {O : ClassificationAdmittedObject}
    (M : MappingClassGroupPackage O) where
  mappingClassGroupFinitelyGeneratedClosed : M.mappingClassGroupFinitelyGenerated
  DehnTwistGeneratorsClosed : M.DehnTwistGenerators
  actionOnHomologyClosed : M.actionOnHomology
  mappingClassGroupClosedClosed : M.mappingClassGroupClosed

end ClassificationMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse