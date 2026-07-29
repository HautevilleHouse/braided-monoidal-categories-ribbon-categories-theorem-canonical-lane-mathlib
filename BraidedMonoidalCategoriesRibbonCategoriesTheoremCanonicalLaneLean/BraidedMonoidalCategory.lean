import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean

structure BraidedMonoidalCategory where
  object : Type u
  tensor : object → object → object
  unit : object
  associator : (X Y Z : object) → tensor (tensor X Y) Z ≅ tensor X (tensor Y Z)
  leftUnitor : (X : object) → tensor unit X ≅ X
  rightUnitor : (X : object) → tensor X unit ≅ X
  braiding : (X Y : object) → tensor X Y ≅ tensor Y X
  pentagonCondition : Prop
  triangleCondition : Prop
  hexagonCondition : Prop
  braidingNaturality : Prop

structure BraidedMonoidalEvidence (B : BraidedMonoidalCategory) where
  pentagonConditionClosed : B.pentagonCondition
  triangleConditionClosed : B.triangleCondition
  hexagonConditionClosed : B.hexagonCondition
  braidingNaturalityClosed : B.braidingNaturality

def BraidedMonoidalClosed (B : BraidedMonoidalCategory) : Prop :=
  B.pentagonCondition ∧ B.triangleCondition ∧ B.hexagonCondition ∧ B.braidingNaturality

theorem braided_monoidal_closed_from_evidence (B : BraidedMonoidalCategory) (E : BraidedMonoidalEvidence B) :
    BraidedMonoidalClosed B := by
  exact And.intro E.pentagonConditionClosed (And.intro E.triangleConditionClosed (And.intro E.hexagonConditionClosed E.braidingNaturalityClosed))

end BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean
end HautevilleHouse