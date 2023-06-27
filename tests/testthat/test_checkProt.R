test_that("`checkProt()` works", {
    expect_true(checkProt('ARNDCEQGHILKMFPSTWYV'))
    expect_false(checkProt('ZRNDCEQGHILKMFPSTWYV'))
})
