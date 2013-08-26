# Characterizes molecular complexity in terms of carbon hybridization states
# 
# Returns the fraction of sp3 carbons to sp2 carbons.
# Note that it only considers carbon atoms and rather than use a simple ratio it reports the value of Nsp3/ (Nsp3 + Nsp2). The original form of the descriptor (i.e., simple ratio) has been used to characterize molecular complexity, especially in the are of natural products , which usually have a high value of the sp3 to sp2 ratio.
# 
# 1 feature: HybRatio

extractDrugHybridizationRatio = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.HybridizationRatioDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
