import canonicalLaneMathlib.AdmissibleClass

/-!
# Class Group of Hermitian Forms Package

This module encapsulates the structure of class groups of quadratic Hermitian forms.
The class group measures the failure of unique factorization in orders of
CM-fields, encoded here as an admissible-class bridge.
-/

namespace HautevilleHouse
namespace ClassNumbersQuadraticHermitianFormsCanonicalLaneLean

structure HermitianFormOrder where
  ring : Type u
  involution : ring → ring
  orderSubring : Set ring
  discriminant : ℕ
  classGroupType : Type v
  classGroupFinite : Prop
  classNumber : ℕ

structure HermitianFormOrderEvidence (O : HermitianFormOrder) where
  ringInvolutionConsistent : ∀ x : O.ring, O.involution (O.involution x) = x
  orderSubringClosedUnderInvolution : ∀ x ∈ O.orderSubring, O.involution x ∈ O.orderSubring
  classGroupFiniteClosed : O.classGroupFinite
  classNumberPositive : O.classNumber > 0

def HermitianFormOrderClosed (O : HermitianFormOrder) : Prop :=
  (∀ x : O.ring, O.involution (O.involution x) = x) ∧
  (∀ x ∈ O.orderSubring, O.involution x ∈ O.orderSubring) ∧
  O.classGroupFinite ∧
  O.classNumber > 0

theorem hermitian_form_order_closed_from_evidence
    (O : HermitianFormOrder) (E : HermitianFormOrderEvidence O) :
    HermitianFormOrderClosed O := by
  exact And.intro E.ringInvolutionConsistent
    (And.intro E.orderSubringClosedUnderInvolution
      (And.intro E.classGroupFiniteClosed E.classNumberPositive))

end ClassNumbersQuadraticHermitianFormsCanonicalLaneLean
end HautevilleHouse
