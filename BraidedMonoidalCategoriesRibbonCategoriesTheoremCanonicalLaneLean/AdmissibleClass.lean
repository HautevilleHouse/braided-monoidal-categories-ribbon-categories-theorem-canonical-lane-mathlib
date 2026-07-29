import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : RibbonAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  RibbonWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean
end HautevilleHouse