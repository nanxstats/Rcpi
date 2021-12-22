#' Descriptor that Calculates the Vertex Adjacency Information of A Molecule
#'
#' Descriptor that Calculates the Vertex Adjacency Information of A Molecule
#'
#' Vertex adjacency information (magnitude):
#' \eqn{1 + \log_2^m} where \eqn{m} is the number of heavy-heavy bonds.
#' If \eqn{m} is zero, then \code{0} is returned.
#'
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules,
#' each column represents one feature.
#' This function returns one column named \code{VAdjMat}.
#'
#' @export extractDrugVAdjMa
#'
#' @importFrom rcdk eval.desc
#'
#' @examples
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' \donttest{
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugVAdjMa(mol)
#' head(dat)}

extractDrugVAdjMa = function (molecules, silent = TRUE) {

    x = eval.desc(
        molecules,
        'org.openscience.cdk.qsar.descriptors.molecular.VAdjMaDescriptor',
        verbose = !silent)

    return(x)

}
