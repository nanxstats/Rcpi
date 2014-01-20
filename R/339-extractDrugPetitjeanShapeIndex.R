#' Descriptor that Calculates the Petitjean Shape Indices
#' 
#' Descriptor that Calculates the Petitjean Shape Indices
#' 
#' The topological and geometric shape indices described Petitjean and Bath et al. respectively.
#' Both measure the anisotropy in a molecule.
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules, each column represents one feature,
#'         This function returns two columns named \code{topoShape} (Topological Shape Index) and \code{geomShape} (Geometric Shape Index).
#' 
#' @keywords extractDrugPetitjeanShapeIndex Petitjean Geometric Shape Index
#'
#' @aliases extractDrugPetitjeanShapeIndex
#' 
#' @author Nan Xiao <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugPetitjeanShapeIndex
#' 
#' @references
#' Petitjean, M., 
#' Applications of the radius-diameter diagram to the classification of 
#' topological and geometrical shapes of chemical compounds, 
#' Journal of Chemical Information and Computer Science, 
#' 1992, 32:331-337
#' 
#' Bath, P.A. and Poirette, A.R. and Willet, P. and Allen, F.H. , 
#' The Extent of the Relationship between the Graph-Theoretical 
#' and the Geometrical Shape Coefficients of Chemical Compounds, 
#' Journal of Chemical Information and Computer Science, 1995, 35:714-716.
#' 
#' @examples
#' \dontrun{
#' mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
#' extractDrugPetitjeanShapeIndex(mol)}

extractDrugPetitjeanShapeIndex = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.PetitjeanShapeIndexDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
