test_that("`getCPI()` works", {
    x = matrix(1:10, ncol = 2)
    y = matrix(1:15, ncol = 3)

    expect_equal(ncol(getCPI(x, y, 'combine')), 5L)
    expect_equal(ncol(getCPI(x, y, 'tensorprod')), 6L)
    expect_equal(ncol(getCPI(x, y, type = c('combine', 'tensorprod'))), 11L)
    expect_equal(ncol(getCPI(x, y, type = c('tensorprod', 'combine'))), 11L)
})
