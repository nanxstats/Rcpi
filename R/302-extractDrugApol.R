#' Calculate the Sum of the Atomic Polarizabilities Descriptor
#'
#' Calculate the Sum of the Atomic Polarizabilities Descriptor
#'
#' Calculates the sum of the atomic polarizabilities
#' (including implicit hydrogens) descriptor.
#' Polarizabilities are taken from \url{https://bit.ly/3PvNbhe}.
#'
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules,
#' each column represents one feature.
#' This function returns one column named \code{apol}.
#'
#' @export extractDrugApol
#'
#' @examples
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' \donttest{
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugApol(mol)
#' head(dat)}

extractDrugApol = function (molecules, silent = TRUE) {
    evaluateDescriptor(molecules, type = 'APolDescriptor', silent = silent)
}
