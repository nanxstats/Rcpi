#' Descriptor that Calculates the Number of Atoms in the Longest Aliphatic Chain
#'
#' Descriptor that Calculates the Number of Atoms in the Longest Aliphatic Chain
#'
#' This descriptor calculates the number of atoms in the longest aliphatic chain.
#'
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules,
#' each column represents one feature.
#' This function returns one column named \code{nAtomLAC}.
#'
#' @keywords extractDrugLongestAliphaticChain Longest Aliphatic Chain
#'
#' @aliases extractDrugLongestAliphaticChain
#'
#' @author Nan Xiao <\url{https://nanx.me}>
#'
#' @export extractDrugLongestAliphaticChain
#'
#' @importFrom rcdk eval.desc
#'
#' @examples
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' \donttest{
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugLongestAliphaticChain(mol)
#' head(dat)}

extractDrugLongestAliphaticChain = function (molecules, silent = TRUE) {

    x = eval.desc(
        molecules,
        'org.openscience.cdk.qsar.descriptors.molecular.LongestAliphaticChainDescriptor',
        verbose = !silent)

    return(x)

}
