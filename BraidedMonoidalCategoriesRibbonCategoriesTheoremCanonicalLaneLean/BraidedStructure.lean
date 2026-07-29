import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean

structure BraidedMonoidalStructure (C : Type u) [Category.{v} C] [MonoidalCategory C] where
  braiding : ∀ X Y : C, X ⊗ Y ≅ Y ⊗ X
  hexagonL : ∀ X Y Z : C, (braiding X (Y ⊗ Z)) ≫ (braiding X Y ▷ Z) ≫ (Y ◁ braiding X Z) = (braiding X Y ▷ Z) ≫ (Y ◁ braiding X Z) ≫ (braiding X (Y ⊗ Z)) := by
    intro X Y Z; simp
  hexagonR : ∀ X Y Z : C, (braiding (X ⊗ Y) Z) ≫ (X ◁ braiding Y Z) ≫ (braiding X Z ▷ Y) = (X ◁ braiding Y Z) ≫ (braiding X Z ▷ Y) ≫ (braiding (X ⊗ Y) Z) := by
    intro X Y Z; simp
  naturalityLeft : ∀ {X Y Z : C} (f : X ⟶ Y), (braiding X Z) ≫ (f ▷ Z) = (Z ◁ f) ≫ (braiding Y Z) := by
    intro X Y Z f; simp
  naturalityRight : ∀ {X Y Z : C} (f : Y ⟶ Z), (braiding X Y) ≫ (X ◁ f) = (f ▷ X) ≫ (braiding X Z) := by
    intro X Y Z f; simp

end BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean
end HautevilleHouse
