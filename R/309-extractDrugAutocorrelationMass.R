#' Calculates the Moreau-Broto Autocorrelation Descriptors using Atomic Weight
#'
#' Calculates the Moreau-Broto Autocorrelation Descriptors using Atomic Weight
#'
#' Calculates the ATS autocorrelation descriptor, where the weight equal to the scaled atomic mass.
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules, each column represents one feature,
#'         This function returns 5 columns named 
#'         \code{ATSm1}, \code{ATSm2}, \code{ATSm3}, \code{ATSm4}, \code{ATSm5}.
#' 
#' @keywords extractDrugAutocorrelationMass Autocorrelation Mass
#'
#' @aliases extractDrugAutocorrelationMass
#' 
#' @author Xiao Nan <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugAutocorrelationMass
#' 
#' @references
#' Moreau, Gilles, and Pierre Broto. 
#' The autocorrelation of a topological structure: a new molecular descriptor.
#' Nouv. J. Chim 4 (1980): 359-360.
#' 
#' @examples
#' \dontrun{
#' mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
#' extractDrugAutocorrelationMass(mol)}

extractDrugAutocorrelationMass = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.AutocorrelationDescriptorMass', 
                      verbose = !silent)
  
  return(x)
  
}
