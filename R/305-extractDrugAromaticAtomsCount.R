#' Calculate the Number of Aromatic Atoms Descriptor
#'
#' Calculate the Number of Aromatic Atoms Descriptor
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
#' @export extractDrugAromaticAtomsCount
#'
#' @importFrom rcdk eval.desc
#'
#' @examples
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' \donttest{
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugAromaticAtomsCount(mol)
#' head(dat)}

extractDrugAromaticAtomsCount = function (molecules, silent = TRUE) {

    x = eval.desc(
        molecules,
        'org.openscience.cdk.qsar.descriptors.molecular.AromaticAtomsCountDescriptor',
        verbose = !silent)

    return(x)

}
