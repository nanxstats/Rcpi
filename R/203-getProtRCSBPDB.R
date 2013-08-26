getPDBFromRCSBPDB = function (id, parallel = 5) {
  
  # example id : 4HHB
  # example url: http://www.rcsb.org/pdb/files/4HHB.pdb
  
  pdbURL = paste0('http://www.rcsb.org/pdb/files/', id, '.pdb')
  
  pdbTxt = getURLAsynchronous(url = pdbURL, perform = parallel)
  
  return(pdbTxt)
  
}



getSeqFromRCSBPDB = function (id, parallel = 5) {
  
  # example id : 4HHB
  # example url: http://www.rcsb.org/pdb/files/fasta.txt?structureIdList=4HHB
  
  fastaURL = paste0('http://www.rcsb.org/pdb/files/fasta.txt?structureIdList=', id)
  
  fastaTxt = getURLAsynchronous(url = fastaURL, perform = parallel)
  
  tmpfile = tempfile(pattern = paste0(id, '-'), fileext = 'fasta')
  for (i in 1:length(id)) write(fastaTxt[[i]], tmpfile[i])
  
  AASeq = lapply(tmpfile, readFASTA)
  
  unlink(tmpfile)
  
  return(AASeq)
  
}
