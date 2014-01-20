#' Calculates the Descriptor that Describes the Number of Basic Groups
#'
#' Calculates the Descriptor that Describes the Number of Basic Groups
#' 
#' Calculates the number of basic groups. 
#' The list of basic groups is defined by these SMARTS 
#' \code{"[$([NH2]-[CX4])]"}, \code{"[$([NH](-[CX4])-[CX4])]"}, 
#' \code{"[$(N(-[CX4])(-[CX4])-[CX4])]"}, \code{"[$([*;+;!$(*~[*;-])])]"}, \code{"[$(N=C-N)]"}, 
#' and \code{"[$(N-C=N)]"} originally presented in JOELib.
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules, each column represents one feature,
#'         This function returns one column named \code{nBase}.
#' 
#' @keywords extractDrugBasicGroupCount Basic Group Count
#'
#' @aliases extractDrugBasicGroupCount
#' 
#' @author Nan Xiao <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugBasicGroupCount
#' 
#' @examples
#' \dontrun{
#' mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
#' extractDrugBasicGroupCount(mol)}

extractDrugBasicGroupCount = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.BasicGroupCountDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
