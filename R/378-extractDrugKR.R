#' Calculate the KR (Klekota and Roth) Molecular Fingerprints (in Compact Format)
#'
#' Calculate the KR (Klekota and Roth) Molecular Fingerprints (in Compact Format)
#' 
#' Calculate the 4860 bit fingerprint defined by Klekota and Roth.
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process should be shown or not, default is \code{TRUE}.
#'
#' @return A list, each component represents one of the molecules, each element 
#' in the component represents the index of which element in the fingerprint is 1.
#' Each component's name is the length of the fingerprints.
#' 
#' @keywords extractDrugKR
#'
#' @aliases extractDrugKR
#' 
#' @author Nan Xiao <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugKR
#' 
#' @seealso \link{extractDrugKRComplete}
#' 
#' @examples
#' \dontrun{
#' smiles = c('CCC', 'CCN', 'CCN(C)(C)', 'c1ccccc1Cc1ccccc1','C1CCC1CC(CN(C)(C))CC(=O)CC')
#' mols = parse.smiles(smiles)
#' extractDrugKR(mols)
#' extractDrugKR(mols[[1]])}
#' 

extractDrugKR = function (molecules, silent = TRUE) {
  
  if (length(molecules) == 1) {
    
    x = get.fingerprint(molecules, type = 'kr', verbose = !silent)
    
    fp = vector('list', 1)
    fp[[1]] = x@bits
    names(fp) = x@nbit
    
  } else {
    
    x = lapply(molecules, get.fingerprint, type = 'kr', verbose = !silent)
    
    fp = vector('list', length(molecules))
    
    for (i in 1:length(molecules)) {
      
      fp[[i]] = x[[i]]@bits
      names(fp)[i] = x[[i]]@nbit
      
    }
    
  }
  
  return(fp)
  
}

#' Calculate the KR (Klekota and Roth) Molecular Fingerprints (in Complete Format)
#'
#' Calculate the KR (Klekota and Roth) Molecular Fingerprints (in Complete Format)
#' 
#' Calculate the 4860 bit fingerprint defined by Klekota and Roth.
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process should be shown or not, default is \code{TRUE}.
#'
#' @return An integer vector or a matrix. Each row represents one molecule, 
#' the columns represent the fingerprints.
#' 
#' @keywords extractDrugKRComplete
#'
#' @aliases extractDrugKRComplete
#' 
#' @author Nan Xiao <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugKRComplete
#' 
#' @seealso \link{extractDrugKR}
#' 
#' @examples
#' \dontrun{
#' smiles = c('CCC', 'CCN', 'CCN(C)(C)', 'c1ccccc1Cc1ccccc1','C1CCC1CC(CN(C)(C))CC(=O)CC')
#' mols = parse.smiles(smiles)
#' extractDrugKRComplete(mols)
#' extractDrugKRComplete(mols[[1]])}
#' 

extractDrugKRComplete = function (molecules, silent = TRUE) {
  
  if (length(molecules) == 1) {
    
    x = get.fingerprint(molecules, type = 'kr', verbose = !silent)
    
    fp = integer(4860)
    fp[x@bits] = 1L
    
  } else {
    
    x = lapply(molecules, get.fingerprint, type = 'kr', verbose = !silent)
    
    fp = matrix(0L, nrow = length(molecules), ncol = 4860)
    
    for (i in 1:length(molecules)) fp[ i, x[[i]]@bits ] = 1L
    
  }
  
  return(fp)
  
}
