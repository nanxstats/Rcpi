#' Descriptor that Calculates the Principal Moments of Inertia and Ratios of the Principal Moments
#'
#' Descriptor that Calculates the Principal Moments of Inertia and Ratios of the Principal Moments
#' 
#' A descriptor that calculates the moment of inertia and radius of gyration. 
#' Moment of inertia (MI) values characterize the mass distribution of a molecule. 
#' Related to the MI values, ratios of the MI values along the three principal 
#' axes are also well know modeling variables. 
#' This descriptor calculates the MI values along the 
#' X, Y and Z axes as well as the ratio's X/Y, X/Z and Y/Z. 
#' Finally it also calculates the radius of 
#' gyration of the molecule.
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules, each column represents one feature,
#'         This function returns 7 columns named \code{MOMI.X}, \code{MOMI.Y}, \code{MOMI.Z}, \code{MOMI.XY}, \code{MOMI.XZ}, \code{MOMI.YZ}, \code{MOMI.R}:
#'         \itemize{
#'         \item \code{MOMI.X} - MI along X axis
#'         \item \code{MOMI.Y} - MI along Y axis
#'         \item \code{MOMI.Z} - MI along Z axis
#'         \item \code{MOMI.XY} - X/Y
#'         \item \code{MOMI.XZ} - X/Z
#'         \item \code{MOMI.YZ} - Y/Z
#'         \item \code{MOMI.R} - Radius of gyration
#'         }
#'         
#'         One important aspect of the algorithm is that if the eigenvalues 
#'         of the MI tensor are below \code{1e-3}, 
#'         then the ratio's are set to a default of 1000.
#' 
#' @keywords extractDrugMomentOfInertia Moment Inertia
#'
#' @aliases extractDrugMomentOfInertia
#' 
#' @author Xiao Nan <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugMomentOfInertia
#' 
#' @examples
#' \dontrun{
#' mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
#' extractDrugMomentOfInertia(mol)}

extractDrugMomentOfInertia = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.MomentOfInertiaDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
