import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean

structure DualStructure where
  leftDual : Type u → Type u
  rightDual : Type u → Type u
  evaluation : Prop
  coevaluation : Prop
  triangleIdentities : Prop

structure DualStructureEvidence (D : DualStructure) where
  evaluationClosed : D.evaluation
  coevaluationClosed : D.coevaluation
  triangleIdentitiesClosed : D.triangleIdentities

def DualStructureClosed (D : DualStructure) : Prop :=
  D.evaluation ∧ D.coevaluation ∧ D.triangleIdentities

theorem dual_structure_closed_from_evidence (D : DualStructure) (E : DualStructureEvidence D) :
    DualStructureClosed D := by
  exact And.intro E.evaluationClosed
    (And.intro E.coevaluationClosed E.triangleIdentitiesClosed)

end BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean
end HautevilleHouse
