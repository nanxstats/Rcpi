#' Descriptor that Calculates the Number of Atoms in the Largest Pi Chain
#'
#' Descriptor that Calculates the Number of Atoms in the Largest Pi Chain
#' 
#' This descriptor calculates the number of atoms in the largest pi chain.
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules, each column represents one feature,
#'         This function returns one column named \code{nAtomP}.
#' 
#' @keywords extractDrugLargestPiSystem Largest Pi Chain
#'
#' @aliases extractDrugLargestPiSystem
#' 
#' @author Xiao Nan <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugLargestPiSystem
#' 
#' @examples
#' \dontrun{
#' mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
#' extractDrugLargestPiSystem(mol)}

extractDrugLargestPiSystem = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.LargestPiSystemDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
