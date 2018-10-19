# vslyzr

## R Package Template

vslyzr is a variant visualization package that provides graphical visualization of VCF fies after variant calling.

  [R Packages](http://r-pkgs.had.co.nz/) <http://r-pkgs.had.co.nz/>
<<<<<<< HEAD

-----------------------------------------------

Load the package (outside of this project) with:
    `devtools::install_github("deusbajaj/vslyzr")`
    
# ====  PROCESS  ===============================================================
# The step-by-step process on how to run the project
=======
 
-----------------------------------------------

Some useful keyboard shortcuts for package authoring:

* Build and Reload Package:  `Cmd + Shift + B`
* Update Documentation:      `Cmd + Shift + D` or `devtools::document()`
* Test Package:              `Cmd + Shift + T`
* Check Package:             `Cmd + Shift + E` or `devtools::check()`
>>>>>>> 2cd4ce40172411348f02515197efa7e444fd52de

#Load the dataset
load("./data/vslyzr_example.rdata")

#Creates an object of class chromR from variant data
chrom <- create.chromR('sc50', seq=dna, vcf=vcf, ann=gff)
chrom <- masker(chrom)
elems <- extract.gt(chrom, element="GQ", as.numeric=TRUE)

<<<<<<< HEAD
#Plot the numeric matrix from the VCF file.
varbarplot(elems)
=======
Load the package (outside of this project) with:
    `devtools::install_github("deusbajaj/vslyzr")`
>>>>>>> 2cd4ce40172411348f02515197efa7e444fd52de


