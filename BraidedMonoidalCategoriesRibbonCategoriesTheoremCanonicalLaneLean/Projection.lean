import canonicalLaneMathlib.AdmissibleClass
import BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def ribbonCategoryProjection : Projection RibbonCategoryEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem ribbon_category_projection_idempotent (x : RibbonCategoryEndgameState) :
    ribbonCategoryProjection.toFun (ribbonCategoryProjection.toFun x) = ribbonCategoryProjection.toFun x := by
  exact ribbonCategoryProjection.idempotent x

end BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean
end HautevilleHouse
