test_checkProt = function() {
    checkTrue(checkProt('ARNDCEQGHILKMFPSTWYV'))
    checkTrue(!checkProt('ZRNDCEQGHILKMFPSTWYV'))
}
