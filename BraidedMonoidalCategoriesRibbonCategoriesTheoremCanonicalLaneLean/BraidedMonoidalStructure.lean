import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean

structure BraidedMonoidalCategory where
  obj : Type u
  hom : obj → obj → Type v
  id : (X : obj) → hom X X
  comp : {X Y Z : obj} → hom X Y → hom Y Z → hom X Z
  tensor : obj → obj → obj
  tensorHom : {X Y Z W : obj} → hom X Y → hom Z W → hom (tensor X Z) (tensor Y W)
  associator : (X Y Z : obj) → hom (tensor (tensor X Y) Z) (tensor X (tensor Y Z))
  leftUnitor : (X : obj) → hom (tensor unit X) X
  rightUnitor : (X : obj) → hom (tensor X unit) X
  braiding : (X Y : obj) → hom (tensor X Y) (tensor Y X)
  unit : obj
  pentagon : Prop
  triangle : Prop
  hexagon : Prop

def braidedClosed (B : BraidedMonoidalCategory) : Prop :=
  B.pentagon ∧ B.triangle ∧ B.hexagon

end BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean
end HautevilleHouse