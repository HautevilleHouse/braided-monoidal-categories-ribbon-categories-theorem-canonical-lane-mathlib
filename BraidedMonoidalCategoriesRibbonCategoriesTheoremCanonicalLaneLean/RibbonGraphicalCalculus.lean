import HautevilleHouse.BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean.RibbonCategory

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean

structure RibbonGraphicalCalculusPackage {B : BraidingStructurePackage} {R : RibbonCategoryPackage B} where
  graphMorphisms : Type u
  composition : graphMorphisms → graphMorphisms → graphMorphisms
  tensorProduct : graphMorphisms → graphMorphisms → graphMorphisms
  braidingGraphical : Prop
  twistGraphical : Prop
  graphicalRelations : Prop

structure RibbonGraphicalCalculusEvidence {B : BraidingStructurePackage} {R : RibbonCategoryPackage B}
    (G : RibbonGraphicalCalculusPackage B R) where
  braidingGraphicalClosed : G.braidingGraphical
  twistGraphicalClosed : G.twistGraphical
  graphicalRelationsClosed : G.graphicalRelations

def RibbonGraphicalCalculusClosed {B : BraidingStructurePackage} {R : RibbonCategoryPackage B}
    (G : RibbonGraphicalCalculusPackage B R) : Prop :=
  G.braidingGraphical ∧ G.twistGraphical ∧ G.graphicalRelations

theorem ribbon_graphical_calculus_closed_from_evidence
    {B : BraidingStructurePackage} {R : RibbonCategoryPackage B}
    (G : RibbonGraphicalCalculusPackage B R) (E : RibbonGraphicalCalculusEvidence G) :
    RibbonGraphicalCalculusClosed G := by
  exact And.intro E.braidingGraphicalClosed (And.intro E.twistGraphicalClosed E.graphicalRelationsClosed)

end BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean
end HautevilleHouse