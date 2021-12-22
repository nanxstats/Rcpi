#' Retrieve Protein Sequence in FASTA Format from the KEGG Database
#'
#' Retrieve Protein Sequence in FASTA Format from the KEGG Database
#'
#' This function retrieves protein sequences in FASTA format
#' from the KEGG database.
#'
#' @param id A character vector, as the protein ID.
#' @param parallel An integer, the parallel parameter, indicates how many
#'                 process the user would like to use for retrieving
#'                 the data (using RCurl), default is \code{5}.
#'                 For regular cases, we recommend a number less than \code{20}.
#'
#' @return A list, each component contains one of the protein sequences
#' in FASTA format.
#'
#' @seealso See \code{\link{getSeqFromKEGG}} for retrieving protein
#' represented by amino acid sequence from the KEGG database.
#' See \code{\link{readFASTA}} for reading FASTA format files.
#'
#' @export getFASTAFromKEGG
#'
#' @importFrom RCurl getURLAsynchronous
#'
#' @examples
#' id = c('hsa:10161', 'hsa:10162')
#' \donttest{
#' getFASTAFromKEGG(id)}

getFASTAFromKEGG = function (id, parallel = 5) {

    # example id : hsa:10161
    # example url: http://rest.kegg.jp/get/hsa:10161/aaseq

    fastaURL = paste0('http://rest.kegg.jp/get/', id, '/aaseq')

    fastaTxt = getURLAsynchronous(url = fastaURL, perform = parallel)

    return(fastaTxt)

}

#' Retrieve Protein Sequence from the KEGG Database
#'
#' Retrieve Protein Sequence from the KEGG Database
#'
#' This function retrieves protein represented by amino acid sequence
#' from the KEGG database.
#'
#' @param id A character vector, as the protein ID.
#' @param parallel An integer, the parallel parameter, indicates how many
#'                 process the user would like to use for retrieving
#'                 the data (using RCurl), default is \code{5}.
#'                 For regular cases, we recommend a number less than \code{20}.
#'
#' @return A list, each component contains one of the protein represented by
#' amino acid sequence(s).
#'
#' @seealso See \code{\link{getFASTAFromKEGG}} for retrieving protein sequence
#' in FASTA format from the KEGG database.
#'
#' @export getSeqFromKEGG
#'
#' @examples
#' id = c('hsa:10161', 'hsa:10162')
#' \donttest{
#' getSeqFromKEGG(id)}

getSeqFromKEGG = function (id, parallel = 5) {

    # example id : hsa:10161
    # example url: http://rest.kegg.jp/get/hsa:10161/aaseq

    fastaTxt = getFASTAFromKEGG(id, parallel)

    tmpfile = tempfile(pattern = paste0(id, '-'), fileext = 'fasta')
    for (i in 1:length(id)) write(fastaTxt[[i]], tmpfile[i])

    AASeq = lapply(tmpfile, readFASTA)

    unlink(tmpfile)

    return(AASeq)

}
