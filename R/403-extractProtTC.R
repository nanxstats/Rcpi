#' Tripeptide Composition Descriptor
#'
#' Tripeptide Composition Descriptor
#'
#' This function calculates the Tripeptide Composition descriptor (Dim: 8000).
#'
#' @param x A character vector, as the input protein sequence.
#'
#' @return A length 8000 named vector
#'
#' @keywords extract TC extractProtTC Tripeptide Composition
#'
#' @aliases extractProtTC
#'
#' @author Nan Xiao <\url{http://nanx.me}>
#'
#' @seealso See \code{\link{extractProtAAC}} and \code{\link{extractProtDC}}
#'          for Amino Acid Composition and Dipeptide Composition descriptors.
#'
#' @export extractProtTC
#'
#' @references
#' M. Bhasin, G. P. S. Raghava.
#' Classification of Nuclear Receptors Based on
#' Amino Acid Composition and Dipeptide Composition.
#' \emph{Journal of Biological Chemistry}, 2004, 279, 23262.
#'
#' @examples
#' x = readFASTA(system.file('protseq/P00750.fasta', package = 'Rcpi'))[[1]]
#' extractProtTC(x)
#'

extractProtTC = function (x) {

    if (checkProt(x) == FALSE) stop('x has unrecognized amino acid type')

    AADict = c('A', 'R', 'N', 'D', 'C', 'E', 'Q', 'G', 'H', 'I',
               'L', 'K', 'M', 'F', 'P', 'S', 'T', 'W', 'Y', 'V')
    DCDict = as.vector((outer(AADict, AADict, paste, sep = '')))
    TCDict = as.vector((outer(DCDict, AADict, paste, sep = '')))

    xSplitted = strsplit(x, split = '')[[1]]
    n  = nchar(x)
    TC = summary(factor(paste(paste(xSplitted[-c(n, n-1)],
                                    xSplitted[-c(1, n)], sep = ''),
                              xSplitted[-c(1, 2)], sep = ''),
                        levels = TCDict), maxsum = 8001)/(n-2)

    return(TC)

}
