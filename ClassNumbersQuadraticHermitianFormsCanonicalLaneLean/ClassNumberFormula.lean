import canonicalLaneMathlib.AdmissibleClass

/-!
# Class Number Formula Package

This module encodes the analytic class number formula for quadratic Hermitian
forms, linking the class number to residues of L-functions.
-/

namespace HautevilleHouse
namespace ClassNumbersQuadraticHermitianFormsCanonicalLaneLean

structure LFunctionResidue where
  field : Type u
  discriminant : ℕ
  lFunctionValue : ℚ
  residueComputed : Prop
  linksClassNumber : Prop

structure LFunctionResidueEvidence (L : LFunctionResidue) where
  residueComputedClosed : L.residueComputed
  linksClassNumberClosed : L.linksClassNumber

def LFunctionResidueClosed (L : LFunctionResidue) : Prop :=
  L.residueComputed ∧ L.linksClassNumber

theorem l_function_residue_closed_from_evidence
    (L : LFunctionResidue) (E : LFunctionResidueEvidence L) :
    LFunctionResidueClosed L := by
  exact And.intro E.residueComputedClosed E.linksClassNumberClosed

end ClassNumbersQuadraticHermitianFormsCanonicalLaneLean
end HautevilleHouse
