import BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean.RibbonCategoryEvidence

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean

structure RibbonCertificate where
  braidingCoherent : Prop
  twistCoherent : Prop
  dualityConsistent : Prop
  braidingCoherentClosed : braidingCoherent
  twistCoherentClosed : twistCoherent
  dualityConsistentClosed : dualityConsistent

def RibbonCertificateClosed (C : RibbonCertificate) : Prop :=
  C.braidingCoherent ∧ C.twistCoherent ∧ C.dualityConsistent

theorem ribbon_certificate_closed (C : RibbonCertificate) : RibbonCertificateClosed C := by
  exact And.intro C.braidingCoherentClosed (And.intro C.twistCoherentClosed C.dualityConsistentClosed)

end BraidedMonoidalCategoriesRibbonCategoriesTheoremCanonicalLaneLean
end HautevilleHouse