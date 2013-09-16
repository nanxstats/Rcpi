#' Descriptor that Calculates the Vertex Adjacency Information of A Molecule
#'
#' Descriptor that Calculates the Vertex Adjacency Information of A Molecule
#' 
#' Vertex adjacency information (magnitude): 
#' \eqn{1 + \log_2^m} where \eqn{m} is the number of heavy-heavy bonds. 
#' If \eqn{m} is zero, then \code{0} is returned.
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules, each column represents one feature,
#'         This function returns one column named \code{VAdjMat}.
#' 
#' @keywords extractDrugVAdjMa Vertex Adjacency Magnitude
#'
#' @aliases extractDrugVAdjMa
#' 
#' @author Xiao Nan <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugVAdjMa
#' 
#' @examples
#' \dontrun{
#' mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
#' extractDrugVAdjMa(mol)}

extractDrugVAdjMa = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.VAdjMaDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
