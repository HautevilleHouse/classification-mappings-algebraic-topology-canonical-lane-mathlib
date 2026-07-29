import ClassificationMappingsAlgebraicTopologyCanonicalLaneLean.ClassificationObject
import Mathlib.CategoryTheory.RepresentableFunctor
import Mathlib.AlgebraicTopology.SimplicialSet

namespace HautevilleHouse
namespace ClassificationMappingsAlgebraicTopologyCanonicalLaneLean

structure RepresentationTheoremPackage (O : ClassificationAdmittedObject) where
  functorFrom : Type
  functorTo : Cat
  representationObject : Type
  naturalIsomorphism : Prop
  YonedaLemmaApplied : Prop
  representationTheoremClosed : Prop

structure RepresentationTheoremEvidence {O : ClassificationAdmittedObject}
    (R : RepresentationTheoremPackage O) where
  naturalIsomorphismClosed : R.naturalIsomorphism
  YonedaLemmaAppliedClosed : R.YonedaLemmaApplied
  representationTheoremClosedClosed : R.representationTheoremClosed

end ClassificationMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse