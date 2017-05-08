#' Descriptor that Calculates the Number of Nonrotatable Bonds on A Molecule
#'
#' Descriptor that Calculates the Number of Nonrotatable Bonds on A Molecule
#'
#' The number of rotatable bonds is given by the SMARTS specified by
#' Daylight on SMARTS tutorial
#' (\url{http://www.daylight.com/dayhtml_tutorials/languages/smarts/smarts_examples.html#EXMPL})
#'
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules,
#' each column represents one feature.
#' This function returns one column named \code{nRotB}.
#'
#' @keywords extractDrugRotatableBondsCount Rotatable Bonds Count
#'
#' @aliases extractDrugRotatableBondsCount
#'
#' @author Nan Xiao <\url{https://nanx.me}>
#'
#' @export extractDrugRotatableBondsCount
#'
#' @importFrom rcdk eval.desc
#'
#' @examples
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' \donttest{
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugRotatableBondsCount(mol)
#' head(dat)}

extractDrugRotatableBondsCount = function (molecules, silent = TRUE) {

    x = eval.desc(
        molecules,
        'org.openscience.cdk.qsar.descriptors.molecular.RotatableBondsCountDescriptor',
        verbose = !silent)

    return(x)

}
