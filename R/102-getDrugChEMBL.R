getMolFromChEMBL = function (id, parallel = 5) {
  
  # example id : CHEMBL1430 (Penicillamine)
  # example url: https://www.ebi.ac.uk/chembldb/compound/inspect/CHEMBL1430
  # then we get: https://www.ebi.ac.uk/chembldb/download_helper/getmol/369179
  
  MolPageURL = paste0('https://www.ebi.ac.uk/chembldb/compound/inspect/', id)
  MolPageTxt = getURLAsynchronous(url = MolPageURL, perform = parallel)
  
  n = length(id)
  tmp1 = rep(NA, n)
  tmp2 = rep(NA, n)
  for (i in 1:n) tmp1[i] = strsplit(MolPageTxt, "<a href='/chembldb/download_helper/getmol/")[[1]][2]
  for (i in 1:n) tmp2[i] = strsplit(tmp1[i], "'>Download MolFile")[[1]][1]
  
  MolURL = paste0('https://www.ebi.ac.uk/chembldb/download_helper/getmol/', tmp2)
  MolTxt = getURLAsynchronous(url = MolURL, perform = parallel)
  
  return(MolTxt)
  
}



getSmiFromChEMBL = function (id, parallel = 5) {
  
  # example id : CHEMBL1430 (Penicillamine)
  # example url: https://www.ebi.ac.uk/chemblws/compounds/CHEMBL1430.json
  
  MolURL = paste0('https://www.ebi.ac.uk/chemblws/compounds/', id, '.json')
  
  MolTxt = getURLAsynchronous(url = MolURL, perform = parallel)
  
  SmiTxt = lapply(MolTxt, fromJSON)
  
  Smi = sapply(unlist(SmiTxt, recursive = FALSE), `[[`, 'smiles')
  
  names(Smi) = NULL
  
  return(Smi)
  
}
