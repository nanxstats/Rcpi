#' Descriptor that Calculates the Number Failures of the Lipinski's Rule Of Five
#'
#' Descriptor that Calculates the Number Failures of the Lipinski's Rule Of Five
#'  
#' This descriptor calculates the number failures of the Lipinski's Rule Of Five:
#' \url{http://en.wikipedia.org/wiki/Lipinski\%27s_Rule_of_Five}.
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process 
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules, 
#' each column represents one feature. 
#' This function returns one column named \code{LipinskiFailures}.
#' 
#' @keywords extractDrugRuleOfFive Lipinski Rule Five
#'
#' @aliases extractDrugRuleOfFive
#' 
#' @author Nan Xiao <\url{http://r2s.name}>
#' 
#' @export extractDrugRuleOfFive
#' 
#' @importFrom rcdk eval.desc
#' 
#' @examples
#' \donttest{
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugRuleOfFive(mol)
#' head(dat)}
#' 

extractDrugRuleOfFive = function (molecules, silent = TRUE) {

    x = eval.desc(molecules, 
                  'org.openscience.cdk.qsar.descriptors.molecular.RuleOfFiveDescriptor', 
                  verbose = !silent)

    return(x)

}
