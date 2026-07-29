import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean.RibbonCategories

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let B := A.object.space -- assume object carries a braided monoidal category
  BraidedMonoidalCategoryClosed B

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  -- assume object has evidence
  sorry

end BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean
end HautevilleHouse