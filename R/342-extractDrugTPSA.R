#' Descriptor of Topological Polar Surface Area Based on Fragment Contributions (TPSA)
#'
#' Descriptor of Topological Polar Surface Area Based on Fragment Contributions (TPSA)
#'
#' Calculate the descriptor of topological polar surface area based on fragment contributions (TPSA).
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules, each column represents one feature,
#'         This function returns one column named \code{TopoPSA}.
#' 
#' @keywords extractDrugTPSA Topological Polar Surface Area
#'
#' @aliases extractDrugTPSA
#' 
#' @author Xiao Nan <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugTPSA
#' 
#' @references
#' Ertl, P., Rohde, B., & Selzer, P. (2000). 
#' Fast calculation of molecular polar surface area as a sum of 
#' fragment-based contributions and its application to the prediction 
#' of drug transport properties. 
#' Journal of medicinal chemistry, 43(20), 3714-3717.
#' 
#' @examples
#' \dontrun{
#' mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
#' extractDrugTPSA(mol)}

extractDrugTPSA = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.TPSADescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
