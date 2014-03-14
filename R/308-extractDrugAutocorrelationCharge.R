#' Calculates the Moreau-Broto Autocorrelation Descriptors using Partial Charges
#'
#' Calculates the Moreau-Broto Autocorrelation Descriptors using Partial Charges
#'
#' Calculates the ATS autocorrelation descriptor, 
#' where the weight equal to the charges.
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process 
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules, 
#' each column represents one feature. 
#' This function returns 5 columns named 
#' \code{ATSc1}, \code{ATSc2}, \code{ATSc3}, \code{ATSc4}, \code{ATSc5}.
#' 
#' @keywords extractDrugAutocorrelationCharge Autocorrelation Charge
#'
#' @aliases extractDrugAutocorrelationCharge
#' 
#' @author Nan Xiao <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugAutocorrelationCharge
#' 
#' @importFrom rcdk eval.desc
#' 
#' @examples
#' \donttest{
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugAutocorrelationCharge(mol)
#' head(dat)}
#' 

extractDrugAutocorrelationCharge = function (molecules, silent = TRUE) {

    x = eval.desc(molecules, 
                  'org.openscience.cdk.qsar.descriptors.molecular.AutocorrelationDescriptorCharge', 
                  verbose = !silent)

    return(x)

}
