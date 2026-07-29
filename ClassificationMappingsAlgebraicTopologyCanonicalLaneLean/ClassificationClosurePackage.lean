import ClassificationMappingsAlgebraicTopologyCanonicalLaneLean.MappingClassGroupPackage
import ClassificationMappingsAlgebraicTopologyCanonicalLaneLean.RepresentationTheoremPackage

namespace HautevilleHouse
namespace ClassificationMappingsAlgebraicTopologyCanonicalLaneLean

structure ClassificationClosurePackage {O : ClassificationAdmittedObject}
    (M : MappingClassGroupPackage O) (R : RepresentationTheoremPackage O) where
  mappingClassRepresentationCompatible : Prop
  homotopyClassificationComplete : Prop
  structureDecompositionAccounted : Prop

structure ClassificationClosureEvidence {O : ClassificationAdmittedObject}
    {M : MappingClassGroupPackage O} {R : RepresentationTheoremPackage O}
    (C : ClassificationClosurePackage M R) where
  mappingClassRepresentationCompatibleClosed : C.mappingClassRepresentationCompatible
  homotopyClassificationCompleteClosed : C.homotopyClassificationComplete
  structureDecompositionAccountedClosed : C.structureDecompositionAccounted

end ClassificationMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse