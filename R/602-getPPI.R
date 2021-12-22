.getPPICombine = function (protmat1, protmat2) {

    return(cbind(protmat1, protmat2))

}

.getPPITensor = function (protmat1, protmat2, row, col) {

    return(array(.inner(t(protmat1), protmat2, '*'), c(row, col^2)))

}

.getPPIEntry = function (protmat1, protmat2) {

    return(cbind((protmat1 * protmat2), (protmat1 + protmat2)))

}

#' Generating Protein-Protein Interaction Descriptors
#'
#' Generating Protein-Protein Interaction Descriptors
#'
#' This function calculates the protein-protein interaction descriptors
#' by three types of interaction:
#' \itemize{
#' \item \code{combine} - combine the two descriptor matrix,
#' result has \code{(p + p)} columns
#' \item \code{tensorprod} - calculate column-by-column
#' (pseudo)-tensor product type interactions, result has \code{(p * p)} columns
#' \item \code{entrywise} - calculate entrywise product and
#' entrywise sum of the two matrices, then combine them,
#' result has \code{(p + p)} columns
#' }
#'
#' @param protmat1 The first protein descriptor matrix,
#' must have the same ncol with \code{protmat2}.
#' @param protmat2 The second protein descriptor matrix,
#' must have the same ncol with \code{protmat1}.
#' @param type The interaction type, one or more of
#' \code{"combine"}, \code{"tensorprod"}, and \code{"entrywise"}.
#'
#' @return A matrix containing the protein-protein interaction descriptors
#'
#' @seealso See \code{\link{getCPI}} for generating
#' compound-protein interaction descriptors.
#'
#' @export getPPI
#'
#' @examples
#' x = matrix(1:10, ncol = 2)
#' y = matrix(5:14, ncol = 2)
#'
#' getPPI(x, y, type = 'combine')
#' getPPI(x, y, type = 'tensorprod')
#' getPPI(x, y, type = 'entrywise')
#' getPPI(x, y, type = c('combine', 'tensorprod'))
#' getPPI(x, y, type = c('combine', 'entrywise'))
#' getPPI(x, y, type = c('entrywise', 'tensorprod'))
#' getPPI(x, y, type = c('combine', 'entrywise', 'tensorprod'))
#'

getPPI = function(
    protmat1, protmat2,
    type = c('combine', 'tensorprod', 'entrywise')) {

    if (!is.matrix(protmat1)) protmat1 = as.matrix(protmat1)
    if (!is.matrix(protmat2)) protmat2 = as.matrix(protmat2)

    protrow1 = nrow(protmat1)
    protrow2 = nrow(protmat2)

    if (protrow1 != protrow2) stop('Matrix row count must match')

    protcol1 = ncol(protmat1)
    protcol2 = ncol(protmat2)

    if (protcol1 != protcol2) stop('Matrix column count must match')

    if (missing(type)) stop('Must provide at least one interaction type')

    if (all(type == 'combine')) {

        result = .getPPICombine(protmat1, protmat2)

    } else if (all(type == 'tensorprod')) {

        result = .getPPITensor(protmat1, protmat2,
                               row = protrow1, col = protcol1)

    } else if (all(type == 'entrywise')) {

        result = .getPPIEntry(protmat1, protmat2)

    } else if (length(setdiff(type, c('tensorprod', 'combine'))) == 0L) {

        result = cbind(.getPPICombine(protmat1, protmat2),
                       .getPPITensor(protmat1, protmat2,
                                     row = protrow1, col = protcol1))

    } else if (length(setdiff(type, c('tensorprod', 'entrywise'))) == 0L) {

        result = cbind(.getPPITensor(protmat1, protmat2,
                                     row = protrow1,
                                     col = protcol1),
                       .getPPIEntry(protmat1, protmat2))

    } else if (length(setdiff(type, c('combine', 'entrywise'))) == 0L) {

        result = cbind(.getPPICombine(protmat1, protmat2),
                       .getPPIEntry(protmat1, protmat2))

    } else if (length(setdiff(type, c('tensorprod',
                                      'combine',
                                      'entrywise'))) == 0L) {

        result = cbind(.getPPICombine(protmat1, protmat2),
                       .getPPITensor(protmat1, protmat2,
                                     row = protrow1,
                                     col = protcol1),
                       .getPPIEntry(protmat1, protmat2))

    } else {

        stop('Interaction type must be in "tensorprod", "combine" and "entrywise"')

    }

    return(result)

}
