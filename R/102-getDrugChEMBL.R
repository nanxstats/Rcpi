#' Retrieve Drug Molecules in MOL Format from the ChEMBL Database
#'
#' Retrieve Drug Molecules in MOL Format from the ChEMBL Database
#' 
#' This function retrieves drug molecules in MOL format from the ChEMBL database.
#' 
#' @param id A character vector, as the ChEMBL drug ID.
#' @param parallel An integer, the parallel parameter, indicates how many 
#'                 process the user would like to use for 
#'                 retrieving the data (using RCurl), default is \code{5}. 
#'                 For regular cases, we recommend a number less than \code{20}.
#' 
#' @return A length of \code{id} character vector, 
#' each element containing the corresponding drug molecule.
#' 
#' @keywords getDrug getMolFromChEMBL ChEMBL
#'
#' @aliases getMolFromChEMBL
#' 
#' @author Nan Xiao <\url{http://r2s.name}>
#' 
#' @seealso See \code{\link{getSmiFromChEMBL}} for retrieving drug molecules
#' in SMILES format from the ChEMBL database.
#' 
#' @export getMolFromChEMBL
#' 
#' @importFrom RCurl getURLAsynchronous
#' 
#' @examples
#' \donttest{
#' id = 'CHEMBL1430'  # Penicillamine
#' getMolFromChEMBL(id)}
#' 

getMolFromChEMBL = function (id, parallel = 5) {

    # example id : CHEMBL1430 (Penicillamine)
    # example url: https://www.ebi.ac.uk/chembldb/compound/inspect/CHEMBL1430
    # then we get: https://www.ebi.ac.uk/chembldb/download_helper/getmol/369179

    MolPageURL = paste0('https://www.ebi.ac.uk/chembldb/compound/inspect/', id)
    MolPageTxt = getURLAsynchronous(url = MolPageURL, perform = parallel)

    n = length(id)
    tmp1 = rep(NA, n)
    tmp2 = rep(NA, n)
    
    for (i in 1:n) {
        tmp1[i] = strsplit(MolPageTxt, 
                           "<a href='/chembldb/download_helper/getmol/")[[1]][2]
    }
    
    for (i in 1:n) {
        tmp2[i] = strsplit(tmp1[i], "'>Download MolFile")[[1]][1]
    }

    MolURL = paste0('https://www.ebi.ac.uk/chembldb/download_helper/getmol/', tmp2)
    MolTxt = getURLAsynchronous(url = MolURL, perform = parallel)

    return(MolTxt)

}

#' Retrieve Drug Molecules in SMILES Format from the ChEMBL Database
#'
#' Retrieve Drug Molecules in SMILES Format from the ChEMBL Database
#' 
#' This function retrieves drug molecules in SMILES format from the ChEMBL database.
#' 
#' @param id A character vector, as the ChEMBL drug ID.
#' @param parallel An integer, the parallel parameter, indicates how many 
#'                 process the user would like to use for retrieving 
#'                 the data (using RCurl), default is \code{5}. 
#'                 For regular cases, we recommend a number less than \code{20}.
#' 
#' @return A length of \code{id} character vector, 
#' each element containing the corresponding drug molecule.
#' 
#' @keywords getDrug getSmiFromChEMBL ChEMBL
#'
#' @aliases getSmiFromChEMBL
#' 
#' @author Nan Xiao <\url{http://r2s.name}>
#' 
#' @seealso See \code{\link{getMolFromChEMBL}} for retrieving drug molecules
#' in MOL format from the ChEMBL database.
#' 
#' @export getSmiFromChEMBL
#' 
#' @importFrom RCurl getURLAsynchronous
#' @importFrom rjson fromJSON
#' 
#' @examples
#' \donttest{
#' id = 'CHEMBL1430'  # Penicillamine
#' getSmiFromChEMBL(id)}
#' 

getSmiFromChEMBL = function (id, parallel = 5) {

    # example id : CHEMBL1430 (Penicillamine)
    # example url: https://www.ebi.ac.uk/chemblws/compounds/CHEMBL1430.json

    MolURL = paste0('https://www.ebi.ac.uk/chemblws/compounds/', id, '.json')

    MolTxt = getURLAsynchronous(url = MolURL, perform = parallel)

    SmiTxt = lapply(MolTxt, fromJSON)

    Smi = sapply(unlist(SmiTxt, recursive = FALSE), `[[`, 'smiles')

    names(Smi) = NULL

    return(Smi)

}
