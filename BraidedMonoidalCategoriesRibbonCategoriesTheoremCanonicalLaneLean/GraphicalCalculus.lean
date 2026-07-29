import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean

structure GraphicalCalculus where
  overUnderCrossings : Prop
  yankeeMove : Prop
  ReidemeisterMoves : Prop
  overUnderCrossingsTerm : overUnderCrossings
  yankeeMoveTerm : yankeeMove
  ReidemeisterMovesTerm : ReidemeisterMoves

structure GraphicalCalculusEvidence (G : GraphicalCalculus) where
  overUnderCrossingsClosed : G.overUnderCrossings
  yankeeMoveClosed : G.yankeeMove
  ReidemeisterMovesClosed : G.ReidemeisterMoves

def GraphicalCalculusClosed (G : GraphicalCalculus) : Prop :=
  G.overUnderCrossings ∧ G.yankeeMove ∧ G.ReidemeisterMoves

theorem graphical_calculus_closed_from_evidence (G : GraphicalCalculus) (E : GraphicalCalculusEvidence G) :
    GraphicalCalculusClosed G := by
  exact And.intro E.overUnderCrossingsClosed (And.intro E.yankeeMoveClosed E.ReidemeisterMovesClosed)

end BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean
end HautevilleHouse