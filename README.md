# vslyzr

## R Package Template

vslyzr is a variant visualization package that provides graphical visualization of VCF fies after variant calling.

  [R Packages](http://r-pkgs.had.co.nz/) <http://r-pkgs.had.co.nz/>

-----------------------------------------------

Load the package (outside of this project) with:
    `devtools::install_github("deusbajaj/vslyzr")`
    
The step-by-step process on how to run the project

#Load the dataset &nbsp;
load("./data/vslyzr_example.rdata")

#Creates an object of class chromR from variant data
chrom <- create.chromR('sc50', seq=dna, vcf=vcf, ann=gff)
chrom <- masker(chrom)
elems <- extract.gt(chrom, element="GQ", as.numeric=TRUE)


#Plot the numeric matrix from the VCF file.
varbarplot(elems)



