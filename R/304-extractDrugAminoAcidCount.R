#' Calculates the Number of Amino Acids Descriptor
#'
#' Calculates the Number of Amino Acids Descriptor
#'
#' Calculates the number of each amino acids (total 20 types) found in the molecues.
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules, each column represents one feature,
#'         This function returns 20 columns named 
#'         \code{nA}, \code{nR}, \code{nN}, \code{nD}, \code{nC},
#'         \code{nF}, \code{nQ}, \code{nE}, \code{nG}, \code{nH}, 
#'         \code{nI}, \code{nP}, \code{nL} \code{nK}, \code{nM}, 
#'         \code{nS}, \code{nT}, \code{nY} \code{nV}, \code{nW}.
#' 
#' @keywords extractDrugAminoAcidCount Amino Acid Count
#'
#' @aliases extractDrugAminoAcidCount
#' 
#' @author Nan Xiao <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugAminoAcidCount
#' 
#' @examples
#' \dontrun{
#' mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
#' extractDrugAminoAcidCount(mol)}
#' 

extractDrugAminoAcidCount = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.AminoAcidCountDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
