#' Amino Acid Composition Descriptor
#'
#' Amino Acid Composition Descriptor
#' 
#' This function calculates the Amino Acid Composition descriptor (Dim: 20).
#' 
#' @param x A character vector, as the input protein sequence. 
#'
#' @return A length 20 named vector
#' 
#' @keywords extract AAC extractProtAAC Amino Acid Composition
#'
#' @aliases extractProtAAC
#' 
#' @author Nan Xiao <\url{http://www.road2stat.com}>
#' 
#' @seealso See \code{\link{extractProtDC}} and \code{\link{extractProtTC}} 
#'          for Dipeptide Composition and Tripeptide Composition descriptors.
#' 
#' @export extractProtAAC
#' 
#' @references
#' M. Bhasin, G. P. S. Raghava.
#' Classification of Nuclear Receptors Based on 
#' Amino Acid Composition and Dipeptide Composition. 
#' \emph{Journal of Biological Chemistry}, 2004, 279, 23262.
#' 
#' @examples
#' x = readFASTA(system.file('protseq/P00750.fasta', package = 'Rcpi'))[[1]]
#' extractProtAAC(x)
#' 

extractProtAAC = function (x) {

    if (checkProt(x) == FALSE) stop('x has unrecognized amino acid type')

    AADict = c('A', 'R', 'N', 'D', 'C', 'E', 'Q', 'G', 'H', 'I', 
               'L', 'K', 'M', 'F', 'P', 'S', 'T', 'W', 'Y', 'V')

    AAC = summary(factor(strsplit(x, split = '')[[1]], levels = AADict), 
                  maxsum = 21)/nchar(x)

    return(AAC)

}
