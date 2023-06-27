#' Descriptor that Calculates Wiener Path Number and Wiener Polarity Number
#'
#' Descriptor that Calculates Wiener Path Number and Wiener Polarity Number
#'
#' This descriptor calculates the Wiener numbers, including the
#' Wiener Path number and the Wiener Polarity Number. Wiener path number:
#' half the sum of all the distance matrix entries; Wiener polarity number:
#' half the sum of all the distance matrix entries with a value of 3.
#'
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules,
#' each column represents one feature.
#' This function returns two columns named
#' \code{WPATH} (weiner path number) and \code{WPOL} (weiner polarity number).
#'
#' @export extractDrugWienerNumbers
#'
#' @references
#' Wiener, H. (1947).
#' Structural determination of paraffin boiling points.
#' Journal of the American Chemical Society, 69(1), 17-20.
#'
#' @examples
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' \donttest{
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugWienerNumbers(mol)
#' head(dat)}

extractDrugWienerNumbers = function (molecules, silent = TRUE) {
    evaluateDescriptor(molecules, type = 'WienerNumbersDescriptor', silent = silent)
}
