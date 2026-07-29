import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean

structure MonoidalCategory where
  tensorProduct : Type u → Type u → Type u
  unitObject : Type u
  associatorConstraints : Prop
  leftUnitorConstraints : Prop
  rightUnitorConstraints : Prop
  pentagonCondition : Prop
  triangleCondition : Prop

structure MonoidalCategoryEvidence (M : MonoidalCategory) where
  associatorConstraintsClosed : M.associatorConstraints
  leftUnitorConstraintsClosed : M.leftUnitorConstraints
  rightUnitorConstraintsClosed : M.rightUnitorConstraints
  pentagonConditionClosed : M.pentagonCondition
  triangleConditionClosed : M.triangleCondition

def MonoidalCategoryClosed (M : MonoidalCategory) : Prop :=
  M.associatorConstraints ∧ M.leftUnitorConstraints ∧
  M.rightUnitorConstraints ∧ M.pentagonCondition ∧ M.triangleCondition

theorem monoidal_category_closed_from_evidence (M : MonoidalCategory) (E : MonoidalCategoryEvidence M) :
    MonoidalCategoryClosed M := by
  exact And.intro E.associatorConstraintsClosed
    (And.intro E.leftUnitorConstraintsClosed
      (And.intro E.rightUnitorConstraintsClosed
        (And.intro E.pentagonConditionClosed E.triangleConditionClosed)))

end BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean
end HautevilleHouse
