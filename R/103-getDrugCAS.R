getMolFromCAS = function (id, parallel = 5) {
  
  # CAS only provides InChI, so here we return InChI 
  # users could convert to SMILES using Open Babel
  
  # example id : 52-67-5 (Penicillamine)
  # example url: http://www.chemnet.com/cas/supplier.cgi?terms=52-67-5&exact=dict
  
  InChIURL = paste0('http://www.chemnet.com/cas/supplier.cgi?terms=', id, '&exact=dict')
  
  InChITxt = getURLAsynchronous(url = InChIURL, perform = parallel)
  
  n = length(id)
  tmp1 = rep(NA, n)
  tmp2 = rep(NA, n)
  for (i in 1:n) tmp1[i] = strsplit(InChITxt[[i]], 'InChI=')[[1]][2]
  for (i in 1:n) tmp2[i] = strsplit(tmp1[i], '</td>')[[1]][1]
  
  InChI = paste0('InChI=', tmp2)
  
  return(InChI)
  
}
