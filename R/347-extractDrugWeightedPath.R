#' Descriptor that Calculates the Weighted Path (Molecular ID)
#'
#' Descriptor that Calculates the Weighted Path (Molecular ID)
#'
#' This descriptor calculates the weighted path (molecular ID)
#' described by Randic, characterizing molecular branching.
#' Five descriptors are calculated, based on the implementation in the ADAPT
#' software package. Note that the descriptor is based on identifying all paths
#' between pairs of atoms and so is NP-hard.
#' This means that it can take some time for large, complex molecules.
#'
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules,
#' each column represents one feature.
#' This function returns 5 columns named
#' \code{WTPT.1}, \code{WTPT.2}, \code{WTPT.3}, \code{WTPT.4}, \code{WTPT.5}:
#' \itemize{
#' \item \code{WTPT.1} - molecular ID
#' \item \code{WTPT.2} - molecular ID / number of atoms
#' \item \code{WTPT.3} - sum of path lengths starting from heteroatoms
#' \item \code{WTPT.4} - sum of path lengths starting from oxygens
#' \item \code{WTPT.5} - sum of path lengths starting from nitrogens
#' }
#'
#' @keywords extractDrugWeightedPath Weighted Path
#'
#' @aliases extractDrugWeightedPath
#'
#' @author Nan Xiao <\url{https://nanx.me}>
#'
#' @export extractDrugWeightedPath
#'
#' @importFrom rcdk eval.desc
#'
#' @references
#' Randic, M., On molecular identification numbers (1984).
#' Journal of Chemical Information and Computer Science, 24:164-175.
#'
#' @examples
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' \donttest{
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugWeightedPath(mol)
#' head(dat)}

extractDrugWeightedPath = function (molecules, silent = TRUE) {

    x = eval.desc(
        molecules,
        'org.openscience.cdk.qsar.descriptors.molecular.WeightedPathDescriptor',
        verbose = !silent)

    return(x)

}
