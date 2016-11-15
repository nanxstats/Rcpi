#' Retrieve Drug Molecules in InChI Format from the CAS Database
#'
#' Retrieve Drug Molecules in InChI Format from the CAS Database
#'
#' This function retrieves drug molecules in InChI format from the CAS database.
#' CAS database only provides InChI data, so here we return the molecule
#' in InChI format, users could convert them to SMILES format using
#' Open Babel (\url{http://openbabel.org/}) or other third-party tools.
#'
#' @param id A character vector, as the CAS drug ID.
#' @param parallel An integer, the parallel parameter, indicates how many
#'                 process the user would like to use for retrieving
#'                 the data (using RCurl), default is \code{5}.
#'                 For regular cases, we recommend a number less than \code{20}.
#'
#' @return A length of \code{id} character vector,
#' each element containing the corresponding drug molecule.
#'
#' @keywords getDrug getMolFromCAS CAS
#'
#' @aliases getMolFromCAS
#'
#' @author Nan Xiao <\url{http://nanx.me}>
#'
#' @seealso See \code{\link{getDrug}} for retrieving drug molecules
#' in MOL and SMILES Format from other databases.
#'
#' @export getMolFromCAS
#'
#' @importFrom RCurl getURLAsynchronous
#'
#' @examples
#' \donttest{
#' id = '52-67-5'  # Penicillamine
#' getMolFromCAS(id)}
#'

getMolFromCAS = function (id, parallel = 5) {

    # CAS only provides InChI, so here we return InChI
    # users could convert to SMILES using Open Babel

    # example id : 52-67-5 (Penicillamine)
    # example url: http://www.chemnet.com/cas/supplier.cgi?terms=52-67-5&exact=dict

    InChIURL = paste0('http://www.chemnet.com/cas/supplier.cgi?terms=', id,
                      '&exact=dict')

    InChITxt = getURLAsynchronous(url = InChIURL, perform = parallel)

    n = length(id)
    tmp1 = rep(NA, n)
    tmp2 = rep(NA, n)
    for (i in 1:n) tmp1[i] = strsplit(InChITxt[[i]], 'InChI=')[[1]][2]
    for (i in 1:n) tmp2[i] = strsplit(tmp1[i], '</td>')[[1]][1]

    InChI = paste0('InChI=', tmp2)

    return(InChI)

}
