#' Calculates the Moreau-Broto Autocorrelation Descriptors using Partial Charges
#'
#' Calculates the Moreau-Broto Autocorrelation Descriptors using Partial Charges
#'
#' Calculates the ATS autocorrelation descriptor, where the weight equal to the charges.
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules, each column represents one feature,
#'         This function returns 5 columns named 
#'         \code{ATSc1}, \code{ATSc2}, \code{ATSc3}, \code{ATSc4}, \code{ATSc5}.
#' 
#' @keywords extractDrugAutocorrelationCharge Autocorrelation Charge
#'
#' @aliases extractDrugAutocorrelationCharge
#' 
#' @author Nan Xiao <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugAutocorrelationCharge
#' 
#' @examples
#' \dontrun{
#' mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
#' extractDrugAutocorrelationCharge(mol)}

extractDrugAutocorrelationCharge = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.AutocorrelationDescriptorCharge', 
                      verbose = !silent)
  
  return(x)
  
}
