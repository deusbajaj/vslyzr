#' @title varbarplot
#'
#' @name varbarplot
#' @description
#' Barplot of a numeric matrix from a VCF file.
#' @param matrix a numeric matrix.
#' @param title a title for the barplot produced.
#' @param legend a logical indicating whether to plot a legend, default is FALSE.
#' @return A barplot
#' @seealso \code{\link{seq}}
#' @examples
#' data(vslyzr_example)
#' chrom <- create.chromR('sc50', seq=dna, vcf=vcf, ann=gff)
#' chrom <- masker(chrom)
#' elems <- extract.gt(chrom, element="GQ", as.numeric=TRUE)
#' varbarplot(elems)
#' @export

varbarplot <- function(matrix, title, legend = FALSE) {

stopifnot(class(matrix) == 'matrix')

num_rows <- 2
num_cols <- 2
if(legend == TRUE){ num_cols <- num_cols + 1 }

#if( legend == TRUE ){
# graphics::layout(matrix(1:2, nrow=num_rows, ncol=num_cols, byrow = TRUE), widths=c(4, 0.2))
#}

if (legend == TRUE) {
  barplot(matrix, legend = colnames(elems), col=c("darkblue","red"))
}
  barplot(matrix, col=c("darkblue","red"))

  #graphics::text(0.5, mp[1,1], "Low", col="#FFFFFF", adj=c(0.5,0))
  #graphics::text(0.5, mp[nrow(mp),1], "High", col="#FFFFFF", adj=c(0.5,1))

}

# [END]
