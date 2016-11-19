#' Calculates the Moreau-Broto Autocorrelation Descriptors using Polarizability
#'
#' Calculates the Moreau-Broto Autocorrelation Descriptors using Polarizability
#'
#' Calculates the ATS autocorrelation descriptor using polarizability.
#'
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules,
#' each column represents one feature. This function returns 5 columns named
#' \code{ATSp1}, \code{ATSp2}, \code{ATSp3}, \code{ATSp4}, \code{ATSp5}.
#'
#' @keywords extractDrugAutocorrelationPolarizability
#' Autocorrelation Polarizability
#'
#' @aliases extractDrugAutocorrelationPolarizability
#'
#' @author Nan Xiao <\url{http://nanx.me}>
#'
#' @export extractDrugAutocorrelationPolarizability
#'
#' @importFrom rcdk eval.desc
#'
#' @examples
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' \donttest{
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugAutocorrelationPolarizability(mol)
#' head(dat)}

extractDrugAutocorrelationPolarizability = function (molecules, silent = TRUE) {

    x = eval.desc(molecules,
                  'org.openscience.cdk.qsar.descriptors.molecular.AutocorrelationDescriptorPolarizability',
                  verbose = !silent)

    return(x)

}
