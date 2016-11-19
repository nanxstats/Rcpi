#' Descriptor that Calculates the Total Weight of Atoms
#'
#' Descriptor that Calculates the Total Weight of Atoms
#'
#' This descriptor calculates the molecular weight.
#'
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules,
#' each column represents one feature.
#' This function returns one column named \code{MW}.
#'
#' @keywords extractDrugWeight Weight
#'
#' @aliases extractDrugWeight
#'
#' @author Nan Xiao <\url{http://nanx.me}>
#'
#' @export extractDrugWeight
#'
#' @importFrom rcdk eval.desc
#'
#' @examples
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' \donttest{
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugWeight(mol)
#' head(dat)}

extractDrugWeight = function (molecules, silent = TRUE) {

    x = eval.desc(molecules,
                  'org.openscience.cdk.qsar.descriptors.molecular.WeightDescriptor',
                  verbose = !silent)

    return(x)

}
