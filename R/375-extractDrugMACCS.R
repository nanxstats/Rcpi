# Fingerprint - maccs
# 
# Considers paths of a given length. The default is but can be changed. These are hashed fingerprints, with a default length of 1024
# 
# smiles = c('CCC', 'CCN', 'CCN(C)(C)', 'c1ccccc1Cc1ccccc1','C1CCC1CC(CN(C)(C))CC(=O)CC')
# mols = parse.smiles(smiles)
# extractDrugMACCS(mols)
# extractDrugMACCS(mols[[1]])

extractDrugMACCS = function (molecules, silent = TRUE) {
  
  if (length(molecules) == 1) {
    
    x = get.fingerprint(molecules, type = 'maccs', verbose = !silent)
    
    fp = vector('list', 1)
    fp[[1]] = x@bits
    names(fp) = x@nbit
    
  } else {
    
    x = lapply(molecules, get.fingerprint, type = 'maccs', verbose = !silent)
    
    fp = vector('list', length(molecules))
    
    for (i in 1:length(molecules)) {
      
      fp[[i]] = x[[i]]@bits
      names(fp)[i] = x[[i]]@nbit
      
    }
    
  }
  
  return(fp)
  
}





# smiles = c('CCC', 'CCN', 'CCN(C)(C)', 'c1ccccc1Cc1ccccc1','C1CCC1CC(CN(C)(C))CC(=O)CC')
# mols = parse.smiles(smiles)
# extractDrugMACCSComplete(mols)
# extractDrugMACCSComplete(mols[[1]])

extractDrugMACCSComplete = function (molecules, silent = TRUE) {
  
  if (length(molecules) == 1) {
    
    x = get.fingerprint(molecules, type = 'maccs', verbose = !silent)
    
    fp = integer(166)
    fp[x@bits] = 1L
    
  } else {
    
    x = lapply(molecules, get.fingerprint, type = 'maccs', verbose = !silent)
    
    fp = matrix(0L, nrow = length(molecules), ncol = 166)
    
    for (i in 1:length(molecules)) fp[ i, x[[i]]@bits ] = 1L
    
  }
  
  return(fp)
  
}
