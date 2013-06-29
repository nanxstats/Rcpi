getMolFromKEGG = function (id, parallel = 5) {
  
  # example id     : D00496 (Penicillamine)
  # example url    : http://rest.kegg.jp/get/D00496/mol
  # KEGG API Intro : http://www.kegg.jp/kegg/rest/keggapi.html
  
  MolURL = paste0('http://rest.kegg.jp/get/', id, '/mol')
  
  MolTxt = getURLAsynchronous(url = MolURL, perform = parallel)
  
  # rcdk::load.molecules() only loads files on the disk
  # so we have to do this
  tmpfile = tempfile(pattern = paste0(id, '-'), fileext = 'mol')
  for (i in 1:length(id)) write(MolTxt[[i]], tmpfile[i])
  
  Mol = load.molecules(tmpfile)
  Smi = sapply(Mol, get.smiles)
  
  unlink(tmpfile)
  
  return(Smi)
  
}
