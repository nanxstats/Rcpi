# Returns the number of amino acids found in the molecues
# Returns the number of each amino acid in an molecue.
# 20 features: nA nR nN nD nC nF nQ nE nG nH nI nP nL nK nM nS nT nY nV nW

extractDrugAminoAcidCount = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.AminoAcidCountDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
