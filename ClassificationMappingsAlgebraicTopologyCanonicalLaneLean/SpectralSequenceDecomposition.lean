import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationMappingsAlgebraicTopologyCanonicalLaneLean

structure SpectralSequencePackage where
  filteredComplex : Type u
  page : ℕ → Type v
  differentials : (r : ℕ) → page r → page r
  convergence : Type w
  abutment : Type z
  edgeHomomorphisms : Prop
  multiplicativeStructure : Prop
  collapseCondition : Prop

structure SpectralSequenceEvidence (S : SpectralSequencePackage) where
  edgeHomomorphismsClosed : S.edgeHomomorphisms
  multiplicativeStructureClosed : S.multiplicativeStructure
  collapseConditionClosed : S.collapseCondition

def SpectralSequenceClosed (S : SpectralSequencePackage) : Prop :=
  S.edgeHomomorphisms ∧ S.multiplicativeStructure ∧ S.collapseCondition

theorem spectral_sequence_closed_from_evidence (S : SpectralSequencePackage) (E : SpectralSequenceEvidence S) :
    SpectralSequenceClosed S := by
  exact And.intro E.edgeHomomorphismsClosed (And.intro E.multiplicativeStructureClosed E.collapseConditionClosed)

end ClassificationMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse