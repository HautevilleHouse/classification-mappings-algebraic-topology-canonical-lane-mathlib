import HautevilleHouse.ClassificationMappingsAlgebraicTopologyCanonicalLaneLean.ClassifiedMappingObject

namespace HautevilleHouse
namespace ClassificationMappingsAlgebraicTopologyCanonicalLaneLean

structure UniversalPropertyPackage (O : ClassifiedMappingObject) where
  liftingProperty : Prop
  extensionProperty : Prop
  homotopyLifting : Prop
  homotopyExtension : Prop

structure UniversalPropertyEvidence (O : ClassifiedMappingObject) (U : UniversalPropertyPackage O) where
  liftingPropertyClosed : U.liftingProperty
  extensionPropertyClosed : U.extensionProperty
  homotopyLiftingClosed : U.homotopyLifting
  homotopyExtensionClosed : U.homotopyExtension

def UniversalPropertyClosed (O : ClassifiedMappingObject) (U : UniversalPropertyPackage O) : Prop :=
  U.liftingProperty ∧ U.extensionProperty ∧ U.homotopyLifting ∧ U.homotopyExtension

theorem universal_property_closed_from_evidence (O : ClassifiedMappingObject) (U : UniversalPropertyPackage O) (E : UniversalPropertyEvidence O U) :
    UniversalPropertyClosed O U := by
  exact And.intro E.liftingPropertyClosed (And.intro E.extensionPropertyClosed (And.intro E.homotopyLiftingClosed E.homotopyExtensionClosed))

end ClassificationMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse
