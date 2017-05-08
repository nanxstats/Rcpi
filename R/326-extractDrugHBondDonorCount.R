#' Number of Hydrogen Bond Donors
#'
#' Number of Hydrogen Bond Donors
#'
#' This descriptor calculates the number of hydrogen bond donors using
#' a slightly simplified version of the PHACIR atom types
#' (\url{http://www.chemie.uni-erlangen.de/model2001/abstracts/rester.html}).
#' The following groups are counted as hydrogen bond donors:
#' \itemize{
#' \item Any-OH where the formal charge of the oxygen is non-negative
#' (i.e. formal charge >= 0)
#' \item Any-NH where the formal charge of the nitrogen is non-negative
#' (i.e. formal charge >= 0)
#' }
#'
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules,
#' each column represents one feature.
#' This function returns one column named \code{nHBDon}.
#'
#' @keywords extractDrugHBondDonorCount Bond Donor Count
#'
#' @aliases extractDrugHBondDonorCount
#'
#' @author Nan Xiao <\url{https://nanx.me}>
#'
#' @export extractDrugHBondDonorCount
#'
#' @importFrom rcdk eval.desc
#'
#' @examples
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' \donttest{
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugHBondDonorCount(mol)
#' head(dat)}

extractDrugHBondDonorCount = function (molecules, silent = TRUE) {

    x = eval.desc(
        molecules,
        'org.openscience.cdk.qsar.descriptors.molecular.HBondDonorCountDescriptor',
        verbose = !silent)

    return(x)

}
