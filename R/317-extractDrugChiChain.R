#' Calculate the Kier and Hall Chi Chain Indices of Orders 3, 4, 5, 6 and 7
#'
#' Calculate the Kier and Hall Chi Chain Indices of Orders 3, 4, 5, 6 and 7
#'
#' Evaluates chi chain descriptors.
#' The code currently evluates the simple and valence chi chain descriptors
#' of orders 3, 4, 5, 6 and 7.
#' It utilizes the graph isomorphism code of the CDK to find fragments matching
#' SMILES strings representing the fragments corresponding to each type of chain.
#'
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules,
#' each column represents one feature.
#' This function returns 10 columns, in the following order:
#' \itemize{
#' \item \code{SCH.3} - Simple chain, order 3
#' \item \code{SCH.4} - Simple chain, order 4
#' \item \code{SCH.5} - Simple chain, order 5
#' \item \code{SCH.6} - Simple chain, order 6
#' \item \code{SCH.7} - Simple chain, order 7
#' \item \code{VCH.3} - Valence chain, order 3
#' \item \code{VCH.4} - Valence chain, order 4
#' \item \code{VCH.5} - Valence chain, order 5
#' \item \code{VCH.6} - Valence chain, order 6
#' \item \code{VCH.7} - Valence chain, order 7
#' }
#'
#' @note These descriptors are calculated using graph isomorphism to identify
#' the various fragments. As a result calculations may be slow. In addition,
#' recent versions of Molconn-Z use simplified fragment definitions
#' (i.e., rings without branches etc.) whereas these descriptors use
#' the older more complex fragment definitions.
#'
#' @keywords extractDrugChiChain Chi Chain
#'
#' @aliases extractDrugChiChain
#'
#' @author Nan Xiao <\url{http://nanx.me}>
#'
#' @export extractDrugChiChain
#'
#' @importFrom rcdk eval.desc
#'
#' @examples
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' \donttest{
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugChiChain(mol)
#' head(dat)}

extractDrugChiChain = function (molecules, silent = TRUE) {

    x = eval.desc(molecules,
                  'org.openscience.cdk.qsar.descriptors.molecular.ChiChainDescriptor',
                  verbose = !silent)

    return(x)

}
