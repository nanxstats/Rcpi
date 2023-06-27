#' Calculate the Number of Aromatic Bonds Descriptor
#'
#' Calculate the Number of Aromatic Bonds Descriptor
#'
#' Calculates the number of aromatic bonds of a molecule.
#'
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules,
#' each column represents one feature.
#' This function returns one column named \code{nAromBond}.
#'
#' @export extractDrugAromaticBondsCount
#'
#' @examples
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' \donttest{
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugAromaticBondsCount(mol)
#' head(dat)}

extractDrugAromaticBondsCount = function (molecules, silent = TRUE) {
    evaluateDescriptor(molecules, type = 'AromaticBondsCountDescriptor', silent = silent)
}
