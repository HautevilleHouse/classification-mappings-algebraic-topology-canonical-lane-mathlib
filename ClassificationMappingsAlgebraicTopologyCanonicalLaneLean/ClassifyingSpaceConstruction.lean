import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationMappingsAlgebraicTopologyCanonicalLaneLean

structure ClassifyingSpacePackage where
  group : Type u
  groupTopology : TopologicalSpace group
  classifyingSpace : Type v
  spaceTopology : TopologicalSpace classifyingSpace
  universalBundle : Type w
  bundleProjection : universalBundle → classifyingSpace
  bundleFiber : universalBundle → group
  principalStructure : Prop
  homotopyFiberSequence : Prop
  classificationTheorem : Prop

structure ClassifyingSpaceEvidence (C : ClassifyingSpacePackage) where
  principalStructureClosed : C.principalStructure
  homotopyFiberSequenceClosed : C.homotopyFiberSequence
  classificationTheoremClosed : C.classificationTheorem

def ClassifyingSpaceClosed (C : ClassifyingSpacePackage) : Prop :=
  C.principalStructure ∧ C.homotopyFiberSequence ∧ C.classificationTheorem

theorem classifying_space_closed_from_evidence (C : ClassifyingSpacePackage) (E : ClassifyingSpaceEvidence C) :
    ClassifyingSpaceClosed C := by
  exact And.intro E.principalStructureClosed (And.intro E.homotopyFiberSequenceClosed E.classificationTheoremClosed)

end ClassificationMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse