#' Calculate Molecular Distance Edge (MDE) Descriptors for C, N and O
#'
#' Calculate Molecular Distance Edge (MDE) Descriptors for C, N and O
#'
#' This descriptor calculates the 10 molecular distance edge (MDE) descriptor
#' described in Liu, S., Cao, C., & Li, Z, and in addition it calculates
#' variants where O and N are considered.
#'
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules,
#' each column represents one feature.
#' This function returns one column named \code{nAtomLAC}.
#'
#' @keywords extractDrugMDE MDE Molecular Distance Edge
#'
#' @aliases extractDrugMDE
#'
#' @author Nan Xiao <\url{http://nanx.me}>
#'
#' @export extractDrugMDE
#'
#' @importFrom rcdk eval.desc
#'
#' @references
#' Liu, S., Cao, C., & Li, Z. (1998).
#' Approach to estimation and prediction for normal boiling point (NBP)
#' of alkanes based on a novel molecular distance-edge (MDE) vector, lambda.
#' Journal of chemical information and computer sciences, 38(3), 387-394.
#'
#' @examples
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' \donttest{
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugMDE(mol)
#' head(dat)}

extractDrugMDE = function (molecules, silent = TRUE) {

    x = eval.desc(
        molecules,
        'org.openscience.cdk.qsar.descriptors.molecular.MDEDescriptor',
        verbose = !silent)

    return(x)

}
