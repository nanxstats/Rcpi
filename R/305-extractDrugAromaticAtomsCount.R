#' Calculates the Number of Aromatic Atoms Descriptor
#'
#' Calculates the Number of Aromatic Atoms Descriptor
#'
#' Calculates the number of aromatic atoms of a molecule.
#'
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules,
#' each column represents one feature.
#' This function returns one column named \code{naAromAtom}.
#'
#' @keywords extractDrugAromaticAtomsCount Aromatic Atoms Count
#'
#' @aliases extractDrugAromaticAtomsCount
#'
#' @author Nan Xiao <\url{http://nanx.me}>
#'
#' @export extractDrugAromaticAtomsCount
#'
#' @importFrom rcdk eval.desc
#'
#' @examples
#' \donttest{
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugAromaticAtomsCount(mol)
#' head(dat)}
#'

extractDrugAromaticAtomsCount = function (molecules, silent = TRUE) {

    x = eval.desc(molecules,
                  'org.openscience.cdk.qsar.descriptors.molecular.AromaticAtomsCountDescriptor',
                  verbose = !silent)

    return(x)

}
