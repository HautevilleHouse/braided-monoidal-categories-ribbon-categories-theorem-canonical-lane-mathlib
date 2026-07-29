import canonialLaneMathlib.AdmissibleClass
import HautevilleHouse.BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean.BraidedMonoidalCategories

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean

structure RibbonCategory (B : BraidedMonoidalCategory) where
  dual : B.object → B.object
  unitDual : B.unit ≅ dual B.unit
  evaluation : ∀ A : B.object, (B.tensorProduct (dual A) A) ⟶ B.unit
  coevaluation : ∀ A : B.object, B.unit ⟶ (B.tensorProduct A (dual A))
  ribbonMorphism : ∀ A : B.object, A ⟶ A
  triangleCompatibility : Prop
  hexagonCompatibility : Prop
  ribbonCondition : Prop

structure RibbonCategoryEvidence {B : BraidedMonoidalCategory} (R : RibbonCategory B) where
  triangleCompatibilityClosed : R.triangleCompatibility
  hexagonCompatibilityClosed : R.hexagonCompatibility
  ribbonConditionClosed : R.ribbonCondition

def RibbonCategoryClosed {B : BraidedMonoidalCategory} (R : RibbonCategory B) : Prop :=
  R.triangleCompatibility ∧ R.hexagonCompatibility ∧ R.ribbonCondition

theorem ribbon_category_closed_from_evidence {B : BraidedMonoidalCategory} (R : RibbonCategory B)
    (E : RibbonCategoryEvidence R) : RibbonCategoryClosed R := by
  exact And.intro E.triangleCompatibilityClosed
    (And.intro E.hexagonCompatibilityClosed E.ribbonConditionClosed)

end BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean
end HautevilleHouse