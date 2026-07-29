import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationMappingsAlgebraicTopologyCanonicalLaneLean

structure HomotopyRepresentationPackage where
  space : Type u
  spaceTopology : TopologicalSpace space
  homotopyGroups : Nat → Type v
  representationMaps : (n : Nat) → homotopyGroups n → Type w
  whiteheadTheorem : Prop
  hurewiczTheorem : Prop
  obstructionTheory : Prop
  classificationResult : Prop

structure HomotopyRepresentationEvidence (R : HomotopyRepresentationPackage) where
  whiteheadTheoremClosed : R.whiteheadTheorem
  hurewiczTheoremClosed : R.hurewiczTheorem
  obstructionTheoryClosed : R.obstructionTheory
  classificationResultClosed : R.classificationResult

def HomotopyRepresentationClosed (R : HomotopyRepresentationPackage) : Prop :=
  R.whiteheadTheorem ∧ R.hurewiczTheorem ∧ R.obstructionTheory ∧ R.classificationResult

theorem homotopy_representation_closed_from_evidence (R : HomotopyRepresentationPackage) (E : HomotopyRepresentationEvidence R) :
    HomotopyRepresentationClosed R := by
  exact And.intro E.whiteheadTheoremClosed (And.intro E.hurewiczTheoremClosed (And.intro E.obstructionTheoryClosed E.classificationResultClosed))

end ClassificationMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse