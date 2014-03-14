#' Calculates the Sum of the Atomic Polarizabilities Descriptor
#'
#' Calculates the Sum of the Atomic Polarizabilities Descriptor
#'
#' Calculates the sum of the atomic polarizabilities 
#' (including implicit hydrogens) descriptor. 
#' Polarizabilities are taken from 
#' \url{http://www.sunysccc.edu/academic/mst/ptable/p-table2.htm}.
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process 
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules, 
#' each column represents one feature. 
#' This function returns one column named \code{apol}.
#' 
#' @keywords extractDrugApol Apol
#'
#' @aliases extractDrugApol
#' 
#' @author Nan Xiao <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugApol
#' 
#' @importFrom rcdk eval.desc
#' 
#' @examples
#' \donttest{
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugApol(mol)
#' head(dat)}
#' 

extractDrugApol = function (molecules, silent = TRUE) {

    x = eval.desc(molecules, 
                  'org.openscience.cdk.qsar.descriptors.molecular.APolDescriptor', 
                  verbose = !silent)

    return(x)

}
