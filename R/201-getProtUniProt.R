#' Retrieve Protein Sequence in FASTA Format from the UniProt Database
#'
#' Retrieve Protein Sequence in FASTA Format from the UniProt Database
#' 
#' This function retrieves protein sequences in FASTA format from the UniProt database.
#' 
#' @param id A character vector, as the protein ID.
#' @param parallel An integer, the parallel parameter, indicates how many process 
#'                 the user would like to use for retrieving the data (using RCurl), 
#'                 default is \code{5}. For regular cases, we recommend a number less than \code{20}.
#'
#' @return A list, each component contains one of the protein sequences in FASTA format.
#' 
#' @keywords getProt getFASTAFromUniProt UniProt
#'
#' @aliases getFASTAFromUniProt
#' 
#' @author Xiao Nan <\url{http://www.road2stat.com}>
#' 
#' @seealso See \code{\link{getSeqFromUniProt}} for retrieving protein
#' represented by amino acid sequence from the UniProt database.
#' See \code{\link{readFASTA}} for reading FASTA format files.
#' 
#' @export getFASTAFromUniProt
#' 
#' @references
#' UniProt. \url{http://www.uniprot.org/}
#' 
#' UniProt REST API Documentation. \url{http://www.uniprot.org/faq/28}
#' 
#' @examples
#' \dontrun{
#' id = c('P00750', 'P00751', 'P00752')
#' getFASTAFromUniProt(id)}
#' 

getFASTAFromUniProt = function (id, parallel = 5) {
  
  # example id:  P00750
  # example url: http://www.uniprot.org/uniprot/P00750.fasta
  
  fastaURL = paste0('http://www.uniprot.org/uniprot/', id, '.fasta')
  
  fastaTxt = getURLAsynchronous(url = fastaURL, perform = parallel)
  
  return(fastaTxt)
  
}

#' Retrieve Protein Sequence from the UniProt Database
#'
#' Retrieve Protein Sequence from the UniProt Database
#' 
#' This function retrieves protein represented by amino acid sequence from the UniProt database.
#' 
#' @param id A character vector, as the protein ID.
#' @param parallel An integer, the parallel parameter, indicates how many process 
#'                 the user would like to use for retrieving the data (using RCurl), 
#'                 default is \code{5}. For regular cases, we recommend a number less than \code{20}.
#'
#' @return A list, each component contains one of the protein represented by amino acid sequence(s).
#' 
#' @keywords getProt getSeqFromUniProt UniProt
#'
#' @aliases getSeqFromUniProt
#' 
#' @author Xiao Nan <\url{http://www.road2stat.com}>
#' 
#' @seealso See \code{\link{getFASTAFromUniProt}} for retrieving protein sequence
#' in FASTA format from the UniProt database.
#' 
#' @export getSeqFromUniProt
#' 
#' @references
#' UniProt. \url{http://www.uniprot.org/}
#' 
#' UniProt REST API Documentation. \url{http://www.uniprot.org/faq/28}
#' 
#' @examples
#' \dontrun{
#' id = c('P00750', 'P00751', 'P00752')
#' getSeqFromUniProt(id)}
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
