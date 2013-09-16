#' Descriptor that Calculates the Total Weight of Atoms
#'
#' Descriptor that Calculates the Total Weight of Atoms
#' 
#' This descriptor calculates the molecular weight.
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules, each column represents one feature,
#'         This function returns one column named \code{MW}.
#' 
#' @keywords extractDrugWeight Weight
#'
#' @aliases extractDrugWeight
#' 
#' @author Xiao Nan <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugWeight
#' 
#' @examples
#' \dontrun{
#' mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
#' extractDrugWeight(mol)}

extractDrugWeight = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.WeightDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
