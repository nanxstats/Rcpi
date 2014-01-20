#' Read Molecules from SMILES Files and Return Parsed Java Molecular Object
#'
#' Read Molecules from SMILES Files and Return Parsed Java Molecular Object
#' 
#' This function reads molecules from SMILES strings and return 
#' parsed Java molecular object needed by \code{extractDrug...} functions.
#' 
#' @param smiles Character vector, containing SMILES file location(s).
#' 
#' @return A list, containing parsed Java molecular object.
#' 
#' @keywords readMolFromSmi MOL SMILES
#'
#' @aliases readMolFromSmi
#' 
#' @author Nan Xiao <\url{http://www.road2stat.com}>
#' 
#' @seealso See \code{\link{readMolFromSDF}} for reading molecules from SDF files
#' and returning parsed Java molecular object.
#' 
#' @export readMolFromSmi
#' 
#' @examples
#' \dontrun{
#' smi  = system.file('vignettedata/bbbp11.smi', package = 'Rcpi')
#' mol  = readMolFromSmi(smi)}
#' 

readMolFromSmi = function (smifile) {
  
  txt = scan(smifile, what = 'complex')
  smi = as.character(txt)
  mol = rcdk::parse.smiles(smi)
  
  return(mol)
  
}
