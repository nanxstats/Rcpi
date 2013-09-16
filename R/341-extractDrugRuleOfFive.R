#' Descriptor that Calculates the Number Failures of the Lipinski's Rule Of Five
#'
#' Descriptor that Calculates the Number Failures of the Lipinski's Rule Of Five
#'  
#' This descriptor calculates the number failures of the Lipinski's Rule Of Five:
#' \url{http://en.wikipedia.org/wiki/Lipinski\%27s_Rule_of_Five}.
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules, each column represents one feature,
#'         This function returns one column named \code{LipinskiFailures}.
#' 
#' @keywords extractDrugRuleOfFive Lipinski Rule Five
#'
#' @aliases extractDrugRuleOfFive
#' 
#' @author Xiao Nan <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugRuleOfFive
#' 
#' @examples
#' \dontrun{
#' mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
#' extractDrugRuleOfFive(mol)}

extractDrugRuleOfFive = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.RuleOfFiveDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
