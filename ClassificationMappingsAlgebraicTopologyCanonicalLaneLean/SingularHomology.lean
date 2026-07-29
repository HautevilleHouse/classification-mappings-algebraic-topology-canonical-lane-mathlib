import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationMappingsAlgebraicTopologyCanonicalLaneLean

structure SingularHomologyPackage where
  space : Type
  chainComplex : Type
  homologyGroups : ℕ → Type
  functoriality : Prop
  homotopyInvariance : Prop
  longExactSequence : Prop
  excision : Prop
  functorialityTerm : functoriality
  homotopyInvarianceTerm : homotopyInvariance
  longExactSequenceTerm : longExactSequence
  excisionTerm : excision

structure SingularHomologyEvidence (H : SingularHomologyPackage) where
  functorialityClosed : H.functoriality
  homotopyInvarianceClosed : H.homotopyInvariance
  longExactSequenceClosed : H.longExactSequence
  excisionClosed : H.excision

def SingularHomologyClosed (H : SingularHomologyPackage) : Prop :=
  H.functoriality ∧ H.homotopyInvariance ∧ H.longExactSequence ∧ H.excision

theorem singular_homology_closed_from_evidence
    (H : SingularHomologyPackage) (E : SingularHomologyEvidence H) :
    SingularHomologyClosed H := by
  exact And.intro E.functorialityClosed (And.intro E.homotopyInvarianceClosed (And.intro E.longExactSequenceClosed E.excisionClosed))

end ClassificationMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse