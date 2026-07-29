import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean

structure TwistStructure where
  twist : Type u → Type u
  naturality : Prop
  balancingCondition : Prop
  invertibility : Prop

structure TwistStructureEvidence (T : TwistStructure) where
  naturalityClosed : T.naturality
  balancingConditionClosed : T.balancingCondition
  invertibilityClosed : T.invertibility

def TwistStructureClosed (T : TwistStructure) : Prop :=
  T.naturality ∧ T.balancingCondition ∧ T.invertibility

theorem twist_structure_closed_from_evidence (T : TwistStructure) (E : TwistStructureEvidence T) :
    TwistStructureClosed T := by
  exact And.intro E.naturalityClosed
    (And.intro E.balancingConditionClosed E.invertibilityClosed)

end BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean
end HautevilleHouse
