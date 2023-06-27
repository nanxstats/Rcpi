#' Parallelized Drug Molecule Similarity Search by
#' Molecular Fingerprints Similarity or Maximum Common Substructure Search
#'
#' Parallelized Drug Molecule Similarity Search by
#' Molecular Fingerprints Similarity or Maximum Common Substructure Search
#'
#' This function does compound similarity search derived by
#' various molecular fingerprints with various similarity measures or
#' derived by maximum common substructure search.
#' This function runs for a query compound against a set of molecules.
#'
#' @param mol The query molecule. The location of a \code{sdf} file
#' containing one molecule.
#' @param moldb The molecule database. The location of a \code{sdf} file
#' containing all the molecules to be searched with.
#' @param cores Integer. The number of CPU cores to use for parallel search,
#'        default is \code{2}. Users could use the \code{detectCores()} function
#'        in the \code{parallel} package to see how many cores they could use.
#' @param method \code{'fp'} or \code{'mcs'}. Search by molecular fingerprints
#'               or by maximum common substructure searching.
#' @param fptype The fingerprint type, only available when \code{method = 'fp'}.
#'               Rcpi supports 13 types of fingerprints, including
#'               \code{'standard'}, \code{'extended'}, \code{'graph'},
#'               \code{'hybrid'}, \code{'maccs'}, \code{'estate'},
#'               \code{'pubchem'}, \code{'kr'}, \code{'shortestpath'},
#'               \code{'fp2'}, \code{'fp3'}, \code{'fp4'}, \code{'obmaccs'}.
#' @param fpsim Similarity measure type for fingerprint,
#'              only available when \code{method = 'fp'}.
#'              Including \code{'tanimoto'}, \code{'euclidean'},
#'              \code{'cosine'}, \code{'dice'} and \code{'hamming'}.
#'              See \code{calcDrugFPSim} for details.
#' @param mcssim Similarity measure type for maximum common substructure search,
#'               only available when \code{method = 'mcs'}.
#'               Including \code{'tanimoto'} and \code{'overlap'}.
#' @param ... Other possible parameter for maximum common substructure search,
#'            see \code{calcDrugMCSSim} for available options.
#'
#' @return Named numerical vector.
#' With the decreasing similarity value of the molecules in the database.
#'
#' @export searchDrug
#'
#' @examples
#' mol = system.file('compseq/DB00530.sdf', package = 'Rcpi')
#' # DrugBank ID DB00530: Erlotinib
#' moldb = system.file('compseq/tyrphostin.sdf', package = 'Rcpi')
#' # Database composed by searching 'tyrphostin' in PubChem and filtered by Lipinski's Rule of Five
#' \donttest{
#' searchDrug(mol, moldb, cores = 4, method = 'fp', fptype = 'maccs', fpsim = 'hamming')
#' searchDrug(mol, moldb, cores = 4, method = 'fp', fptype = 'fp2', fpsim = 'tanimoto')
#' searchDrug(mol, moldb, cores = 4, method = 'mcs', mcssim = 'tanimoto')}

searchDrug = function(
    mol, moldb, cores = 2,
    method = c('fp', 'mcs'),
    fptype = c('standard', 'extended', 'graph',
               'hybrid', 'maccs', 'estate',
               'pubchem', 'kr', 'shortestpath',
               'fp2', 'fp3', 'fp4', 'obmaccs'),
    fpsim = c('tanimoto', 'euclidean', 'cosine',
              'dice', 'hamming'),
    mcssim = c('tanimoto', 'overlap'), ...) {

    doParallel::registerDoParallel(cores)

    if (method == 'fp') {

        if ( fptype %in% c('standard', 'extended', 'graph',
                           'hybrid',   'maccs',    'estate',
                           'pubchem',  'kr',       'shortestpath') ) {

            mol   = loadMolecules(mol)
            moldb = loadMolecules(moldb)

        }

        if ( fptype %in% c('fp2', 'fp3', 'fp4', 'obmaccs') ) {

            mol   = readChar(mol, nchars = file.info(mol)['size'])
            moldb = readChar(moldb, nchars = file.info(moldb)['size'])

        }

        if (fptype == 'standard') {

            molfp   = extractDrugStandardComplete(mol[[1]])
            moldbfp = extractDrugStandardComplete(moldb)

        }

        if (fptype == 'extended') {

            molfp   = extractDrugExtendedComplete(mol[[1]])
            moldbfp = extractDrugExtendedComplete(moldb)

        }

        if (fptype == 'graph') {

            molfp   = extractDrugGraphComplete(mol[[1]])
            moldbfp = extractDrugGraphComplete(moldb)

        }

        if (fptype == 'hybrid') {

            molfp   = extractDrugHybridizationComplete(mol[[1]])
            moldbfp = extractDrugHybridizationComplete(moldb)

        }

        if (fptype == 'maccs') {

            molfp   = extractDrugMACCSComplete(mol[[1]])
            moldbfp = extractDrugMACCSComplete(moldb)

        }

        if (fptype == 'estate') {

            molfp   = extractDrugEstateComplete(mol[[1]])
            moldbfp = extractDrugEstateComplete(moldb)

        }

        if (fptype == 'pubchem') {

            molfp   = extractDrugPubChemComplete(mol[[1]])
            moldbfp = extractDrugPubChemComplete(moldb)

        }

        if (fptype == 'kr') {

            molfp   = extractDrugKRComplete(mol[[1]])
            moldbfp = extractDrugKRComplete(moldb)

        }

        if (fptype == 'shortestpath') {

            molfp   = extractDrugShortestPathComplete(mol[[1]])
            moldbfp = extractDrugShortestPathComplete(moldb)

        }

        if (fptype == 'fp2') {

            molfp   = extractDrugOBFP2(mol, type = 'sdf')
            moldbfp = extractDrugOBFP2(moldb, type = 'sdf')

        }

        if (fptype == 'fp3') {

            molfp   = extractDrugOBFP3(mol, type = 'sdf')
            moldbfp = extractDrugOBFP3(moldb, type = 'sdf')

        }

        if (fptype == 'fp4') {

            molfp   = extractDrugOBFP4(mol, type = 'sdf')
            moldbfp = extractDrugOBFP4(moldb, type = 'sdf')

        }

        if (fptype == 'obmaccs') {

            molfp   = extractDrugOBMACCS(mol, type = 'sdf')
            moldbfp = extractDrugOBMACCS(moldb, type = 'sdf')

        }

        i = NULL

        rankvec = rep(NA, nrow(moldbfp))

        rankvec <- foreach (i = 1:nrow(moldbfp), .combine = 'c', .errorhandling = 'pass') %dopar% {
            tmp <- calcDrugFPSim(as.vector(molfp), as.vector(moldbfp[i, ]),
                                 fptype = 'complete', metric = fpsim)
        }

        rankvec.ord = order(rankvec, decreasing = TRUE)
        rankvec = rankvec[rankvec.ord]
        names(rankvec) = as.character(rankvec.ord)

    }

    if (method == 'mcs') {

        if (!is_pkg_available("ChemmineR")) {
            stop ("Must install the `ChemmineR` package to use the 'mcs' method.", call. = FALSE)
        }

        if (!is_pkg_available("fmcsR")) {
            stop ("Must install the `fmcsR` package to use the 'mcs' method.", call. = FALSE)
        }

        mol = eval(parse(text = "ChemmineR::read.SDFset(mol)"))
        moldb = eval(parse(text = "ChemmineR::read.SDFset(moldb)"))

        fmcsresult = eval(parse(text = "fmcsR::fmcsBatch(mol, moldb, ...)"))

        if (mcssim == 'tanimoto') {
            rankvec = fmcsresult[order(fmcsresult[, 'Tanimoto_Coefficient'],
                                       decreasing = TRUE), 'Tanimoto_Coefficient']
        }

        if (mcssim == 'overlap') {
            rankvec = fmcsresult[order(fmcsresult[, 'Overlap_Coefficient'],
                                       decreasing = TRUE), 'Overlap_Coefficient']
        }

        names(rankvec) = gsub('CMP', '', names(rankvec))

    }

    return(rankvec)

}

is_pkg_available <- function(x) requireNamespace(x, quietly = TRUE)
