getMolFromChEMBL = function (id, parallel = 5) {
  
  # example id : CHEMBL1430 (Penicillamine)
  # example url: https://www.ebi.ac.uk/chemblws/compounds/CHEMBL1430.json
  
  MolURL = paste0('https://www.ebi.ac.uk/chemblws/compounds/', id, '.json')
  
  MolTxt = getURLAsynchronous(url = MolURL, perform = parallel)
  
  SmiTxt = lapply(MolTxt, fromJSON)
  
  Smi = sapply(unlist(SmiTxt, recursive = FALSE), `[[`, 'smiles')
  
  names(Smi) = NULL
  
  return(Smi)
  
}
