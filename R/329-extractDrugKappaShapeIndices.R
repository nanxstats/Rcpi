#' Descriptor that Calculates Kier and Hall Kappa Molecular Shape Indices
#'
#' Descriptor that Calculates Kier and Hall Kappa Molecular Shape Indices
#'
#' Kier and Hall Kappa molecular shape indices compare the molecular graph
#' with minimal and maximal molecular graphs;
#' see \url{http://www.chemcomp.com/Journal_of_CCG/Features/descr.htm#KH}
#' for details:
#' "they are intended to capture different aspects of molecular shape.
#' Note that hydrogens are ignored. In the following description,
#' n denotes the number of atoms in the hydrogen suppressed graph,
#' m is the number of bonds in the hydrogen suppressed graph.
#' Also, let p2 denote the number of paths of length 2
#' and let p3 denote the number of paths of length 3".
#'
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules,
#' each column represents one feature.
#' This function returns 3 columns named
#' \code{Kier1}, \code{Kier2} and \code{Kier3}:
#' \itemize{
#' \item \code{Kier1} - First kappa shape index
#' \item \code{Kier2} - Second kappa shape index
#' \item \code{Kier3} - Third kappa shape index
#' }
#'
#' @keywords extractDrugKappaShapeIndices Kappa Shape Indices
#'
#' @aliases extractDrugKappaShapeIndices
#'
#' @author Nan Xiao <\url{http://nanx.me}>
#'
#' @export extractDrugKappaShapeIndices
#'
#' @importFrom rcdk eval.desc
#'
#' @examples
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' \donttest{
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugKappaShapeIndices(mol)
#' head(dat)}

extractDrugKappaShapeIndices = function (molecules, silent = TRUE) {

    x = eval.desc(
        molecules,
        'org.openscience.cdk.qsar.descriptors.molecular.KappaShapeIndicesDescriptor',
        verbose = !silent)

    return(x)

}
