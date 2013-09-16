#' Descriptor that Calculates the Volume of A Molecule
#'
#' Descriptor that Calculates the Volume of A Molecule
#'  
#' This descriptor calculates the volume of a molecule.
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules, each column represents one feature,
#'         This function returns one column named \code{VABC}.
#' 
#' @keywords extractDrugVABC Volume VABC
#'
#' @aliases extractDrugVABC
#' 
#' @author Xiao Nan <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugVABC
#' 
#' @examples
#' \dontrun{
#' mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
#' extractDrugVABC(mol)}

extractDrugVABC = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.VABCDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
