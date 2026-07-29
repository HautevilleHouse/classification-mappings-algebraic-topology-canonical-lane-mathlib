import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationMappingsAlgebraicTopologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ClassificationMappingsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClassificationMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse