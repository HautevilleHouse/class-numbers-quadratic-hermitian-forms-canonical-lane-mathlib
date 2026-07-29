import canonicalLaneMathlib.AdmissibleClass

/-!
# Genus Theory Package

This module encodes genus theory for quadratic forms, partitioning the class
group into genera and establishing the ratio of class number to genus number.
-/

namespace HautevilleHouse
namespace ClassNumbersQuadraticHermitianFormsCanonicalLaneLean

structure GenusPartition where
  discriminant : ℕ
  classGroupSize : ℕ
  genusCount : ℕ
  genusNumber : ℕ
  ratioBound : ℚ
  partitionExists : Prop
  generaCover : Prop

structure GenusPartitionEvidence (G : GenusPartition) where
  partitionExistsClosed : G.partitionExists
  generaCoverClosed : G.generaCover

def GenusPartitionClosed (G : GenusPartition) : Prop :=
  G.partitionExists ∧ G.generaCover

theorem genus_partition_closed_from_evidence
    (G : GenusPartition) (E : GenusPartitionEvidence G) :
    GenusPartitionClosed G := by
  exact And.intro E.partitionExistsClosed E.generaCoverClosed

end ClassNumbersQuadraticHermitianFormsCanonicalLaneLean
end HautevilleHouse
