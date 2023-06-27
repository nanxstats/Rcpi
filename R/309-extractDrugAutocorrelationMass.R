#' Calculate the Moreau-Broto Autocorrelation Descriptors using Atomic Weight
#'
#' Calculate the Moreau-Broto Autocorrelation Descriptors using Atomic Weight
#'
#' Calculates the ATS autocorrelation descriptor,
#' where the weight equal to the scaled atomic mass.
#'
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules,
#' each column represents one feature. This function returns 5 columns named
#' \code{ATSm1}, \code{ATSm2}, \code{ATSm3}, \code{ATSm4}, \code{ATSm5}.
#'
#' @export extractDrugAutocorrelationMass
#'
#' @references
#' Moreau, Gilles, and Pierre Broto.
#' The autocorrelation of a topological structure: a new molecular descriptor.
#' Nouv. J. Chim 4 (1980): 359-360.
#'
#' @examples
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' \donttest{
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugAutocorrelationMass(mol)
#' head(dat)}

extractDrugAutocorrelationMass = function (molecules, silent = TRUE) {
    evaluateDescriptor(molecules, type = 'AutocorrelationDescriptorMass', silent = silent)
}
