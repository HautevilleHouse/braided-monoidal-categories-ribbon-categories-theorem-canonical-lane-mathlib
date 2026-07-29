import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean.RibbonCategoryStructure

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean

structure TwistEqualityPackage (B : BraidedMonoidalCategory) (R : RibbonCategory B) where
  twistCompatibleWithBraiding : Prop
  twistInverse : Prop
  twistNaturality : Prop

def twistEqualityClosed (B : BraidedMonoidalCategory) (R : RibbonCategory B) (T : TwistEqualityPackage B R) : Prop :=
  T.twistCompatibleWithBraiding ∧ T.twistInverse ∧ T.twistNaturality

end BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean
end HautevilleHouse