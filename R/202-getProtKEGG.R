getFASTAFromKEGG = function (id, parallel = 5) {
  
  # example id : hsa:10161
  # example url: http://rest.kegg.jp/get/hsa:10161/aaseq
  
  fastaURL = paste0('http://rest.kegg.jp/get/', id, '/aaseq')
  
  fastaTxt = getURLAsynchronous(url = fastaURL, perform = parallel)
  
  return(fastaTxt)
  
}



getSeqFromKEGG = function (id, parallel = 5) {
  
  # example id : hsa:10161
  # example url: http://rest.kegg.jp/get/hsa:10161/aaseq
  
  fastaTxt = getFASTAFromKEGG(id, parallel)
  
  tmpfile = tempfile(pattern = paste0(id, '-'), fileext = 'fasta')
  for (i in 1:length(id)) write(fastaTxt[[i]], tmpfile[i])
  
  AASeq = lapply(tmpfile, readFASTA)
  
  unlink(tmpfile)
  
  return(AASeq)
  
}
