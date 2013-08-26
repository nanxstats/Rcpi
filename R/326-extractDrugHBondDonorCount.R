# Descriptor that calculates the number of hydrogen bond donors

# This descriptor calculates the number of hydrogen bond donors using a slightly simplified version of the PHACIR atom types (http://www.chemie.uni-erlangen.de/model2001/abstracts/rester.html). The following groups are counted as hydrogen bond donors:
#   * Any-OH where the formal charge of the oxygen is non-negative (i.e. formal charge >= 0)
#   * Any-NH where the formal charge of the nitrogen is non-negative (i.e. formal charge >= 0)

# 1 feature: nHBDon

extractDrugHBondDonorCount = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.HBondDonorCountDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
