import HautevilleHouse.ClassificationMappingsAlgebraicTopologyCanonicalLaneLean.RepresentationTheorem

namespace HautevilleHouse
namespace ClassificationMappingsAlgebraicTopologyCanonicalLaneLean

structure StructureDecompositionPackage (O : ClassifiedMappingObject) (U : UniversalPropertyPackage O) (R : RepresentationTheoremPackage O U) where
  primaryDecomposition : Prop
  secondaryDecomposition : Prop
  invariantFactors : Prop
  classificationTheorem : Prop

structure StructureDecompositionEvidence (O : ClassifiedMappingObject) (U : UniversalPropertyPackage O) (R : RepresentationTheoremPackage O U) (S : StructureDecompositionPackage O U R) where
  primaryDecompositionClosed : S.primaryDecomposition
  secondaryDecompositionClosed : S.secondaryDecomposition
  invariantFactorsClosed : S.invariantFactors
  classificationTheoremClosed : S.classificationTheorem

def StructureDecompositionClosed (O : ClassifiedMappingObject) (U : UniversalPropertyPackage O) (R : RepresentationTheoremPackage O U) (S : StructureDecompositionPackage O U R) : Prop :=
  S.primaryDecomposition ∧ S.secondaryDecomposition ∧ S.invariantFactors ∧ S.classificationTheorem

theorem structure_decomposition_closed_from_evidence (O : ClassifiedMappingObject) (U : UniversalPropertyPackage O) (R : RepresentationTheoremPackage O U) (S : StructureDecompositionPackage O U R) (E : StructureDecompositionEvidence O U R S) :
    StructureDecompositionClosed O U R S := by
  exact And.intro E.primaryDecompositionClosed (And.intro E.secondaryDecompositionClosed (And.intro E.invariantFactorsClosed E.classificationTheoremClosed))

end ClassificationMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse
