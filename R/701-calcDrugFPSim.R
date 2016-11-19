#' Calculate Drug Molecule Similarity Derived by Molecular Fingerprints
#'
#' Calculate Drug Molecule Similarity Derived by Molecular Fingerprints
#'
#' This function calculate drug molecule fingerprints similarity.
#' Define \code{a} as the features of object A, \code{b} is the
#' features of object B, \code{c} is the number of common features to A and B:
#' \itemize{
#' \item Tanimoto: aka Jaccard - \eqn{c/a+b+c}
#' \item Euclidean: \eqn{\sqrt(a + b)}
#' \item Dice: aka Sorensen, Czekanowski, Hodgkin-Richards -
#' \eqn{c/0.5[(a+c) + (b+c)]}
#' \item Cosine: aka Ochiai, Carbo - \eqn{c/\sqrt((a + c)(b + c))}
#' \item Hamming: aka Manhattan, taxi-cab, city-block distance - \eqn{(a + b)}
#' }
#'
#' @param fp1 The first molecule's fingerprints,
#'            could be extracted by \code{extractDrugMACCS()},
#'            \code{extractDrugMACCSComplete()} etc.
#' @param fp2 The second molecule's fingerprints.
#' @param fptype The fingerprint type, must be one of \code{"compact"} or
#' \code{"complete"}.
#' @param metric The similarity metric,
#'               one of \code{"tanimoto"}, \code{"euclidean"}, \code{"cosine"},
#'               \code{"dice"} and \code{"hamming"}.
#'
#' @return The numeric similarity value.
#'
#' @keywords calcDrugFPSim Drug Similarity Tanimoto Euclidean Dice Cosine Hamming
#'
#' @aliases calcDrugFPSim
#'
#' @author Nan Xiao <\url{http://nanx.me}>
#'
#' @export calcDrugFPSim
#'
#' @references
#' Gasteiger, Johann, and Thomas Engel, eds.
#' Chemoinformatics. Wiley.com, 2006.
#'
#' @examples
#' mols = readMolFromSDF(system.file('compseq/tyrphostin.sdf', package = 'Rcpi'))
#'
#' \donttest{
#' fp1 = extractDrugEstate(mols[[1]])
#' fp2 = extractDrugEstate(mols[[2]])
#' calcDrugFPSim(fp1, fp2, fptype = 'compact', metric = 'tanimoto')
#' calcDrugFPSim(fp1, fp2, fptype = 'compact', metric = 'euclidean')
#' calcDrugFPSim(fp1, fp2, fptype = 'compact', metric = 'cosine')
#' calcDrugFPSim(fp1, fp2, fptype = 'compact', metric = 'dice')
#' calcDrugFPSim(fp1, fp2, fptype = 'compact', metric = 'hamming')
#'
#' fp3 = extractDrugEstateComplete(mols[[1]])
#' fp4 = extractDrugEstateComplete(mols[[2]])
#' calcDrugFPSim(fp3, fp4, fptype = 'complete', metric = 'tanimoto')
#' calcDrugFPSim(fp3, fp4, fptype = 'complete', metric = 'euclidean')
#' calcDrugFPSim(fp3, fp4, fptype = 'complete', metric = 'cosine')
#' calcDrugFPSim(fp3, fp4, fptype = 'complete', metric = 'dice')
#' calcDrugFPSim(fp3, fp4, fptype = 'complete', metric = 'hamming')}

calcDrugFPSim = function (fp1, fp2, fptype = c('compact', 'complete'),
                          metric = c('tanimoto', 'euclidean', 'cosine',
                                     'dice', 'hamming')) {

    fptype = match.arg(fptype)
    metric = match.arg(metric)

    if ( !(fptype %in% c('compact', 'complete')) )
        stop('fptype must be one of "compact" or "complete"')
    if ( !(metric %in% c('tanimoto', 'euclidean', 'cosine', 'dice', 'hamming')) )
        stop('metric must be one of "tanimoto", "euclidean", "cosine", "dice", "hamming"')

    if (fptype == 'compact') {
        fp1ext = integer(as.integer(names(fp1)))
        fp1ext[fp1[[1]]] = 1L
        fp2ext = integer(as.integer(names(fp2)))
        fp2ext[fp2[[1]]] = 1L

        fp1 = fp1ext
        fp2 = fp2ext

        if ( length(fp1) != length(fp2) )
            stop('fingerprint vectors must have the same length')

        fp1 = as.logical(fp1)
        fp2 = as.logical(fp2)

        A = sum( (fp1 | fp2) & !fp2 )
        B = sum( (fp1 | fp2) & !fp1 )
        C = sum( fp1 & fp2 )
        D = sum( !(fp1 | fp2) )

        if (metric == 'tanimoto') dis = C/(A + B + C)

        if (metric == 'euclidean') dis = sqrt( (C + D) / (A + B + C + D) )

        if (metric == 'cosine') dis = C / sqrt( ( A + C ) * ( B + C ) )

        if (metric == 'dice') dis = C / ( 0.5 * ( (A + C) + (B + C) ) )

        if (metric == 'hamming') dis = (A + B) / (A + B + C + D)

    }

    if (fptype == 'complete') {

        if ( length(fp1) != length(fp2) )
            stop('fingerprint vectors must have the same length')

        fp1 = as.logical(fp1)
        fp2 = as.logical(fp2)

        A = sum( (fp1 | fp2) & !fp2 )
        B = sum( (fp1 | fp2) & !fp1 )
        C = sum( fp1 & fp2 )
        D = sum( !(fp1 | fp2) )

        if (metric == 'tanimoto') dis = C/(A + B + C)

        if (metric == 'euclidean') dis = sqrt( (C + D) / (A + B + C + D) )

        if (metric == 'cosine') dis = C / sqrt( ( A + C ) * ( B + C ) )

        if (metric == 'dice') dis = C / ( 0.5 * ( (A + C) + (B + C) ) )

        if (metric == 'hamming') dis = (A + B) / (A + B + C + D)

    }

    return(dis)

}
