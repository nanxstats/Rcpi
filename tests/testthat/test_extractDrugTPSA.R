test_that("`extractDrugTPSA()` works", {
    skip_if_not_installed("rcdk")

    smi = c(
        'c1ccc2c(c1)oc(=O)c(C(CC(=O)C)c1ccc([N+](=O)[O-])cc1)c2O',
        'c1(ccc(cc1)O)NC(=O)C',
        'c1ccccc1NC(=O)C',
        'n1nc(S(=O)(=O)N)sc1NC(=O)C',
        'O=S(=O)(c1ccc(cc1)C(=O)C)NC(=O)NC1CCCCC1',
        'CC(=O)NO'
    )
    mol = readMolFromSmi(textConnection(smi), type = 'mol')
    dat = extractDrugTPSA(mol)

    expect_equal(sum(as.matrix(dat)), 490.79, tolerance = 1e-2)
})
