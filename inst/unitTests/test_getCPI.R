test_getCPI = function() {
    x = matrix(1:10, ncol = 2)
    y = matrix(1:15, ncol = 3)
    checkEquals(ncol(getCPI(x, y, 'combine')), 5L)
    checkEquals(ncol(getCPI(x, y, 'tensorprod')), 6L)
    checkEquals(ncol(getCPI(x, y, type = c('combine', 'tensorprod'))), 11L)
    checkEquals(ncol(getCPI(x, y, type = c('tensorprod', 'combine'))), 11L)
}
