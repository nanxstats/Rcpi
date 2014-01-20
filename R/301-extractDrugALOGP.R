#' Calculates Atom Additive logP and Molar Refractivity Values Descriptor
#'
#' Calculates Atom Additive logP and Molar Refractivity Values Descriptor
#' 
#' Calculates ALOGP (Ghose-Crippen LogKow) and the Ghose-Crippen molar refractivity as described by Ghose, A.K. and Crippen, G.M. Note the underlying code in CDK assumes that aromaticity has been detected before evaluating this descriptor. The code also expects that the molecule will have hydrogens explicitly set. For SD files, this is usually not a problem since hydrogens are explicit. But for the case of molecules obtained from SMILES, hydrogens must be made explicit.
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules, each column represents one feature,
#'         This function returns three columns named \code{ALogP}, \code{ALogp2} and \code{AMR}.
#' 
#' @keywords extractDrugALOGP ALOGP
#'
#' @aliases extractDrugALOGP
#' 
#' @author Nan Xiao <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugALOGP
#' 
#' @references
#' Ghose, A.K. and Crippen, G.M. , 
#' Atomic physicochemical parameters for three-dimensional structure-directed 
#' quantitative structure-activity relationships. 
#' I. Partition coefficients as a measure of hydrophobicity, 
#' Journal of Computational Chemistry, 1986, 7:565-577.
#' 
#' Ghose, A.K. and Crippen, G.M. , 
#' Atomic physicochemical parameters for three-dimensional-structure-directed 
#' quantitative structure-activity relationships. 
#' 2. Modeling dispersive and hydrophobic interactions, 
#' Journal of Chemical Information and Computer Science, 1987, 27:21-35.
#' 
#' @examples
#' \dontrun{
#' mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
#' extractDrugALOGP(mol)}
#' 

extractDrugALOGP = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.ALOGPDescriptor', 
                      verbose = !silent)

  return(x)
  
}
