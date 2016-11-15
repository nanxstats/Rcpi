#' Retrieve Drug Molecules in MOL and SMILES Format from Databases
#'
#' Retrieve Drug Molecules in MOL and SMILES Format from Databases
#'
#' This function retrieves drug molecules in MOL and SMILES format from five databases.
#'
#' @param id A character vector, as the drug ID(s).
#' @param from The database, one of \code{'pubchem'}, \code{'chembl'}, \code{'cas'},
#'             \code{'kegg'}, \code{'drugbank'}.
#' @param type The returned molecule format, \code{mol} or \code{smile}.
#' @param parallel An integer, the parallel parameter, indicates how many
#'                 process the user would like to use for retrieving
#'                 the data (using RCurl), default is \code{5}.
#'                 For regular cases, we recommend a number less than \code{20}.
#'
#' @return A length of \code{id} character vector,
#' each element containing the corresponding drug molecule.
#'
#' @keywords getDrug
#'
#' @aliases getDrug
#'
#' @author Nan Xiao <\url{http://nanx.me}>
#'
#' @seealso See \code{\link{getProt}} for retrieving protein sequences
#' from three databases.
#'
#' @export getDrug
#'
#' @examples
#' \donttest{
#' id = c('DB00859', 'DB00860')
#' getDrug(id, 'drugbank', 'smile')}
#'

getDrug = function (id,
                    from = c('pubchem', 'chembl', 'cas', 'kegg', 'drugbank'),
                    type = c('mol', 'smile'),
                    parallel = 5) {

    if (is.null(from)) stop('Must specify a data source')
    if (is.null(type)) stop('Must specify a data type')

    # Exclude 1 special case from total 10 possible combinations

    if (from == 'cas' & type == 'smile') stop('CAS only supports type = "mol" (InChI)')

    FromDict = c('pubchem' = 'PubChem', 'chembl' = 'ChEMBL',
                 'cas' = 'CAS', 'kegg' = 'KEGG', 'drugbank' = 'DrugBank')

    TypeDict = c('mol' = 'Mol', 'smile' = 'Smi')

    NamePart1 = TypeDict[type]
    NamePart2 = FromDict[from]

    FunctionName = paste('get', NamePart1, 'From', NamePart2, sep = '')

    Drug = eval(parse(text = paste(FunctionName, '(',
                                   gsub('\\"', '\'', capture.output(dput(id))),
                                   ', ', parallel, ')', sep = '')))

    return(Drug)

}
