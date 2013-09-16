#' Calculates the Number of Aromatic Atoms Descriptor
#'
#' Calculates the Number of Aromatic Atoms Descriptor
#'
#' Calculates the number of aromatic atoms of a molecule.
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules, each column represents one feature,
#'         This function returns one column named \code{naAromAtom}.
#' 
#' @keywords extractDrugAromaticAtomsCount Aromatic Atoms Count
#'
#' @aliases extractDrugAromaticAtomsCount
#' 
#' @author Xiao Nan <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugAromaticAtomsCount
#' 
#' @examples
#' \dontrun{
#' mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
#' extractDrugAromaticAtomsCount(mol)}
#' 

extractDrugAromaticAtomsCount = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.AromaticAtomsCountDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
