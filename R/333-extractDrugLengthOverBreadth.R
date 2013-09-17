#' Calculates the Ratio of Length to Breadth
#'
#' Calculates the Ratio of Length to Breadth
#'  
#' 
#' Calculates the Ratio of Length to Breadth, as a result ti does not perform any orientation and only considers the X & Y 
#' extents for a series of rotations about the Z axis (in 10 degree increments).
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules, each column represents one feature,
#'         This function returns one column named \code{nB}.
#' 
#' @keywords extractDrugBondCount Bond Count
#'
#' @aliases extractDrugBondCount
#' 
#' @author Xiao Nan <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugBondCount
#' 
#' @examples
#' \dontrun{
#' mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
#' extractDrugBondCount(mol)}

# Calculates the 

# Evaluates length over breadth descriptors.
# The current implementation reproduces the results obtained from the LOVERB descriptor routine in ADAPT. As a result ti does not perform any orientation and only considers the X & Y extents for a series of rotations about the Z axis (in 10 degree increments).
# 
# The class gives two descriptors
#   * LOBMAX - The maximum L/B ratio
#   * LOBMIN - The L/B ratio for the rotation that results in the minimum area (defined by the product of the X & Y extents for that orientation)
# Note: The descriptor assumes that the atoms have been configured.

# 2 features: LOBMAX LOBMIN

extractDrugLengthOverBreadth = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.LengthOverBreadthDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
