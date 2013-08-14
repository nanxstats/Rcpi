inner = function (a, b, f, ...) {
  f = match.fun(f)
  apply(b, 2, function(x) apply(a, 1, function(y) f(x, y, ...)))
}

getCPICombine = function (drugmat, protmat) {
  
  return(cbind(drugmat, protmat))
  
}

getCPITensor = function (drugmat, protmat, row, dcol, pcol) {
  
  return(array(inner(t(drugmat), protmat, '*'), c(row, dcol * pcol)))

}

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
    
    result = getCPICombine(drugmat, protmat)
    
  } else if (all(type == 'tensorprod')) {
    
    result = getCPITensor(drugmat, protmat, row = drugrow, dcol = drugcol, pcol = protcol)
    
  } else if (length(setdiff(type, c('tensorprod', 'combine'))) == 0L) {
    
    result = cbind(getCPICombine(drugmat, protmat), getCPITensor(drugmat, protmat, row = drugrow, dcol = drugcol, pcol = protcol))
    
  } else {
    
    stop('Interaction type must be in "tensorprod" and "combine" or both')
    
  }
  
  return(result)
  
}


# x = matrix(1:10, ncol = 2)
# y = matrix(1:15, ncol = 3)
# 
# getCPI(x, y)
# getCPI(x, y, 'combine')
# getCPI(x, y, 'tensorprod')
# getCPI(x, y, type = c('combine', 'tensorprod'))
# getCPI(x, y, type = c('tensorprod', 'combine'))
# getCPI(x, y, type = c('cbm'))

## column-by-column (pseudo)-tensor product interactions
## 
# x = matrix(1:10, ncol = 2)
# y = matrix(1:15, ncol = 3)
# 
# inner = function (a, b, f, ...) {
#   f = match.fun(f)
#   apply(b, 2, function(x) apply(a, 1, function(y) f(x, y, ...)))
# }
# 
# array(inner(t(x), y, '*'), c(5, 6))
