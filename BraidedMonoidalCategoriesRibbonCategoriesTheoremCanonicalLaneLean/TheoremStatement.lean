import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BraidedRibbonAdmittedObject where
  space : Type u
  categoryStructure : CategoryStruct space
  braidedMonoidal : BraidedMonoidalCategory space
  ribbonStructure : RibbonCategory space
  conclusion : ribbonStructure

def BraidedRibbonWitnessClosed (O : BraidedRibbonAdmittedObject) : Prop :=
  O.ribbonStructure

end BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean
end HautevilleHouse
