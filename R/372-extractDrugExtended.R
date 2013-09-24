#' Calculate the Extended Molecular Fingerprints (in Compact Format)
#'
#' Calculate the Extended Molecular Fingerprints (in Compact Format)
#' 
#' Calculate the extended molecular fingerprints. 
#' Considers paths of a given length, similar to the standard type, 
#' but takes rings and atomic properties into account into account.
#' This is hashed fingerprints, with a default length of 1024.
#' 
#' @param molecules Parsed molucule object.
#' @param depth The search depth. Default is \code{6}.
#' @param size The length of the fingerprint bit string. Default is \code{1024}.
#' @param silent Logical. Whether the calculating process should be shown or not, default is \code{TRUE}.
#'
#' @return A list, each component represents one of the molecules, each element 
#' in the component represents the index of which element in the fingerprint is 1.
#' Each component's name is the length of the fingerprints.
#' 
#' @keywords extractDrugExtended
#'
#' @aliases extractDrugExtended
#' 
#' @author Xiao Nan <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugExtended
#' 
#' @seealso \link{extractDrugExtendedComplete}
#' 
#' @examples
#' \dontrun{
#' smiles = c('CCC', 'CCN', 'CCN(C)(C)', 'c1ccccc1Cc1ccccc1','C1CCC1CC(CN(C)(C))CC(=O)CC')
#' mols = parse.smiles(smiles)
#' extractDrugExtended(mols)
#' extractDrugExtended(mols[[1]])}
#' 

extractDrugExtended = function (molecules, depth = 6, size = 1024, silent = TRUE) {
  
  if (length(molecules) == 1) {
    
    x = get.fingerprint(molecules, type = 'extended', depth = depth, size = size, verbose = !silent)
    
    fp = vector('list', 1)
    fp[[1]] = x@bits
    names(fp) = x@nbit
    
  } else {
    
    x = lapply(molecules, get.fingerprint, type = 'extended', 
               depth = depth, size = size, verbose = !silent)
    
    fp = vector('list', length(molecules))
    
    for (i in 1:length(molecules)) {
      
      fp[[i]] = x[[i]]@bits
      names(fp)[i] = x[[i]]@nbit
      
    }
    
  }
  
  return(fp)
  
}

#' Calculate the Extended Molecular Fingerprints (in Complete Format)
#'
#' Calculate the Extended Molecular Fingerprints (in Complete Format)
#' 
#' Calculate the extended molecular fingerprints. 
#' Considers paths of a given length, similar to the standard type, 
#' but takes rings and atomic properties into account into account.
#' This is hashed fingerprints, with a default length of 1024.
#' 
#' @param molecules Parsed molucule object.
#' @param depth The search depth. Default is \code{6}.
#' @param size The length of the fingerprint bit string. Default is \code{1024}.
#' @param silent Logical. Whether the calculating process should be shown or not, default is \code{TRUE}.
#'
#' @return An integer vector or a matrix. Each row represents one molecule, 
#' the columns represent the fingerprints.
#' 
#' @keywords extractDrugExtendedComplete
#'
#' @aliases extractDrugExtendedComplete
#' 
#' @author Xiao Nan <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugExtendedComplete
#' 
#' @seealso \link{extractDrugExtended}
#' 
#' @examples
#' \dontrun{
#' smiles = c('CCC', 'CCN', 'CCN(C)(C)', 'c1ccccc1Cc1ccccc1','C1CCC1CC(CN(C)(C))CC(=O)CC')
#' mols = parse.smiles(smiles)
#' extractDrugExtendedComplete(mols)
#' extractDrugExtendedComplete(mols[[1]])}
#' 

extractDrugExtendedComplete = function (molecules, depth = 6, size = 1024, silent = TRUE) {
  
  if (length(molecules) == 1) {
    
    x = get.fingerprint(molecules, type = 'extended', depth = depth, size = size, verbose = !silent)
    
    fp = integer(x@nbit)
    fp[x@bits] = 1L
    
  } else {
    
    x = lapply(molecules, get.fingerprint, type = 'extended', 
               depth = depth, size = size, verbose = !silent)
    
    fp = matrix(0L, nrow = length(molecules), ncol = size)
    
    for (i in 1:length(molecules)) fp[ i, x[[i]]@bits ] = 1L
    
  }
  
  return(fp)
  
}
