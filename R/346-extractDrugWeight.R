# Descriptor based on the weight of atoms of a certain element type. If no element is specified, the returned value is the Molecular Weight
# 
# IDescriptor based on the weight of atoms of a certain element type. If the wild-card symbol * is specified, the returned value is the molecular weight. If an invalid element symbol is specified, the return value is 0 and no exception is thrown
# 
# 1 feature: MW

extractDrugWeight = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.WeightDescriptor', 
                      verbose = FALSE)
  
  return(x)
  
}
