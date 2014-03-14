test_acc = function() {
    p   = 8    # p is the scales number
    n   = 200  # n is the amino acid number
    lag = 7    # the lag paramter
    mat = matrix(rnorm(p * n), nrow = p, ncol = n)
    checkEquals(length(acc(mat, lag)), 448L)
}
