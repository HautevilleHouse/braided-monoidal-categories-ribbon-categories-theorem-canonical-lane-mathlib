import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean

structure BraidingStructure where
  braidingType : Type u
  naturalityLeft : Prop
  naturalityRight : Prop
  hexagonConditions : Prop
  invertibility : Prop

structure BraidingStructureEvidence (B : BraidingStructure) where
  naturalityLeftClosed : B.naturalityLeft
  naturalityRightClosed : B.naturalityRight
  hexagonConditionsClosed : B.hexagonConditions
  invertibilityClosed : B.invertibility

def BraidingStructureClosed (B : BraidingStructure) : Prop :=
  B.naturalityLeft ∧ B.naturalityRight ∧ B.hexagonConditions ∧ B.invertibility

theorem braiding_structure_closed_from_evidence (B : BraidingStructure) (E : BraidingStructureEvidence B) :
    BraidingStructureClosed B := by
  exact And.intro E.naturalityLeftClosed
    (And.intro E.naturalityRightClosed
      (And.intro E.hexagonConditionsClosed E.invertibilityClosed))

end BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean
end HautevilleHouse
