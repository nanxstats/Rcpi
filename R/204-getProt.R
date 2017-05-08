#' Retrieve Protein Sequence in various Formats from Databases
#'
#' Retrieve Protein Sequence in various Formats from Databases
#'
#' This function retrieves protein sequence in various formats from
#' three databases.
#'
#' @param id A character vector, as the protein ID(s).
#' @param from The database, one of \code{'uniprot'}, \code{'kegg'},
#' or \code{'pdb'}.
#' @param type The returned protein format, one of \code{fasta}, \code{pdb},
#' or \code{aaseq}.
#' @param parallel An integer, the parallel parameter, indicates how many
#'                 process the user would like to use for retrieving
#'                 the data (using RCurl), default is \code{5}.
#'                 For regular cases, we recommend a number less than \code{20}.
#'
#' @return A length of \code{id} character list, each element
#' containing the corresponding protein sequence(s) or file(s).
#'
#' @keywords getProt
#'
#' @aliases getProt
#'
#' @author Nan Xiao <\url{https://nanx.me}>
#'
#' @seealso See \code{\link{getDrug}} for retrieving drug molecules
#' from five databases.
#'
#' @export getProt
#'
#' @examples
#' id = c('P00750', 'P00751', 'P00752')
#' \donttest{
#' getProt(id, from = 'uniprot', type = 'aaseq')}

getProt = function(
    id,
    from = c('uniprot', 'kegg', 'pdb'),
    type = c('fasta', 'pdb', 'aaseq'),
    parallel = 5) {

    if (is.null(from)) stop('Must specify a data source')
    if (is.null(type)) stop('Must specify a data type')

    # Exclude 3 special case from total 9 possible combinations

    if (from == 'uniprot' & type == 'pdb')
        stop('UniProt only supports type = "fasta" or type = "aaseq"')
    if (from == 'kegg' & type == 'pdb')
        stop('KEGG only supports type = "fasta" or type = "aaseq"')
    if (from == 'pdb' & type == 'fasta')
        stop('RCSB PDB only supports type = "pdb" or type = "aaseq"')

    FromDict = c('uniprot' = 'UniProt', 'kegg' = 'KEGG', 'pdb' = 'RCSBPDB')
    TypeDict = c('fasta' = 'FASTA', 'pdb' = 'PDB', 'aaseq' = 'Seq')

    NamePart1 = TypeDict[type]
    NamePart2 = FromDict[from]

    FunctionName = paste('get', NamePart1, 'From', NamePart2, sep = '')

    Prot = eval(parse(text = paste(
        FunctionName, '(',
        gsub('\\"', '\'', capture.output(dput(id))),
        ', ', parallel, ')', sep = '')))

    return(Prot)

}
