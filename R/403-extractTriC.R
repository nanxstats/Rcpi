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
#' @keywords extract TriC extractTriC Tripeptide Composition
#'
#' @aliases extractTriC
#' 
#' @author Xiao Nan <\url{http://www.road2stat.com}>
#' 
#' @seealso See \code{\link{extractAAC}} and \code{\link{extractDC}} 
#'          for Amino Acid Composition and Dipeptide Composition descriptors.
#' 
#' @export extractTriC
#' 
#' @references
#' M. Bhasin, G. P. S. Raghava.
#' Classification of Nuclear Receptors Based on 
#' Amino Acid Composition and Dipeptide Composition. 
#' \emph{Journal of Biological Chemistry}, 2004, 279, 23262.
#' 
#' @examples
#' x = readFASTA(system.file('protseq/P00750.fasta', package = 'Rcpi'))[[1]]
#' extractTriC(x)
#' 

extractTriC = function (x) {
  
  if (protcheck(x) == FALSE) stop('x has unrecognized amino acid type')
  
  # To achieve maximum performance, here we use dictionary directly
  # TCDict could also be generated with
  # AADict = c('A', 'R', 'N', 'D', 'C', 'E', 'Q', 'G', 'H', 'I', 
  #            'L', 'K', 'M', 'F', 'P', 'S', 'T', 'W', 'Y', 'V')
  # DCDict = as.vector((outer(AADict, AADict, paste, sep = '')))
  # TCDict = as.vector((outer(DCDict, AADict, paste, sep = '')))
  
  zzz = environment()
  
  load(system.file('sysdata/TCDict.rda', package = 'Rcpi'), envir = zzz)
  
  xSplitted = strsplit(x, split = '')[[1]]
  n  = nchar(x)
  TC = summary(factor(paste(paste(xSplitted[-c(n, n-1)], 
                                  xSplitted[-c(1, n)], sep = ''), 
                            xSplitted[-c(1, 2)], sep = ''), 
                      levels = TCDict), maxsum = 8001)/(n-2)
  
  return(TC)

}

