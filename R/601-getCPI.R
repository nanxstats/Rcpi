.inner = function (a, b, f, ...) {
  
  # For computing column-by-column (pseudo)-tensor product type interactions
  
  f = match.fun(f)
  apply(b, 2, function (x) apply(a, 1, function (y) f(x, y, ...)))

}

.getCPICombine = function (drugmat, protmat) {
  
  return(cbind(drugmat, protmat))
  
}

.getCPITensor = function (drugmat, protmat, row, dcol, pcol) {
  
  return(array(.inner(t(drugmat), protmat, '*'), c(row, dcol * pcol)))

}

#' Generating Compound-Protein Interaction Features
#'
#' Generating Compound-Protein Interaction Features
#' 
#' This function calculates the compound-protein interaction features 
#' by three types of interaction:
#' \itemize{
#' \item \code{combine} - combine the two feature matrix, result has \code{(p1 + p2)} columns
#' \item \code{tensorprod} - calculate column-by-column (pseudo)-tensor product type interactions, result has \code{(p1 * p2)} columns
#' }
#' 
#' @param drugmat The compound feature matrix.
#' @param protmat The protein feture matrix.
#' @param type The interaction type, one or two of \code{"combine"} and \code{"tensorprod"}.
#' 
#' @return A matrix containing the compound-protein interaction features.
#' 
#' @keywords getCPI compound-protein interaction cpi
#'
#' @aliases getCPI
#' 
#' @author Nan Xiao <\url{http://www.road2stat.com}>
#' 
#' @seealso See \code{\link{getPPI}} for generating protein-protein interaction features.
#' 
#' @export getCPI
#' 
#' @examples
#' x = matrix(1:10, ncol = 2)
#' y = matrix(1:15, ncol = 3)
#' 
#' getCPI(x, y, 'combine')
#' getCPI(x, y, 'tensorprod')
#' getCPI(x, y, type = c('combine', 'tensorprod'))
#' getCPI(x, y, type = c('tensorprod', 'combine'))
#' 

getCPI = function (drugmat, protmat, type = c('combine', 'tensorprod')) {
  
  if (!is.matrix(drugmat)) drugmat = as.matrix(drugmat)
  if (!is.matrix(protmat)) protmat = as.matrix(protmat)
  
  drugrow = nrow(drugmat)
  protrow = nrow(protmat)
  
  if (drugrow != protrow) stop('Matrix row count must match')
  
  drugcol = ncol(drugmat)
  protcol = ncol(protmat)
  
  if (missing(type)) stop('Must provide at least one interaction type')
  
  if (all(type == 'combine')) {
    
    result = .getCPICombine(drugmat, protmat)
    
    } else if (all(type == 'tensorprod')) {
      
      result = .getCPITensor(drugmat, protmat, row = drugrow, dcol = drugcol, pcol = protcol)
      
      } else if (length(setdiff(type, c('tensorprod', 'combine'))) == 0L) {
        
        result = cbind(.getCPICombine(drugmat, protmat), .getCPITensor(drugmat, protmat, row = drugrow, dcol = drugcol, pcol = protcol))
        
        } else {
          
          stop('Interaction type must be in "tensorprod" and "combine" or both')
        
        }
  
  return(result)
  
}
