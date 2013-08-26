# Returns the number of atoms in the longest aliphatic chain
# 
# Returns the number of atoms in the longest aliphatic chain
# 
# 1 feature: nAtomLAC

extractDrugLongestAliphaticChain = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.LongestAliphaticChainDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
