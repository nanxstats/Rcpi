# Fingerprint - kr
# 
# 
# 
# smiles = c('CCC', 'CCN', 'CCN(C)(C)', 'c1ccccc1Cc1ccccc1','C1CCC1CC(CN(C)(C))CC(=O)CC')
# mols = parse.smiles(smiles)
# extractDrugKR(mols)
# extractDrugKR(mols[[1]])

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





# smiles = c('CCC', 'CCN', 'CCN(C)(C)', 'c1ccccc1Cc1ccccc1','C1CCC1CC(CN(C)(C))CC(=O)CC')
# mols = parse.smiles(smiles)
# extractDrugKRComplete(mols)
# extractDrugKRComplete(mols[[1]])

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
