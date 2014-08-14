#' Calculate the KR (Klekota and Roth) Molecular Fingerprints (in Compact Format)
#'
#' Calculate the KR (Klekota and Roth) Molecular Fingerprints (in Compact Format)
#' 
#' Calculate the 4860 bit fingerprint defined by Klekota and Roth.
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process 
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A list, each component represents one of the molecules, each element 
#' in the component represents the index of which element in the fingerprint is 1.
#' Each component's name is the length of the fingerprints.
#' 
#' @keywords extractDrugKR
#'
#' @aliases extractDrugKR
#' 
#' @author Nan Xiao <\url{http://r2s.name}>
#' 
#' @export extractDrugKR
#' 
#' @importFrom rcdk get.fingerprint
#' 
#' @seealso \link{extractDrugKRComplete}
#' 
#' @examples
#' \donttest{
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' mol = readMolFromSmi(smi, type = 'mol')
#' fp  = extractDrugKR(mol)
#' head(fp)}
#' 

extractDrugKR = function (molecules, silent = TRUE) {

    if (length(molecules) == 1) {

        x = get.fingerprint(molecules, type = 'kr', verbose = !silent)

        fp = vector('list', 1)
        fp[[1]] = x@bits
        names(fp) = x@nbit

        } else {

            x = lapply(molecules, get.fingerprint, 
                       type = 'kr', verbose = !silent)

            fp = vector('list', length(molecules))

            for (i in 1:length(molecules)) {

                fp[[i]] = x[[i]]@bits
                names(fp)[i] = x[[i]]@nbit

            }

        }

    return(fp)

}

#' Calculate the KR (Klekota and Roth) Molecular Fingerprints (in Complete Format)
#'
#' Calculate the KR (Klekota and Roth) Molecular Fingerprints (in Complete Format)
#' 
#' Calculate the 4860 bit fingerprint defined by Klekota and Roth.
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process 
#' should be shown or not, default is \code{TRUE}.
#'
#' @return An integer vector or a matrix. Each row represents one molecule, 
#' the columns represent the fingerprints.
#' 
#' @keywords extractDrugKRComplete
#'
#' @aliases extractDrugKRComplete
#' 
#' @author Nan Xiao <\url{http://r2s.name}>
#' 
#' @export extractDrugKRComplete
#' 
#' @importFrom rcdk get.fingerprint
#' 
#' @seealso \link{extractDrugKR}
#' 
#' @examples
#' \donttest{
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' mol = readMolFromSmi(smi, type = 'mol')
#' fp  = extractDrugKRComplete(mol)
#' dim(fp)}
#' 

extractDrugKRComplete = function (molecules, silent = TRUE) {

    if (length(molecules) == 1) {

        x = get.fingerprint(molecules, type = 'kr', verbose = !silent)

        fp = integer(4860)
        fp[x@bits] = 1L

        } else {

            x = lapply(molecules, get.fingerprint, 
                       type = 'kr', verbose = !silent)

            fp = matrix(0L, nrow = length(molecules), ncol = 4860)

            for (i in 1:length(molecules)) fp[ i, x[[i]]@bits ] = 1L

        }

    return(fp)

}
