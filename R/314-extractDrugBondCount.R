#' Calculate the Descriptor Based on the Number of Bonds of a
#' Certain Bond Order
#'
#' Calculate the Descriptor Based on the Number of Bonds of a
#' Certain Bond Order
#'
#' Calculates the descriptor based on the number of bonds of a
#' certain bond order.
#'
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules,
#' each column represents one feature.
#' This function returns one column named \code{nB}.
#'
#' @keywords extractDrugBondCount Bond Count
#'
#' @aliases extractDrugBondCount
#'
#' @author Nan Xiao <\url{http://nanx.me}>
#'
#' @export extractDrugBondCount
#'
#' @importFrom rcdk eval.desc
#'
#' @examples
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' \donttest{
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugBondCount(mol)
#' head(dat)}

extractDrugBondCount = function (molecules, silent = TRUE) {

    x = eval.desc(molecules,
                  'org.openscience.cdk.qsar.descriptors.molecular.BondCountDescriptor',
                  verbose = !silent)

    return(x)

}
