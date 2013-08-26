# Returns the number of atoms in the largest pi chain

# Returns the number of atoms in the largest pi chain

# 1 feature: nAtomP

extractDrugLargestPiSystem = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.LargestPiSystemDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
