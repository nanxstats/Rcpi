#' Descriptor that Calculates the Number of Atoms in the Largest Chain
#'
#' Descriptor that Calculates the Number of Atoms in the Largest Chain
#'
#' This descriptor calculates the number of atoms in the largest chain.
#' Note that a chain exists if there are two or more atoms.
#' Thus single atom molecules will return \code{0}.
#'
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules,
#' each column represents one feature.
#' This function returns one column named \code{nAtomLC}.
#'
#' @export extractDrugLargestChain
#'
#' @examples
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' \donttest{
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugLargestChain(mol)
#' head(dat)}

extractDrugLargestChain = function (molecules, silent = TRUE) {
    evaluateDescriptor(molecules, type = 'LargestChainDescriptor', silent = silent)
}
