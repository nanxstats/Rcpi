#' Calculate Drug Molecule Similarity Derived by 
#' Maximum Common Substructure Search
#' 
#' Calculate Drug Molecule Similarity Derived by 
#' Maximum Common Substructure Search
#' 
#' This function calculate drug molecule similarity derived by 
#' maximum common substructure search. The maximum common substructure search
#' algorithm is provided by the \code{fmcsR} package.
#' 
#' @param mol1 The first molecule. R character string object 
#' containing the molecule. See examples.
#' @param mol2 The second molecule. R character string object 
#' containing the molecule. See examples.
#' @param type The input molecule format, 'smile' or 'sdf'.
#' @param plot Logical. Should we plot the two molecules and 
#' their maximum common substructure?
#' @param al Lower bound for the number of atom mismatches. Default is 0.
#' @param au Upper bound for the number of atom mismatches. Default is 0.
#' @param bl Lower bound for the number of bond mismatches. Default is 0.
#' @param bu Upper bound for the number of bond mismatches. Default is 0.
#' @param matching.mode Three modes for bond matching are supported: 
#'                      \code{'static'}, \code{'aromatic'}, and \code{'ring'}.
#' @param ... Other graphical parameters
#' 
#' @return A list containing the detail MCS information and similarity values.
#'         The numeric similarity value includes Tanimoto coefficient 
#'         and overlap coefficient.
#' 
#' @keywords calcDrugMCSSim Drug Similarity MCS Maximum Common Substructure
#' 
#' @aliases calcDrugMCSSim
#' 
#' @author Nan Xiao <\url{http://r2s.name}>
#' 
#' @export calcDrugMCSSim
#' 
#' @references
#' Wang, Y., Backman, T. W., Horan, K., & Girke, T. (2013). 
#' fmcsR: mismatch tolerant maximum common substructure searching in R. 
#' Bioinformatics, 29(21), 2792--2794.
#' 
#' @examples
#' \donttest{
#' mol1 = 'CC(C)CCCCCC(=O)NCC1=CC(=C(C=C1)O)OC'
#' mol2 = 'O=C(NCc1cc(OC)c(O)cc1)CCCC/C=C/C(C)C'
#' mol3 = readChar(system.file('compseq/DB00859.sdf', package = 'Rcpi'), nchars = 1e+6)
#' mol4 = readChar(system.file('compseq/DB00860.sdf', package = 'Rcpi'), nchars = 1e+6)
#' 
#' sim1 = calcDrugMCSSim(mol1, mol2, type = 'smile')
#' sim2 = calcDrugMCSSim(mol3, mol4, type = 'sdf', plot = TRUE)
#' print(sim1[[2]])  # Tanimoto Coefficient
#' print(sim2[[3]])  # Overlap Coefficient}
#' 

calcDrugMCSSim = function (mol1, mol2, type = c('smile', 'sdf'), plot = FALSE, 
                           al = 0, au = 0, bl = 0, bu = 0, 
                           matching.mode = 'static', ...) {

    if (type == 'smile') {

        # smile to sdfset
        sdfset1 = ChemmineR::smiles2sdf(mol1)
        sdfset2 = ChemmineR::smiles2sdf(mol2)

        } else if (type == 'sdf') {

            # sdf to sdfset
            sdfstr1 = ChemmineR::read.SDFstr(textConnection(mol1))
            sdfstr2 = ChemmineR::read.SDFstr(textConnection(mol2))
            sdfset1 = as(sdfstr1, 'SDFset')
            sdfset2 = as(sdfstr2, 'SDFset')

            } else {

                stop('Molecule type must be "smile" or "sdf"')

            }

    mcs = fmcsR::fmcs(sdfset1, sdfset2, al = al, au = au, bl = bl, bu = bu, 
                      matching.mode = matching.mode, fast = FALSE)

    if (plot == TRUE) fmcsR::plotMCS(mcs, ...)

    x = list(mcs, 
             mcs@stats['Tanimoto_Coefficient'], 
             mcs@stats['Overlap_Coefficient'])

    return(x)

}
