# Descriptor characterizing molecular complexity in terms of its Murcko framework
# 
# An implementation of the FMF descriptor characterizing complexity of a molecule.
# The descriptor is described in [Yang, Y. and Chen, H. and Nilsson, I. and Muresan, S. and Engkvist, O., Investigation of the Relationship between Topology and Selectivity for Druglike Molecules, J. Med. Chem., 2010, ASAP:] and is an approach to characterizing molecular complexity based on the Murcko framework present in the molecule. The descriptor is the ratio of heavy atoms in the framework to the total number of heavy atoms in the molecule. By definition, acyclic molecules which have no frameworks, will have a value of 0. Note that the authors consider an isolated ring system to be a framework (even though there is no linker). This descriptor returns a single double value, labeled as "FMF"
# 
# 1 feature: FMF

extractDrugFMF = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.FMFDescriptor', 
                      verbose = FALSE)
  
  return(x)
  
}
