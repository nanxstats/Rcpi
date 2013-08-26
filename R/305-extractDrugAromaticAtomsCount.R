# Descriptor based on the number of aromatic atoms of a molecule.
# Return the number of aromatic atoms of a molecule.
# 1 feature: naAromAtom

extractDrugAromaticAtomsCount = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.AromaticAtomsCountDescriptor', 
                      verbose = FALSE)
  
  return(x)
  
}
