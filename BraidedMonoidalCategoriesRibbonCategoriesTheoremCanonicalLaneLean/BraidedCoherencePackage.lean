import BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean

structure BraidedCoherencePackage where
  hexagonAxiom : Prop
  triangleAxiom : Prop
  syllepsis : Prop
  braidingNaturality : Prop

structure BraidedCoherenceEvidence (B : BraidedCoherencePackage) where
  hexagonAxiomClosed : B.hexagonAxiom
  triangleAxiomClosed : B.triangleAxiom
  syllepsisClosed : B.syllepsis
  braidingNaturalityClosed : B.braidingNaturality

def BraidedCoherenceClosed (B : BraidedCoherencePackage) : Prop :=
  B.hexagonAxiom ∧ B.triangleAxiom ∧ B.syllepsis ∧ B.braidingNaturality

theorem braided_coherence_closed_from_evidence (B : BraidedCoherencePackage) (E : BraidedCoherenceEvidence B) :
    BraidedCoherenceClosed B := by
  exact And.intro E.hexagonAxiomClosed (And.intro E.triangleAxiomClosed (And.intro E.syllepsisClosed E.braidingNaturalityClosed))

end BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean
end HautevilleHouse