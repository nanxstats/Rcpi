# Describes the volume of a molecule
# 
# Volume descriptor using the method implemented in the VABCVolume class.
# 
# 1 feature: VABC

extractDrugVABC = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.VABCDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
