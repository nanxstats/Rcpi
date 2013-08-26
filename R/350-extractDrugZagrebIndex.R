# The sum of the squared atom degrees of all heavy atoms
# 
# Zagreb index: the sum of the squares of atom degree over all heavy atoms i.
# 
# 1 feature: Zagreb

extractDrugZagrebIndex = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.ZagrebIndexDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
