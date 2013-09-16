#' Calculates the Number of Atom Descriptor
#'
#' Calculates the Number of Atom Descriptor
#'
#' Calculates the number of atoms of a certain element type in a molecule. By default it returns the count of all atoms.
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules, each column represents one feature,
#'         This function returns one column named \code{nAtom}.
#' 
#' @keywords extractDrugAtomCount Atom Count
#'
#' @aliases extractDrugAtomCount
#' 
#' @author Xiao Nan <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugAtomCount
#' 
#' @examples
#' \dontrun{
#' mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
#' extractDrugAtomCount(mol)}

extractDrugAtomCount = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.AtomCountDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
