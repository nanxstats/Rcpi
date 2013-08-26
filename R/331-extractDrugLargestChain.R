# Returns the number of atoms in the largest chain

# Returns the number of atoms in the largest chain. 
# Note that a chain exists if there are two or more atoms. Thus single atom molecules will return 0

# 1 feature: nAtomLC

extractDrugLargestChain = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.LargestChainDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
