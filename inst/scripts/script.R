# scriptTemplate.R
#
# Purpose: To show the capabilities of vslyzr on sample VCF data
# Version: 1.0
# Date: 2018-10-06
# Author: Deus Bajaj
#
# Input: N/A
# Output: Plot
# Dependencies: vslyzr, VariantTools, vcfR
#
# ==============================================================================

# ====  PACKAGES  ==============================================================
# Load all required packages.

if (! require(seqinr, quietly=TRUE)) {
  install.packages("seqinr")
  library(seqinr)
}
library(vslyzr)
library(vcfR)


# ====  PROCESS  ===============================================================
# Enter the step-by-step process of your project here. Strive to write your
# code so that you can simply run this entire file and re-create all
# intermediate results.

#Load the dataset
load("./data/vslyzr_example.rdata")

#Creates an object of class chromR from variant data
chrom <- create.chromR('sc50', seq=dna, vcf=vcf, ann=gff)
chrom <- masker(chrom)
elems <- extract.gt(chrom, element="GQ", as.numeric=TRUE)

#Plot the numeric matrix from the VCF file.
varbarplot(elems)

# [END]
