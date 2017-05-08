#' Calculate Complexity of a System
#'
#' Calculate Complexity of a System
#'
#' This descriptor calculates the complexity of a system.
#' The complexity is defined in Nilakantan, R. et al. as:
#' \deqn{C = abs(B^2 - A^2 + A) + \frac{H}{100}}
#' where C is complexity, A is the number of non-hydrogen atoms,
#' B is the number of bonds and H is the number of heteroatoms.
#'
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules,
#' each column represents one feature.
#' This function returns one column named \code{fragC}.
#'
#' @keywords extractDrugFragmentComplexity Fragment Complexity
#'
#' @aliases extractDrugFragmentComplexity
#'
#' @author Nan Xiao <\url{http://nanx.me}>
#'
#' @export extractDrugFragmentComplexity
#'
#' @importFrom rcdk eval.desc
#'
#' @references
#' Nilakantan, R. and Nunn, D.S. and Greenblatt,
#' L. and Walker, G. and Haraki, K. and Mobilio, D.,
#' A family of ring system-based structural fragments
#' for use in structure-activity studies:
#' database mining and recursive partitioning.,
#' Journal of chemical information and modeling, 2006, 46:1069-1077
#'
#' @examples
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' \donttest{
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugFragmentComplexity(mol)
#' head(dat)}

extractDrugFragmentComplexity = function (molecules, silent = TRUE) {

    x = eval.desc(
        molecules,
        'org.openscience.cdk.qsar.descriptors.molecular.FragmentComplexityDescriptor',
        verbose = !silent)

    return(x)

}
