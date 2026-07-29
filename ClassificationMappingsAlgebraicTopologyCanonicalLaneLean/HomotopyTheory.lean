import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationMappingsAlgebraicTopologyCanonicalLaneLean

structure SimplicialSet where
  sets : ℕ → Type u
  faceMaps : ∀ n : ℕ, Fin (n+2) → sets (n+1) → sets n
  degeneracyMaps : ∀ n : ℕ, Fin (n+1) → sets n → sets (n+1)
  simplicialIdentities : Prop

structure KanComplex extends SimplicialSet where
  hornFiller : ∀ n : ℕ, ∀ k : Fin (n+2), ∀ (f : (Λ[n,k]) → sets), ∃ (x : sets n), restriction x = f

structure ModelCategory where
  category : Type u
  weakEquivalences : Set (category → category)  -- simplified
  fibrations : Set (category → category)
  cofibrations : Set (category → category)
  modelAxioms : Prop

structure QuillenAdjunction where
  left : Type u → Type u
  right : Type u → Type u
  unit : ∀ X, X → right (left X)  -- simplified
  counit : ∀ X, left (right X) → X
  triangleIdentities : Prop

structure HomotopyCategory where
  category : Type u
  objects : Type u
  morphisms : Type u → Type u → Type v
  homotopyRelation : Prop

end ClassificationMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse