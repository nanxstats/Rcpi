#' Calculate the PubChem Molecular Fingerprints (in Compact Format)
#'
#' Calculate the PubChem Molecular Fingerprints (in Compact Format)
#' 
#' Calculate the 881 bit fingerprints defined by PubChem.
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process should be shown or not, default is \code{TRUE}.
#'
#' @return A list, each component represents one of the molecules, each element 
#' in the component represents the index of which element in the fingerprint is 1.
#' Each component's name is the length of the fingerprints.
#' 
#' @keywords extractDrugPubChem
#'
#' @aliases extractDrugPubChem
#' 
#' @author Xiao Nan <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugPubChem
#' 
#' @seealso \link{extractDrugPubChemComplete}
#' 
#' @examples
#' \dontrun{
#' smiles = c('CCC', 'CCN', 'CCN(C)(C)', 'c1ccccc1Cc1ccccc1','C1CCC1CC(CN(C)(C))CC(=O)CC')
#' mols = parse.smiles(smiles)
#' extractDrugPubChem(mols)
#' extractDrugPubChem(mols[[1]])}
#' 

extractDrugPubChem = function (molecules, silent = TRUE) {
  
  if (length(molecules) == 1) {
    
    x = get.fingerprint(molecules, type = 'pubchem', verbose = !silent)
    
    fp = vector('list', 1)
    fp[[1]] = x@bits
    names(fp) = x@nbit
    
  } else {
    
    x = lapply(molecules, get.fingerprint, type = 'pubchem', verbose = !silent)
    
    fp = vector('list', length(molecules))
    
    for (i in 1:length(molecules)) {
      
      fp[[i]] = x[[i]]@bits
      names(fp)[i] = x[[i]]@nbit
      
    }
    
  }
  
  return(fp)
  
}

#' Calculate the PubChem Molecular Fingerprints (in Complete Format)
#'
#' Calculate the PubChem Molecular Fingerprints (in Complete Format)
#' 
#' Calculate the 881 bit fingerprints defined by PubChem.
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process should be shown or not, default is \code{TRUE}.
#'
#' @return An integer vector or a matrix. Each row represents one molecule, 
#' the columns represent the fingerprints.
#' 
#' @keywords extractDrugPubChemComplete
#'
#' @aliases extractDrugPubChemComplete
#' 
#' @author Xiao Nan <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugPubChemComplete
#' 
#' @seealso \link{extractDrugPubChem}
#' 
#' @examples
#' \dontrun{
#' smiles = c('CCC', 'CCN', 'CCN(C)(C)', 'c1ccccc1Cc1ccccc1','C1CCC1CC(CN(C)(C))CC(=O)CC')
#' mols = parse.smiles(smiles)
#' extractDrugPubChemComplete(mols)
#' extractDrugPubChemComplete(mols[[1]])}
#' 

extractDrugPubChemComplete = function (molecules, silent = TRUE) {
  
  if (length(molecules) == 1) {
    
    x = get.fingerprint(molecules, type = 'pubchem', verbose = !silent)
    
    fp = integer(881)
    fp[x@bits] = 1L
    
  } else {
    
    x = lapply(molecules, get.fingerprint, type = 'pubchem', verbose = !silent)
    
    fp = matrix(0L, nrow = length(molecules), ncol = 881)
    
    for (i in 1:length(molecules)) fp[ i, x[[i]]@bits ] = 1L
    
  }
  
  return(fp)
  
}
