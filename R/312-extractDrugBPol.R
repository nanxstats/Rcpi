#' Calculate the Descriptor that Describes the Sum of the Absolute
#' Value of the Difference between Atomic Polarizabilities of
#' All Bonded Atoms in the Molecule
#'
#' Calculates the Descriptor that Describes the Sum of the Absolute
#' Value of the Difference between Atomic Polarizabilities of
#' All Bonded Atoms in the Molecule
#'
#' This descriptor calculates the sum of the absolute value of the
#' difference between atomic polarizabilities of all bonded atoms
#' in the molecule (including implicit hydrogens) with polarizabilities
#' taken from \url{http://www.sunysccc.edu/academic/mst/ptable/p-table2.htm}.
#' This descriptor assumes 2-centered bonds.
#'
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules,
#' each column represents one feature.
#' This function returns one column named \code{bpol}.
#'
#' @export extractDrugBPol
#'
#' @importFrom rcdk eval.desc
#'
#' @examples
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' \donttest{
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugBPol(mol)
#' head(dat)}

extractDrugBPol = function (molecules, silent = TRUE) {

    x = eval.desc(
        molecules,
        'org.openscience.cdk.qsar.descriptors.molecular.BPolDescriptor',
        verbose = !silent)

    return(x)

}
