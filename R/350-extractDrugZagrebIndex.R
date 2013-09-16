#' Descriptor that Calculates the Sum of the Squared Atom Degrees of All Heavy Atoms
#'
#' Descriptor that Calculates the Sum of the Squared Atom Degrees of All Heavy Atoms
#' 
#' Zagreb index: the sum of the squares of atom degree over all heavy atoms \code{i}.
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules, each column represents one feature,
#'         This function returns one column named \code{Zagreb}.
#' 
#' @keywords extractDrugZagrebIndex Zagreb
#'
#' @aliases extractDrugZagrebIndex
#' 
#' @author Xiao Nan <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugZagrebIndex
#' 
#' @examples
#' \dontrun{
#' mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
#' extractDrugZagrebIndex(mol)}

extractDrugZagrebIndex = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.ZagrebIndexDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
