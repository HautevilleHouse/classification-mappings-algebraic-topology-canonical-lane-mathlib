import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationMappingsAlgebraicTopologyCanonicalLaneLean

structure UniversalProperty where
  object : Type u
  property : object → Prop
  universalMapping : ∀ (X : Type u) (h : property X), X → object
  uniqueness : ∀ (X : Type u) (h : property X) (f g : X → object), (∀ x, f x = g x) → f = g

structure InitialObject extends UniversalProperty where
  initial : ∀ (X : Type u), object → X

structure TerminalObject extends UniversalProperty where
  terminal : ∀ (X : Type u), X → object

structure Limit extends UniversalProperty where
  cone : Type u → Type v
  limitingCone : ∀ (F : Type u → Type v), cone F
  universal : ∀ (F : Type u → Type v) (c : cone F), c → limitingCone F

structure Colimit extends UniversalProperty where
  cocone : Type u → Type v
  colimitingCocone : ∀ (F : Type u → Type v), cocone F
  universal : ∀ (F : Type u → Type v) (c : cocone F), colimitingCocone F → c

end ClassificationMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse