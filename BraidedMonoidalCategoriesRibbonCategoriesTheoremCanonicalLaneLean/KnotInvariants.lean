import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean

structure KnotInvariants where
  jonesPolynomial : Prop
  hOMFLYPolynomial : Prop
  kauffmanBracket : Prop
  linkInvariance : Prop
  jonesPolynomialTerm : jonesPolynomial
  hOMFLYPolynomialTerm : hOMFLYPolynomial
  kauffmanBracketTerm : kauffmanBracket
  linkInvarianceTerm : linkInvariance

structure KnotInvariantsEvidence (K : KnotInvariants) where
  jonesPolynomialClosed : K.jonesPolynomial
  hOMFLYPolynomialClosed : K.hOMFLYPolynomial
  kauffmanBracketClosed : K.kauffmanBracket
  linkInvarianceClosed : K.linkInvariance

def KnotInvariantsClosed (K : KnotInvariants) : Prop :=
  K.jonesPolynomial ∧ K.hOMFLYPolynomial ∧ K.kauffmanBracket ∧ K.linkInvariance

theorem knot_invariants_closed_from_evidence (K : KnotInvariants) (E : KnotInvariantsEvidence K) :
    KnotInvariantsClosed K := by
  exact And.intro E.jonesPolynomialClosed (And.intro E.hOMFLYPolynomialClosed
    (And.intro E.kauffmanBracketClosed E.linkInvarianceClosed))

end BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean
end HautevilleHouse