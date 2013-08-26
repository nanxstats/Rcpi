getMolFromPubChem = function (id, parallel = 5) {
  
  # example id : 7847562 (Penicillamine)
  # example url: http://pubchem.ncbi.nlm.nih.gov/summary/summary.cgi?sid=7847562&disopt=DisplaySDF
  
  SdfURL = paste0('http://pubchem.ncbi.nlm.nih.gov/summary/summary.cgi?sid=', id, '&disopt=DisplaySDF')
  
  SdfTxt = getURLAsynchronous(url = SdfURL, perform = parallel)
  
  return(SdfTxt)
  
}



getSmiFromPubChem = function (id, parallel = 5) {
  
  # example id : 7847562 (Penicillamine)
  # example url: http://pubchem.ncbi.nlm.nih.gov/summary/summary.cgi?sid=7847562&disopt=DisplaySDF
  
  SdfTxt = getMolFromPubChem(id, parallel)
  
  # rcdk::load.molecules() only loads files on the disk
  # so we have to do this
  tmpfile = tempfile(pattern = paste0(id, '-'), fileext = 'sdf')
  for (i in 1:length(id)) write(SdfTxt[[i]], tmpfile[i])
  Mol = load.molecules(tmpfile)
  Smi = sapply(Mol, get.smiles)
  unlink(tmpfile)
  
  return(Smi)
  
}
