# Fingerprint - pubchem
# 
# 
# 
# smiles = c('CCC', 'CCN', 'CCN(C)(C)', 'c1ccccc1Cc1ccccc1','C1CCC1CC(CN(C)(C))CC(=O)CC')
# mols = parse.smiles(smiles)
# extractDrugPubChem(mols)
# extractDrugPubChem(mols[[1]])

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





# smiles = c('CCC', 'CCN', 'CCN(C)(C)', 'c1ccccc1Cc1ccccc1','C1CCC1CC(CN(C)(C))CC(=O)CC')
# mols = parse.smiles(smiles)
# extractDrugPubChemComplete(mols)
# extractDrugPubChemComplete(mols[[1]])

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
