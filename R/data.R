#' Example data for vslyzr.
#'
#' An example dataset is a subset of the pinfsc50 dataset.
#' This data consists of 3 samples and 5 variants.
#'
#' \describe{
#'   \item dna DNAbin object
#'   \item gff gff format data.frame
#'   \item vcf vcfR object
#' }
#'
#' @source \url{https://github.com/knausb/vcfR/blob/master/data/vcfR_example.rdata}
#' @examples
#' data(vslyzr_example)
#' \dontrun{
#' system.file("data", "vslyzr_example.rdata", package="vslyzr")
#' fPath <- system.file("data", "vslyzr_example.rdata", package="vslyzr")
#' }
#'
#' @docType data
#' @name vslyzr_example.rdata
NULL



