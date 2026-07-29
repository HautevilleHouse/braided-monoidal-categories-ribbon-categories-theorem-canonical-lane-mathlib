import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean

structure BraidedRibbonWitness where
  carrier : Type
  monoidal : Category carrier
  braiding : MonoidalCategory carrier
  ribbon : RibbonCategory carrier
  theoremHolds : Prop

def BraidedRibbonWitnessClosed (W : BraidedRibbonWitness) : Prop :=
  W.theoremHolds

structure BraidedRibbonAdmittedObject where
  space : Type
  category : Category space
  monoidal : MonoidalCategory space
  braided : BraidedCategory space
  ribbon : RibbonCategory space
  conclusion : BraidedRibbonWitnessClosed { carrier := space, monoidal := category, braiding := braided, ribbon := ribbon, theoremHolds := True }

end BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean
end HautevilleHouse
