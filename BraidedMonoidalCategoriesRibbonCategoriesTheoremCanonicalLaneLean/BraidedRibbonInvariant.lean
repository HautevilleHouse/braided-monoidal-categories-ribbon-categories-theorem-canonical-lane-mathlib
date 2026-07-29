import HautevilleHouse.BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean.RibbonGraphicalCalculus

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean

structure BraidedRibbonInvariantPackage {B : BraidingStructurePackage} {R : RibbonCategoryPackage B}
    {G : RibbonGraphicalCalculusPackage B R} where
  invariantTarget : Type u
  invariantMap : G.graphMorphisms → invariantTarget
  invarianceUnderRelations : Prop
  multiplicativeProperty : Prop

structure BraidedRibbonInvariantEvidence {B : BraidingStructurePackage} {R : RibbonCategoryPackage B}
    {G : RibbonGraphicalCalculusPackage B R} (I : BraidedRibbonInvariantPackage B R G) where
  invarianceUnderRelationsClosed : I.invarianceUnderRelations
  multiplicativePropertyClosed : I.multiplicativeProperty

def BraidedRibbonInvariantClosed {B : BraidingStructurePackage} {R : RibbonCategoryPackage B}
    {G : RibbonGraphicalCalculusPackage B R} (I : BraidedRibbonInvariantPackage B R G) : Prop :=
  I.invarianceUnderRelations ∧ I.multiplicativeProperty

theorem braided_ribbon_invariant_closed_from_evidence
    {B : BraidingStructurePackage} {R : RibbonCategoryPackage B}
    {G : RibbonGraphicalCalculusPackage B R} (I : BraidedRibbonInvariantPackage B R G)
    (E : BraidedRibbonInvariantEvidence I) : BraidedRibbonInvariantClosed I := by
  exact And.intro E.invarianceUnderRelationsClosed E.multiplicativePropertyClosed

end BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean
end HautevilleHouse