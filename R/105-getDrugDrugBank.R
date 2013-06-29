getMolFromDrugBank = function (id, parallel = 5) {
  
  # example id : DB00859 (Penicillamine)
  # example url: http://www.drugbank.ca/drugs/DB00859.sdf
  
  SdfURL = paste0('http://www.drugbank.ca/drugs/', id, '.sdf')
  
  SdfTxt = getURLAsynchronous(url = SdfURL, perform = parallel)
  
  return(SdfTxt)
  
}



getSmiFromDrugBank = function (id, parallel = 5) {
  
  # example id : DB00859 (Penicillamine)
  # example url: http://www.drugbank.ca/drugs/DB00859.sdf
  
  SdfTxt = getMolFromDrugBank(id, parallel)
  
  # rcdk::load.molecules() only loads files on the disk
  # so we have to do this
  tmpfile = tempfile(pattern = paste0(id, '-'), fileext = 'sdf')
  for (i in 1:length(id)) write(SdfTxt[[i]], tmpfile[i])
  
  Mol = load.molecules(tmpfile)
  Smi = sapply(Mol, get.smiles)
  
  unlink(tmpfile)
  
  return(Smi)
  
}
