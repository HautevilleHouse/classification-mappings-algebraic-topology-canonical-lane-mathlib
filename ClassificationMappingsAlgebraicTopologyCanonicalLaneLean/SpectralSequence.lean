import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationMappingsAlgebraicTopologyCanonicalLaneLean

structure SpectralSequencePackage where
  pages : ℕ → Type
  differentials : ℕ → (Type → Type)
  convergence : Prop
  pageStabilization : Prop
  filtration : Prop
  convergenceTerm : convergence
  pageStabilizationTerm : pageStabilization
  filtrationTerm : filtration

structure SpectralSequenceEvidence (S : SpectralSequencePackage) where
  convergenceClosed : S.convergence
  pageStabilizationClosed : S.pageStabilization
  filtrationClosed : S.filtration

def SpectralSequenceClosed (S : SpectralSequencePackage) : Prop :=
  S.convergence ∧ S.pageStabilization ∧ S.filtration

theorem spectral_sequence_closed_from_evidence
    (S : SpectralSequencePackage) (E : SpectralSequenceEvidence S) :
    SpectralSequenceClosed S := by
  exact And.intro E.convergenceClosed (And.intro E.pageStabilizationClosed E.filtrationClosed)

end ClassificationMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse