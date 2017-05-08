#' Topological Descriptor Characterizing the Carbon Connectivity
#' in Terms of Hybridization
#'
#' Topological Descriptor Characterizing the Carbon Connectivity
#' in Terms of Hybridization
#'
#' Calculates the carbon connectivity in terms of hybridization.
#' The function calculates 9 descriptors in the following order:
#'
#' \itemize{
#' \item \code{C1SP1} - triply hound carbon bound to one other carbon
#' \item \code{C2SP1} - triply bound carbon bound to two other carbons
#' \item \code{C1SP2} - doubly hound carbon bound to one other carbon
#' \item \code{C2SP2} - doubly bound carbon bound to two other carbons
#' \item \code{C3SP2} - doubly bound carbon bound to three other carbons
#' \item \code{C1SP3} - singly bound carbon bound to one other carbon
#' \item \code{C2SP3} - singly bound carbon bound to two other carbons
#' \item \code{C3SP3} - singly bound carbon bound to three other carbons
#' \item \code{C4SP3} - singly bound carbon bound to four other carbons
#' }
#'
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules,
#' each column represents one feature.
#' This function returns 9 columns named
#' \code{C1SP1}, \code{C2SP1}, \code{C1SP2}, \code{C2SP2}, \code{C3SP2},
#' \code{C1SP3}, \code{C2SP3}, \code{C3SP3} and \code{C4SP3}.
#'
#' @keywords extractDrugCarbonTypes Carbon Types
#'
#' @aliases extractDrugCarbonTypes
#'
#' @author Nan Xiao <\url{http://nanx.me}>
#'
#' @export extractDrugCarbonTypes
#'
#' @importFrom rcdk eval.desc
#'
#' @examples
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' \donttest{
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugCarbonTypes(mol)
#' head(dat)}

extractDrugCarbonTypes = function (molecules, silent = TRUE) {

    x = eval.desc(
        molecules,
        'org.openscience.cdk.qsar.descriptors.molecular.CarbonTypesDescriptor',
        verbose = !silent)

    return(x)

}
