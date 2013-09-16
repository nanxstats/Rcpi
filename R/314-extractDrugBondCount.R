#' Calculates the Descriptor Based on the Number of Bonds of a Certain Bond Order
#'
#' Calculates the Descriptor Based on the Number of Bonds of a Certain Bond Order
#' 
#' Calculates the descriptor based on the number of bonds of a certain bond order.
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules, each column represents one feature,
#'         This function returns one column named \code{nB}.
#' 
#' @keywords extractDrugBondCount Bond Count
#'
#' @aliases extractDrugBondCount
#' 
#' @author Xiao Nan <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugBondCount
#' 
#' @examples
#' \dontrun{
#' mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
#' extractDrugBondCount(mol)}

extractDrugBondCount = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.BondCountDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
