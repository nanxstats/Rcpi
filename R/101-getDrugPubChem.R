#' Retrieve Drug Molecules in MOL Format from the PubChem Database
#'
#' Retrieve Drug Molecules in MOL Format from the PubChem Database
#'
#' This function retrieves drug molecules in MOL format from the
#' PubChem database.
#'
#' @param id A character vector, as the PubChem drug ID.
#' @param parallel An integer, the parallel parameter, indicates how many
#' processes the user would like to use for retrieving
#' the data (using RCurl), default is \code{5}.
#' For regular cases, we recommend a number less than \code{20}.
#'
#' @return A length of \code{id} character vector,
#' each element containing the corresponding drug molecule.
#'
#' @seealso See \code{\link{getSmiFromPubChem}} for retrieving drug molecules
#' in SMILES format from the PubChem database.
#'
#' @export getMolFromPubChem
#'
#' @examples
#' id = c('7847562', '7847563')  # Penicillamine
#' \donttest{
#' getMolFromPubChem(id)}

getMolFromPubChem = function (id, parallel = 5) {

    # example id : 7847562 (Penicillamine)
    # example url: https://pubchem.ncbi.nlm.nih.gov/rest/pug/substance/sid/7847562/record/SDF/?record_type=2d

    SdfURL = paste0('https://pubchem.ncbi.nlm.nih.gov/rest/pug/substance/sid/',
                    id, '/record/SDF/?record_type=2d')

    SdfTxt = get_url_parallel(url = SdfURL, total_con = parallel)

    return(SdfTxt)

}

#' Retrieve Drug Molecules in SMILES Format from the PubChem Database
#'
#' Retrieve Drug Molecules in SMILES Format from the PubChem Database
#'
#' This function retrieves drug molecules in SMILES format from
#' the PubChem database.
#'
#' @param id A character vector, as the PubChem drug ID.
#' @param parallel An integer, the parallel parameter, indicates how many
#' processes the user would like to use for retrieving
#' the data (using RCurl), default is \code{5}.
#' For regular cases, we recommend a number less than \code{20}.
#'
#' @return A length of \code{id} character vector,
#' each element containing the corresponding drug molecule.
#'
#' @seealso See \code{\link{getMolFromPubChem}} for retrieving drug molecules
#' in MOL format from the PubChem database.
#'
#' @export getSmiFromPubChem
#'
#' @examples
#' id = c('7847562', '7847563')  # Penicillamine
#' \donttest{
#' getSmiFromPubChem(id)}

getSmiFromPubChem = function (id, parallel = 5) {

    # example id : 7847562 (Penicillamine)
    # example url: https://pubchem.ncbi.nlm.nih.gov/rest/pug/substance/sid/7847562/record/SDF/?record_type=2d

    SdfTxt = getMolFromPubChem(id, parallel)

    tmpfile = tempfile(pattern = paste0(id, '-'), fileext = '.sdf')
    for (i in 1:length(id)) cat(SdfTxt[[i]], file = tmpfile[i])
    Mol = readMolFromSDF(tmpfile)
    Smi = sapply(Mol, getSmiles)
    unlink(tmpfile)

    return(Smi)

}
