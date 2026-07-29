import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationMappingsAlgebraicTopologyCanonicalLaneLean

structure MonoidalCategory where
  obj : Type u
  hom : obj → obj → Type v
  tensor : obj → obj → obj
  unit : obj
  associator : ∀ A B C : obj, hom (tensor (tensor A B) C) (tensor A (tensor B C))
  leftUnitor : ∀ A : obj, hom (tensor unit A) A
  rightUnitor : ∀ A : obj, hom (tensor A unit) A
  pentagonCondition : Prop
  triangleCondition : Prop

structure BraidedMonoidalCategory extends MonoidalCategory where
  braiding : ∀ A B : obj, hom (tensor A B) (tensor B A)
  hexagonCondition : Prop

structure SymmetricMonoidalCategory extends BraidedMonoidalCategory where
  symmetry : ∀ A B : obj, braiding B A ∘ braiding A B = 𝟙 (tensor A B)

structure RigidMonoidalCategory extends MonoidalCategory where
  dual : obj → obj
  evaluation : ∀ A : obj, hom (tensor (dual A) A) unit
  coevaluation : ∀ A : obj, hom unit (tensor A (dual A))
  snakeEquations : Prop

end ClassificationMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse