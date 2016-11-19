#' Descriptor that Calculates the Volume of A Molecule
#'
#' Descriptor that Calculates the Volume of A Molecule
#'
#' This descriptor calculates the volume of a molecule.
#'
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules,
#' each column represents one feature.
#' This function returns one column named \code{VABC}.
#'
#' @keywords extractDrugVABC Volume VABC
#'
#' @aliases extractDrugVABC
#'
#' @author Nan Xiao <\url{http://nanx.me}>
#'
#' @export extractDrugVABC
#'
#' @importFrom rcdk eval.desc
#'
#' @examples
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' \donttest{
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugVABC(mol)
#' head(dat)}

extractDrugVABC = function (molecules, silent = TRUE) {

    x = eval.desc(molecules,
                  'org.openscience.cdk.qsar.descriptors.molecular.VABCDescriptor',
                  verbose = !silent)

    return(x)

}
