#' Retrieve Drug Molecules in MOL Format from the DrugBank Database
#'
#' Retrieve Drug Molecules in MOL Format from the DrugBank Database
#'
#' This function retrieves drug molecules in MOL format from the
#' DrugBank database.
#'
#' @param id A character vector, as the DrugBank drug ID.
#' @param parallel An integer, the parallel parameter, indicates how many
#'                 process the user would like to use for retrieving
#'                 the data (using RCurl), default is \code{5}.
#'                 For regular cases, we recommend a number less than \code{20}.
#'
#' @return A length of \code{id} character vector,
#' each element containing the corresponding drug molecule.
#'
#' @keywords getDrug getMolFromDrugBank DrugBank
#'
#' @aliases getMolFromDrugBank
#'
#' @author Nan Xiao <\url{http://nanx.me}>
#'
#' @seealso See \code{\link{getSmiFromDrugBank}} for retrieving drug molecules
#' in SMILES format from the DrugBank database.
#'
#' @export getMolFromDrugBank
#'
#' @importFrom RCurl getURLAsynchronous
#'
#' @examples
#' \donttest{
#' id = 'DB00859'  # Penicillamine
#' getMolFromDrugBank(id)}
#'

getMolFromDrugBank = function (id, parallel = 5) {

    # example id : DB00859 (Penicillamine)
    # example url: http://www.drugbank.ca/structures/structures/small_molecule_drugs/DB00859.sdf

    SdfURL = paste0('http://www.drugbank.ca/structures/structures/small_molecule_drugs/', id, '.sdf')

    SdfTxt = getURLAsynchronous(url = SdfURL, perform = parallel)

    return(SdfTxt)

}

#' Retrieve Drug Molecules in SMILES Format from the DrugBank Database
#'
#' Retrieve Drug Molecules in SMILES Format from the DrugBank Database
#'
#' This function retrieves drug molecules in SMILES format from the
#' DrugBank database.
#'
#' @param id A character vector, as the DrugBank drug ID.
#' @param parallel An integer, the parallel parameter, indicates how many
#'                 process the user would like to use for retrieving
#'                 the data (using RCurl), default is \code{5}.
#'                 For regular cases, we recommend a number less than \code{20}.
#'
#' @return A length of \code{id} character vector, each element containing
#' the corresponding drug molecule.
#'
#' @keywords getDrug getSmiFromDrugBank DrugBank
#'
#' @aliases getSmiFromDrugBank
#'
#' @author Nan Xiao <\url{http://nanx.me}>
#'
#' @seealso See \code{\link{getMolFromDrugBank}} for retrieving drug molecules
#' in MOL format from the DrugBank database.
#'
#' @export getSmiFromDrugBank
#'
#' @importFrom rcdk load.molecules get.smiles
#'
#' @examples
#' \donttest{
#' id = 'DB00859'  # Penicillamine
#' getSmiFromDrugBank(id)}
#'

getSmiFromDrugBank = function (id, parallel = 5) {

    # example id : DB00859 (Penicillamine)
    # example url: http://www.drugbank.ca/structures/structures/small_molecule_drugs/DB00859.sdf

    SdfTxt = getMolFromDrugBank(id, parallel)

    tmpfile = tempfile(pattern = paste0(id, '-'), fileext = 'sdf')
    for (i in 1:length(id)) cat(SdfTxt[[i]], file = tmpfile[i])

    Mol = load.molecules(tmpfile)
    Smi = sapply(Mol, get.smiles)

    unlink(tmpfile)

    return(Smi)

}
