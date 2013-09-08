#' Calculates the Sum of the Atomic Polarizabilities Descriptor
#'
#' Calculates the Sum of the Atomic Polarizabilities Descriptor
#'
#' Calculates the sum of the atomic polarizabilities (including implicit hydrogens) descriptor. Polarizabilities are taken from \url{http://www.sunysccc.edu/academic/mst/ptable/p-table2.htm}.
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules, each column represents one feature,
#'         This function returns one column named \code{apol}.
#' 
#' @keywords extractDrugApol Apol
#'
#' @aliases extractDrugApol
#' 
#' @author Xiao Nan <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugApol
#' 
#' @examples
#' \dontrun{
#' mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
#' extractDrugApol(mol)}
#' 

extractDrugApol = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.APolDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
