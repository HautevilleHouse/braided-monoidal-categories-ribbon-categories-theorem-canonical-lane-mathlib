import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean.BraidedMonoidalStructure

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean

structure RibbonCategory (B : BraidedMonoidalCategory) where
  dual : B.obj → B.obj
  evaluation : (X : B.obj) → B.hom (B.tensor (dual X) X) B.unit
  coevaluation : (X : B.obj) → B.hom B.unit (B.tensor X (dual X))
  ribbon : (X : B.obj) → B.hom X X
  dualityProperties : Prop
  ribbonCondition : Prop

def ribbonClosed (B : BraidedMonoidalCategory) (R : RibbonCategory B) : Prop :=
  R.dualityProperties ∧ R.ribbonCondition

end BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean
end HautevilleHouse