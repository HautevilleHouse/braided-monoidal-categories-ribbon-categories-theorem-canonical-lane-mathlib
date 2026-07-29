import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean.FinalTheorem
import Mathlib.Tactic

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean

structure RibbonSpace where
  carrier : Type

type u

structure RibbonAdmittedObject where
  space : RibbonSpace
  braidedMonoidalCat : BraidedMonoidalCategory
  ribbonCat : RibbonCategory braidedMonoidalCat
  conclusion : RibbonCategoryClosed braidedMonoidalCat ribbonCat

structure RibbonEndgameState where
  object : RibbonAdmittedObject

def RibbonWitnessClosed (O : RibbonAdmittedObject) : Prop :=
  RibbonCategoryClosed O.braidedMonoidalCat O.ribbonCat

end BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean
end HautevilleHouse