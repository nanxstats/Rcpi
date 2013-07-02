#' Get Protein Sequences from UniProt by Protein ID
#'
#' Get Protein Sequences from UniProt by Protein ID
#' 
#' This function get protein sequences from uniprot.org by protein ID(s).
#' 
#' @param id A character vector, as the protein ID(s).
#'
#' @param parallel The parallel threads, default is 5.
#'
#' @return A list, each component contains one of the protein sequences.
#' 
#' @keywords UniProt getFASTAFromUniProt
#'
#' @aliases getFASTAFromUniProt
#' 
#' @author Xiao Nan <\url{http://www.road2stat.com}>
#' 
#' @seealso See \code{\link{readFASTA}} for reading FASTA format files.
#' 
#' @export getFASTAFromUniProt
#' 
#' @references
#' UniProt. \url{http://www.uniprot.org/}
#' 
#' UniProt REST API Documentation. \url{http://www.uniprot.org/faq/28}
#' 
#' @examples
#' ids = c('P00750', 'P00751', 'P00752')
#' \dontrun{getFASTAFromUniProt(ids)}
#' 

getFASTAFromUniProt = function (id, parallel = 5) {
  
  # example id:  P00750
  # example url: http://www.uniprot.org/uniprot/P00750.fasta
  
  fastaURL = paste0('http://www.uniprot.org/uniprot/', id, '.fasta')
  
  fastaTxt = getURLAsynchronous(url = fastaURL, perform = parallel)
  
  return(fastaTxt)
  
}



#' Get Protein Sequences from UniProt by Protein ID
#'
#' Get Protein Sequences from UniProt by Protein ID
#' 
#' This function get protein sequences from uniprot.org by protein ID(s).
#' 
#' @param id A character vector, as the protein ID(s). 
#'
#' @param parallel The parallel threads, default is 5.
#'
#' @return A list, each component contains one of the protein sequences. 
#' 
#' @keywords UniProt getSeqFromUniProt
#'
#' @aliases getSeqFromUniProt
#' 
#' @author Xiao Nan <\url{http://www.road2stat.com}>
#' 
#' @seealso See \code{\link{getFASTAFromUniProt}} for reading FASTA format files.
#' 
#' @export getSeqFromUniProt
#' 
#' @references
#' UniProt. \url{http://www.uniprot.org/}
#' 
#' UniProt REST API Documentation. \url{http://www.uniprot.org/faq/28}
#' 
#' @examples
#' ids = c('P00750', 'P00751', 'P00752')
#' \dontrun{getSeqFromUniProt(ids, parallel = 3)}
#' 

getSeqFromUniProt = function (id, parallel = 5) {
  
  # example id:  P00750
  # example url: http://www.uniprot.org/uniprot/P00750.fasta
  
  fastaTxt = getFASTAFromUniProt(id, parallel)
  
  tmpfile = tempfile(pattern = paste0(id, '-'), fileext = 'fasta')
  for (i in 1:length(id)) write(fastaTxt[[i]], tmpfile[i])
  
  AASeq = lapply(tmpfile, readFASTA)
  
  unlink(tmpfile)
  
  return(AASeq)
  
}
