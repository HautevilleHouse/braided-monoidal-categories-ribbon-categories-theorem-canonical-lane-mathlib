import BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean.BraidedCoherencePackage

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean

structure RibbonTwistEvidence where
  twistNaturality : Prop
  twistCompatibility : Prop
  ribbonCondition : Prop

def RibbonTwistEvidenceClosed (E : RibbonTwistEvidence) : Prop :=
  E.twistNaturality ∧ E.twistCompatibility ∧ E.ribbonCondition

theorem ribbon_twist_evidence_closed (E : RibbonTwistEvidence) : RibbonTwistEvidenceClosed E := by
  exact And.intro E.twistNaturality (And.intro E.twistCompatibility E.ribbonCondition)

end BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean
end HautevilleHouse