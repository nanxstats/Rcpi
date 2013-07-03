# Prediction of logP based on the atom-type method called XLogP
# 
# Prediction of logP based on the atom-type method called XLogP. Requires all hydrogens to be explicit.
# 
# For description of the methodology see Ref. [Wang, R., Fu, Y., and Lai, L., A New Atom-Additive Method for Calculating Partition Coefficients, Journal of Chemical Information and Computer Sciences, 1997, 37:615-621] and [Wang, R., Gao, Y., and Lai, L., Calculating partition coefficient by atom-additive method, Perspectives in Drug Discovery and Design, 2000, 19:47-66]. Actually one molecular factor is missing (presence of para Hs donor pair).
# 
# 1 feature: XLogP

extractDrugXLogP = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.XLogPDescriptor', 
                      verbose = FALSE)
  
  return(x)
  
}
