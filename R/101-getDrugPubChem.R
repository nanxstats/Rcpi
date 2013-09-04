#' Retrieve Drug Molecules in MOL Format from the PubChem Database
#'
#' Retrieve Drug Molecules in MOL Format from the PubChem Database
#' 
#' This function retrieves drug molecules in MOL format from the PubChem database.
#' 
#' @param id A character vector, as the PubChem drug ID.
#' @param parallel An integer, the parallel parameter, indicates how many process 
#'                 the user would like to use for retrieving the data (using RCurl), 
#'                 default is \code{5}. For regular cases, we recommend a number less than \code{20}.
#' 
#' @return A length of \code{id} character vector, each element containing the corresponding drug molecule.
#' 
#' @keywords getDrug getMolFromPubChem PubChem
#'
#' @aliases getMolFromPubChem
#' 
#' @author Xiao Nan <\url{http://www.road2stat.com}>
#' 
#' @seealso See \code{\link{getSmiFromPubChem}} for retrieving drug molecules
#' in SMILES format from the PubChem database.
#' 
#' @export getMolFromPubChem
#' 
#' @examples
#' \dontrun{
#' id = c('7847562', '7847563')  # Penicillamine
#' getMolFromPubChem(id)}
#' 

getMolFromPubChem = function (id, parallel = 5) {
  
  # example id : 7847562 (Penicillamine)
  # example url: http://pubchem.ncbi.nlm.nih.gov/summary/summary.cgi?sid=7847562&disopt=DisplaySDF
  
  SdfURL = paste0('http://pubchem.ncbi.nlm.nih.gov/summary/summary.cgi?sid=', id, '&disopt=DisplaySDF')
  
  SdfTxt = getURLAsynchronous(url = SdfURL, perform = parallel)
  
  return(SdfTxt)
  
}

#' Retrieve Drug Molecules in SMILES Format from the PubChem Database
#'
#' Retrieve Drug Molecules in SMILES Format from the PubChem Database
#' 
#' This function retrieves drug molecules in SMILES format from the PubChem database.
#' 
#' @param id A character vector, as the PubChem drug ID.
#' @param parallel An integer, the parallel parameter, indicates how many process 
#'                 the user would like to use for retrieving the data (using RCurl), 
#'                 default is \code{5}. For regular cases, we recommend a number less than \code{20}.
#' 
#' @return A length of \code{id} character vector, each element containing the corresponding drug molecule.
#' 
#' @keywords getDrug getSmiFromPubChem PubChem
#'
#' @aliases getSmiFromPubChem
#' 
#' @author Xiao Nan <\url{http://www.road2stat.com}>
#' 
#' @seealso See \code{\link{getMolFromPubChem}} for retrieving drug molecules
#' in MOL format from the PubChem database.
#' 
#' @export getSmiFromPubChem
#' 
#' @examples
#' \dontrun{
#' id = c('7847562', '7847563')  # Penicillamine
#' getSmiFromPubChem(id)}
#' 

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
