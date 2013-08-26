# Descriptor that calculates the number of hydrogen bond acceptors.

# This descriptor calculates the number of hydrogen bond acceptors using a slightly simplified version of the PHACIR atom types. The following groups are counted as hydrogen bond acceptors:
# any oxygen where the formal charge of the oxygen is non-positive (i.e. formal charge <= 0) except
#   1. an aromatic ether oxygen (i.e. an ether oxygen that is adjacent to at least one aromatic carbon)
#   2. an oxygen that is adjacent to a nitrogen
# any nitrogen where the formal charge of the nitrogen is non-positive (i.e. formal charge <= 0) except
#   1. a nitrogen that is adjacent to an oxygen

# 1 feature: nHBAcc

extractDrugHBondAcceptorCount = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.HBondAcceptorCountDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
