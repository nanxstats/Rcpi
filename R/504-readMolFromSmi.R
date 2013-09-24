#' Read Molecules from SMILES String and Return Parsed Java Molecular Object
#'
#' Read Molecules from SMILES String and Return Parsed Java Molecular Object
#' 
#' This function reads molecules from SMILES strings and return 
#' parsed Java molecular object needed by \code{extractDrug...} functions.
#' 
#' @param smiles Character vector, containing SMILES string(s).
#' 
#' @return A list, containing parsed Java molecular object.
#' 
#' @keywords readMolFromSmi MOL SMILES
#'
#' @aliases readMolFromSmi
#' 
#' @author Xiao Nan <\url{http://www.road2stat.com}>
#' 
#' @seealso See \code{\link{readMolFromSDF}} for reading molecules from SDF files
#' and returning parsed Java molecular object.
#' 
#' @export readMolFromSmi
#' 
#' @examples
#' \dontrun{
#' smi  = c('CCC', 'c1ccccc1', 'C(C)(C=O)C(CCNC)C1CC1C(=O)')
#' mol  = readMolFromSmi(smi[1])
#' mols = readMolFromSmi(smi)}
#' 

readMolFromSmi = function (smiles) {
  
  smi = as.character(smiles)
  mol = rcdk::parse.smiles(smi)
  
  return(mol)
  
}
