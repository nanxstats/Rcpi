#' Calculates the Descriptor that Evaluates the Ionization Potential
#'
#' Calculates the Descriptor that Evaluates the Ionization Potential
#'
#' Calculate the ionization potential of a molecule. 
#' The descriptor assumes that explicit hydrogens have been added to the molecules.
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules, each column represents one feature,
#'         This function returns one column named \code{MolIP}.
#' 
#' @keywords extractDrugIPMolecularLearning Ionization Potential
#'
#' @aliases extractDrugIPMolecularLearning
#' 
#' @author Xiao Nan <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugIPMolecularLearning
#' 
#' @examples
#' \dontrun{
#' mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
#' extractDrugIPMolecularLearning(mol)}

extractDrugIPMolecularLearning = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.IPMolecularLearningDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
