#' Read Molecules from SDF Files and Return Parsed Java Molecular Object
#'
#' Read Molecules from SDF Files and Return Parsed Java Molecular Object
#' 
#' This function reads molecules from SDF files and return 
#' parsed Java molecular object needed by \code{extractDrug...} functions.
#' 
#' @param sdffile Character vector, containing SDF file location(s).
#' 
#' @return A list, containing parsed Java molecular object.
#' 
#' @keywords readMolFromSDF MOL SDF
#'
#' @aliases readMolFromSDF
#' 
#' @author Nan Xiao <\url{http://www.road2stat.com}>
#' 
#' @seealso See \code{\link{readMolFromSmi}} for reading molecules by SMILES 
#' string and returning parsed Java molecular object.
#' 
#' @export readMolFromSDF
#' 
#' @importFrom rcdk load.molecules
#' 
#' @examples
#' \donttest{
#' mol  = readMolFromSDF(system.file('compseq/DB00859.sdf', package = 'Rcpi'))
#' mols = readMolFromSDF(c(system.file('compseq/DB00859.sdf', package = 'Rcpi'), 
#'                         system.file('compseq/DB00860.sdf', package = 'Rcpi')))}
#' 

readMolFromSDF = function (sdffile) {

    mol = load.molecules(sdffile)

    return(mol)

}
