#' Calculates the Ratio of Length to Breadth Descriptor
#' 
#' Calculates the Ratio of Length to Breadth Descriptor
#' 
#' Calculates the Ratio of Length to Breadth, as a result ti does not perform 
#' any orientation and only considers the X & Y 
#' extents for a series of rotations about the Z axis 
#' (in 10 degree increments).
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules, each column represents one feature,
#'         This function returns two columns named \code{LOBMAX} and \code{LOBMIN}:
#' \itemize{
#' \item \code{LOBMAX} - The maximum L/B ratio;
#' \item \code{LOBMIN} - The L/B ratio for the rotation that results in the 
#' minimum area (defined by the product of the X & Y extents for that orientation).
#' }
#' 
#' @keywords extractDrugLengthOverBreadth Length Breadth
#'
#' @aliases extractDrugLengthOverBreadth
#' 
#' @author Xiao Nan <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugLengthOverBreadth
#' 
#' @note The descriptor assumes that the atoms have been configured.
#' 
#' @examples
#' \dontrun{
#' mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
#' extractDrugLengthOverBreadth(mol)}
#' 

extractDrugLengthOverBreadth = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.LengthOverBreadthDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
