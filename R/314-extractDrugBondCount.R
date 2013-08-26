# Descriptor based on the number of bonds of a certain bond order.
# Descriptor based on the number of bonds of a certain bond order.
# 1 feature: nB

extractDrugBondCount = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.BondCountDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
