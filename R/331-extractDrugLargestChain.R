#' Descriptor that Calculates the Number of Atoms in the Largest Chain
#' 
#' Descriptor that Calculates the Number of Atoms in the Largest Chain
#' 
#' This descriptor calculates the number of atoms in the largest chain. 
#' Note that a chain exists if there are two or more atoms. 
#' Thus single atom molecules will return \code{0}.
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules, each column represents one feature,
#'         This function returns one column named \code{nAtomLC}.
#' 
#' @keywords extractDrugLargestChain Largest Chain
#'
#' @aliases extractDrugLargestChain
#' 
#' @author Nan Xiao <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugLargestChain
#' 
#' @examples
#' \dontrun{
#' mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
#' extractDrugLargestChain(mol)}

extractDrugLargestChain = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.LargestChainDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
