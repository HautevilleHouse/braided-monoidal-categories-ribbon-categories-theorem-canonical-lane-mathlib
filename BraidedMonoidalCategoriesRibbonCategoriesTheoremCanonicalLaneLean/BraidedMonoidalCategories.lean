import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean

structure BraidedMonoidalCategory where
  object : Type u
  morphism : object → object → Type v
  tensorProduct : object → object → object
  unit : object
  associator : ∀ A B C : object, (tensorProduct (tensorProduct A B) C) ≅ (tensorProduct A (tensorProduct B C))
  leftUnitor : ∀ A : object, (tensorProduct unit A) ≅ A
  rightUnitor : ∀ A : object, (tensorProduct A unit) ≅ A
  braiding : ∀ A B : object, (tensorProduct A B) ≅ (tensorProduct B A)
  pentagonCondition : Prop
  triangleCondition : Prop
  hexagonCondition : Prop
  braidingNaturality : Prop

structure BraidedMonoidalCategoryEvidence (B : BraidedMonoidalCategory) where
  pentagonConditionClosed : B.pentagonCondition
  triangleConditionClosed : B.triangleCondition
  hexagonConditionClosed : B.hexagonCondition
  braidingNaturalityClosed : B.braidingNaturality

def BraidedMonoidalCategoryClosed (B : BraidedMonoidalCategory) : Prop :=
  B.pentagonCondition ∧ B.triangleCondition ∧ B.hexagonCondition ∧ B.braidingNaturality

theorem braided_monoidal_category_closed_from_evidence (B : BraidedMonoidalCategory)
    (E : BraidedMonoidalCategoryEvidence B) : BraidedMonoidalCategoryClosed B := by
  exact And.intro E.pentagonConditionClosed
    (And.intro E.triangleConditionClosed
      (And.intro E.hexagonConditionClosed E.braidingNaturalityClosed))

end BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean
end HautevilleHouse