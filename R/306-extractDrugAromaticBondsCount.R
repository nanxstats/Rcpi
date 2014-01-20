#' Calculates the Number of Aromatic Bonds Descriptor
#'
#' Calculates the Number of Aromatic Bonds Descriptor
#'
#' Calculates the number of aromatic bonds of a molecule.
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules, each column represents one feature,
#'         This function returns one column named \code{nAromBond}.
#' 
#' @keywords extractDrugAromaticBondsCount Aromatic Bond Count
#'
#' @aliases extractDrugAromaticBondsCount
#' 
#' @author Nan Xiao <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugAromaticBondsCount
#' 
#' @examples
#' \dontrun{
#' mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
#' extractDrugAromaticBondsCount(mol)}
#' 

extractDrugAromaticBondsCount = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.AromaticBondsCountDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
