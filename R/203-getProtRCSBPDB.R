#' Retrieve Protein Sequence in PDB Format from RCSB PDB
#'
#' Retrieve Protein Sequence in PDB Format from RCSB PDB
#'  
#' This function retrieves protein sequences in PDB format from RCSB PDB.
#' 
#' @param id A character vector, as the protein ID.
#' @param parallel An integer, the parallel parameter, indicates how many process 
#'                 the user would like to use for retrieving the data (using RCurl), 
#'                 default is \code{5}. For regular cases, we recommend a number less than \code{20}.
#'
#' @return A list, each component contains one of the protein sequences in PDB format.
#' 
#' @keywords getProt getPDBFromRCSBPDB PDB
#'
#' @aliases getPDBFromRCSBPDB
#' 
#' @author Nan Xiao <\url{http://www.road2stat.com}>
#' 
#' @seealso See \code{\link{getSeqFromRCSBPDB}} for retrieving protein
#' represented by amino acid sequence from the RCSB PDB database.
#' 
#' @export getPDBFromRCSBPDB
#' 
#' @examples
#' \dontrun{
#' id = c('4HHB', '4FF9')
#' getPDBFromRCSBPDB(id)}
#' 

getPDBFromRCSBPDB = function (id, parallel = 5) {
  
  # example id : 4HHB
  # example url: http://www.rcsb.org/pdb/files/4HHB.pdb
  
  pdbURL = paste0('http://www.rcsb.org/pdb/files/', id, '.pdb')
  
  pdbTxt = getURLAsynchronous(url = pdbURL, perform = parallel)
  
  return(pdbTxt)
  
}

#' Retrieve Protein Sequence from RCSB PDB
#'
#' Retrieve Protein Sequence from RCSB PDB
#'  
#' This function retrieves protein sequences from RCSB PDB.
#' 
#' @param id A character vector, as the protein ID.
#' @param parallel An integer, the parallel parameter, indicates how many process 
#'                 the user would like to use for retrieving the data (using RCurl), 
#'                 default is \code{5}. For regular cases, we recommend a number less than \code{20}.
#'
#' @return A list, each component contains one of the protein represented by amino acid sequence(s).
#' 
#' @keywords getProt getSeqFromRCSBPDB PDB
#'
#' @aliases getSeqFromRCSBPDB
#' 
#' @author Nan Xiao <\url{http://www.road2stat.com}>
#' 
#' @seealso See \code{\link{getPDBFromRCSBPDB}} for retrieving protein
#' in PDB format from the RCSB PDB database.
#' 
#' @export getSeqFromRCSBPDB
#' 
#' @examples
#' \dontrun{
#' id = c('4HHB', '4FF9')
#' getSeqFromRCSBPDB(id)}
#' 

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
