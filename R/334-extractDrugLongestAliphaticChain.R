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
#' @export extractDrugLongestAliphaticChain
#'
#' @examples
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' \donttest{
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugLongestAliphaticChain(mol)
#' head(dat)}

extractDrugLongestAliphaticChain = function (molecules, silent = TRUE) {
    evaluateDescriptor(molecules, type = 'LongestAliphaticChainDescriptor', silent = silent)
}
