import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationMappingsAlgebraicTopologyCanonicalLaneLean

structure CohomologyRingPackage where
  space : Type
  ring : Type
  cupProduct : ring × ring → ring
  gradedCommutative : Prop
  associativity : Prop
  unitExistence : Prop
  gradedCommutativeTerm : gradedCommutative
  associativityTerm : associativity
  unitExistenceTerm : unitExistence

structure CohomologyRingEvidence (R : CohomologyRingPackage) where
  gradedCommutativeClosed : R.gradedCommutative
  associativityClosed : R.associativity
  unitExistenceClosed : R.unitExistence

def CohomologyRingClosed (R : CohomologyRingPackage) : Prop :=
  R.gradedCommutative ∧ R.associativity ∧ R.unitExistence

theorem cohomology_ring_closed_from_evidence
    (R : CohomologyRingPackage) (E : CohomologyRingEvidence R) :
    CohomologyRingClosed R := by
  exact And.intro E.gradedCommutativeClosed (And.intro E.associativityClosed E.unitExistenceClosed)

end ClassificationMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse