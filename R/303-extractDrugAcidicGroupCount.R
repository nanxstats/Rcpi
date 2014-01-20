#' Calculates the Number of Acidic Groups Descriptor
#'
#' Calculates the Number of Acidic Groups Descriptor
#'
#' Calculates the number of acidic groups descriptor. The list of acidic groups is defined by these SMARTS \code{"$([O;H1]-[C,S,P]=O)"}, \code{"$([*;-;!$(*~[*;+])])"}, \code{"$([NH](S(=O)=O)C(F)(F)F)"}, and \code{"$(n1nnnc1)"} originally presented in JOELib.
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules, each column represents one feature,
#'         This function returns one column named \code{nAcid}.
#' 
#' @keywords extractDrugAcidicGroupCount Acid Group Count
#'
#' @aliases extractDrugAcidicGroupCount
#' 
#' @author Nan Xiao <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugAcidicGroupCount
#' 
#' @examples
#' \dontrun{
#' mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
#' extractDrugAcidicGroupCount(mol)}
#' 

extractDrugAcidicGroupCount = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.AcidicGroupCountDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
