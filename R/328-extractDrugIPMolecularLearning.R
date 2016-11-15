#' Calculates the Descriptor that Evaluates the Ionization Potential
#'
#' Calculates the Descriptor that Evaluates the Ionization Potential
#'
#' Calculate the ionization potential of a molecule.
#' The descriptor assumes that explicit hydrogens have been added to the molecules.
#'
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules,
#' each column represents one feature.
#' This function returns one column named \code{MolIP}.
#'
#' @keywords extractDrugIPMolecularLearning Ionization Potential
#'
#' @aliases extractDrugIPMolecularLearning
#'
#' @author Nan Xiao <\url{http://nanx.me}>
#'
#' @export extractDrugIPMolecularLearning
#'
#' @importFrom rcdk eval.desc
#'
#' @examples
#' \donttest{
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugIPMolecularLearning(mol)
#' head(dat)}
#'

extractDrugIPMolecularLearning = function (molecules, silent = TRUE) {

    x = eval.desc(molecules,
                  'org.openscience.cdk.qsar.descriptors.molecular.IPMolecularLearningDescriptor',
                  verbose = !silent)

    return(x)

}
