import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean.BraidedMonoidalCategory

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean

structure RibbonCategory (B : BraidedMonoidalCategory) where
  dual : B.object → B.object
  unit : B.object
  evaluation : (X : B.object) → B.tensor (dual X) X ⟶ B.unit
  coevaluation : (X : B.object) → B.unit ⟶ B.tensor X (dual X)
  ribbonTwist : (X : B.object) → X ⟶ X
  triangleAxiom : Prop
  rigidityCondition : Prop
  ribbonCondition : (X : B.object) → ribbonTwist X = (B.braiding X X) ∘ (ribbonTwist X) ∘ (B.braiding X X)

structure RibbonEvidence (B : BraidedMonoidalCategory) (R : RibbonCategory B) where
  triangleAxiomClosed : R.triangleAxiom
  rigidityConditionClosed : R.rigidityCondition

def RibbonCategoryClosed (B : BraidedMonoidalCategory) (R : RibbonCategory B) : Prop :=
  R.triangleAxiom ∧ R.rigidityCondition

theorem ribbon_closed_from_evidence (B : BraidedMonoidalCategory) (R : RibbonCategory B) (E : RibbonEvidence B R) :
    RibbonCategoryClosed B R := by
  exact And.intro E.triangleAxiomClosed E.rigidityConditionClosed

end BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean
end HautevilleHouse