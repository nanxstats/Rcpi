#' Calculates the Number of Aromatic Bonds Descriptor
#'
#' Calculates the Number of Aromatic Bonds Descriptor
#'
#' Calculates the number of aromatic bonds of a molecule.
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process 
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules, 
#' each column represents one feature. 
#' This function returns one column named \code{nAromBond}.
#' 
#' @keywords extractDrugAromaticBondsCount Aromatic Bond Count
#'
#' @aliases extractDrugAromaticBondsCount
#' 
#' @author Nan Xiao <\url{http://r2s.name}>
#' 
#' @export extractDrugAromaticBondsCount
#' 
#' @importFrom rcdk eval.desc
#' 
#' @examples
#' \donttest{
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugAromaticBondsCount(mol)
#' head(dat)}
#' 

extractDrugAromaticBondsCount = function (molecules, silent = TRUE) {

    x = eval.desc(molecules, 
                  'org.openscience.cdk.qsar.descriptors.molecular.AromaticBondsCountDescriptor', 
                  verbose = !silent)

    return(x)

}
