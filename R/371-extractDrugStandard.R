#' Calculate the Standard Molecular Fingerprints (in Compact Format)
#'
#' Calculate the Standard Molecular Fingerprints (in Compact Format)
#'
#' Calculate the standard molecular fingerprints.
#' Considers paths of a given length.
#' This is hashed fingerprints, with a default length of 1024.
#'
#' @param molecules Parsed molucule object.
#' @param depth The search depth. Default is \code{6}.
#' @param size The length of the fingerprint bit string. Default is \code{1024}.
#' @param silent Logical. Whether the calculating process
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A list, each component represents one of the molecules, each element
#' in the component represents the index of which element in the fingerprint is 1.
#' Each component's name is the length of the fingerprints.
#'
#' @export extractDrugStandard
#'
#' @seealso \link{extractDrugStandardComplete}
#'
#' @examples
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' \donttest{
#' mol = readMolFromSmi(smi, type = 'mol')
#' fp  = extractDrugStandard(mol)
#' head(fp)}

extractDrugStandard = function(
    molecules, depth = 6, size = 1024, silent = TRUE) {

    if (length(molecules) == 1) {

        x = getFingerprint(
            molecules, type = 'standard',
            depth = depth, size = size, silent = silent)

        fp = vector('list', 1)
        fp[[1]] = x@bits
        names(fp) = x@nbit

    } else {

        x = lapply(
            molecules, getFingerprint, type = 'standard',
            depth = depth, size = size, silent = silent)

        fp = vector('list', length(molecules))

        for (i in 1:length(molecules)) {

            fp[[i]] = x[[i]]@bits
            names(fp)[i] = x[[i]]@nbit

        }

    }

    return(fp)

}

#' Calculate the Standard Molecular Fingerprints (in Complete Format)
#'
#' Calculate the Standard Molecular Fingerprints (in Complete Format)
#'
#' Calculate the standard molecular fingerprints.
#' Considers paths of a given length.
#' This is hashed fingerprints, with a default length of 1024.
#'
#' @param molecules Parsed molucule object.
#' @param depth The search depth. Default is \code{6}.
#' @param size The length of the fingerprint bit string. Default is \code{1024}.
#' @param silent Logical. Whether the calculating process
#' should be shown or not, default is \code{TRUE}.
#'
#' @return An integer vector or a matrix. Each row represents one molecule,
#' the columns represent the fingerprints.
#'
#' @export extractDrugStandardComplete
#'
#' @seealso \link{extractDrugStandard}
#'
#' @examples
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' \donttest{
#' mol = readMolFromSmi(smi, type = 'mol')
#' fp  = extractDrugStandardComplete(mol)
#' dim(fp)}

extractDrugStandardComplete = function(
    molecules, depth = 6, size = 1024, silent = TRUE) {

    if (length(molecules) == 1) {

        x = getFingerprint(
            molecules, type = 'standard',
            depth = depth, size = size, silent = silent)

        fp = integer(x@nbit)
        fp[x@bits] = 1L

    } else {

        x = lapply(
            molecules, getFingerprint, type = 'standard',
            depth = depth, size = size, silent = silent)

        fp = matrix(0L, nrow = length(molecules), ncol = size)

        for (i in 1:length(molecules)) fp[ i, x[[i]]@bits ] = 1L

    }

    return(fp)

}
