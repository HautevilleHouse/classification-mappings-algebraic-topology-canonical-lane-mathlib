import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationMappingsAlgebraicTopologyCanonicalLaneLean

structure CWComplexConstruction where
  cells : List (ℕ × Type)
  attachingMaps : List (Type → Type)
  topology : Prop
  closureFinite : Prop
  weakTopology : Prop
  cellularBoundary : Prop
  topologyTerm : topology
  closureFiniteTerm : closureFinite
  weakTopologyTerm : weakTopology
  cellularBoundaryTerm : cellularBoundary

structure CWComplexConstructionEvidence (C : CWComplexConstruction) where
  topologyClosed : C.topology
  closureFiniteClosed : C.closureFinite
  weakTopologyClosed : C.weakTopology
  cellularBoundaryClosed : C.cellularBoundary

def CWComplexConstructionClosed (C : CWComplexConstruction) : Prop :=
  C.topology ∧ C.closureFinite ∧ C.weakTopology ∧ C.cellularBoundary

theorem cw_complex_construction_closed_from_evidence
    (C : CWComplexConstruction) (E : CWComplexConstructionEvidence C) :
    CWComplexConstructionClosed C := by
  exact And.intro E.topologyClosed (And.intro E.closureFiniteClosed (And.intro E.weakTopologyClosed E.cellularBoundaryClosed))

end ClassificationMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse