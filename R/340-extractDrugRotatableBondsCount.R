# Descriptor that calculates the number of nonrotatable bonds on a molecule
# 
# The number of rotatable bonds is given by the SMARTS specified by Daylight on SMARTS tutorial
# (http://www.daylight.com/dayhtml_tutorials/languages/smarts/smarts_examples.html#EXMPL)
# 
# 1 feature: nRotB

extractDrugRotatableBondsCount = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.RotatableBondsCountDescriptor', 
                      verbose = FALSE)
  
  return(x)
  
}
