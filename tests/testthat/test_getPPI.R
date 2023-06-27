test_that("`getPPI()` works", {
    x = matrix(1:10, ncol = 2)
    y = matrix(5:14, ncol = 2)

    expect_equal(ncol(getPPI(x, y, type = 'combine')), 4L)
    expect_equal(ncol(getPPI(x, y, type = 'tensorprod')), 4L)
    expect_equal(ncol(getPPI(x, y, type = 'entrywise')), 4L)
    expect_equal(ncol(getPPI(x, y, type = c('combine', 'tensorprod'))), 8L)
    expect_equal(ncol(getPPI(x, y, type = c('combine', 'entrywise'))), 8L)
    expect_equal(ncol(getPPI(x, y, type = c('entrywise', 'tensorprod'))), 8L)
    expect_equal(ncol(getPPI(x, y, type = c('combine', 'entrywise', 'tensorprod'))), 12L)
})
