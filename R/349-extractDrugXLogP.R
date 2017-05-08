#' Descriptor that Calculates the Prediction of logP
#' Based on the Atom-Type Method Called XLogP
#'
#' Descriptor that Calculates the Prediction of logP
#' Based on the Atom-Type Method Called XLogP
#'
#' Prediction of logP based on the atom-type method called XLogP.
#'
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules,
#' each column represents one feature.
#' This function returns one column named \code{XLogP}.
#'
#' @keywords extractDrugXLogP XLogP
#'
#' @aliases extractDrugXLogP
#'
#' @author Nan Xiao <\url{http://nanx.me}>
#'
#' @export extractDrugXLogP
#'
#' @importFrom rcdk eval.desc
#'
#' @references
#' Wang, R., Fu, Y., and Lai, L.,
#' A New Atom-Additive Method for Calculating Partition Coefficients,
#' Journal of Chemical Information and Computer Sciences, 1997, 37:615-621.
#'
#' Wang, R., Gao, Y., and Lai, L.,
#' Calculating partition coefficient by atom-additive method,
#' Perspectives in Drug Discovery and Design, 2000, 19:47-66.
#'
#' @examples
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' \donttest{
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugXLogP(mol)
#' head(dat)}

extractDrugXLogP = function (molecules, silent = TRUE) {

    x = eval.desc(
        molecules,
        'org.openscience.cdk.qsar.descriptors.molecular.XLogPDescriptor',
        verbose = !silent)

    return(x)

}
