#' Descriptor that Calculates the Number of Nonrotatable Bonds on A Molecule
#'
#' Descriptor that Calculates the Number of Nonrotatable Bonds on A Molecule
#'
#' The number of rotatable bonds is given by the SMARTS specified by
#' Daylight on SMARTS tutorial
#' (\url{https://www.daylight.com/dayhtml_tutorials/languages/smarts/smarts_examples.html})
#'
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules,
#' each column represents one feature.
#' This function returns one column named \code{nRotB}.
#'
#' @export extractDrugRotatableBondsCount
#'
#' @examples
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' \donttest{
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugRotatableBondsCount(mol)
#' head(dat)}

extractDrugRotatableBondsCount = function (molecules, silent = TRUE) {
    evaluateDescriptor(molecules, type = 'RotatableBondsCountDescriptor', silent = silent)
}
