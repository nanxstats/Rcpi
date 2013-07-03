# Descriptor based on the number of aromatic bonds of a molecule.
# Return the number of aromatic bonds of a molecule.
# 1 feature: nAromBond

extractDrugAromaticBondsCount = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.AromaticBondsCountDescriptor', 
                      verbose = FALSE)
  
  return(x)
  
}
