test_getPPI = function() {
    x = matrix(1:10, ncol = 2)
    y = matrix(5:14, ncol = 2)
    checkEquals(ncol(getPPI(x, y, type = 'combine')), 4L)
    checkEquals(ncol(getPPI(x, y, type = 'tensorprod')), 4L)
    checkEquals(ncol(getPPI(x, y, type = 'entrywise')), 4L)
    checkEquals(ncol(getPPI(x, y, type = c('combine', 'tensorprod'))), 8L)
    checkEquals(ncol(getPPI(x, y, type = c('combine', 'entrywise'))), 8L)
    checkEquals(ncol(getPPI(x, y, type = c('entrywise', 'tensorprod'))), 8L)
    checkEquals(ncol(getPPI(x, y, type = c('combine', 'entrywise', 'tensorprod'))), 12L)
}
