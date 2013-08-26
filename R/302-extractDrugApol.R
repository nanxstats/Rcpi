# Descriptor that calculates the sum of the atomic polarizabilities (including implicit hydrogens).
# Sum of the atomic polarizabilities (including implicit hydrogens). Polarizabilities are taken from http://www.sunysccc.edu/academic/mst/ptable/p-table2.htm.
# 
# Return 1 features: apol

extractDrugApol = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.APolDescriptor', 
                      verbose = FALSE)
  
  return(x)
  
}
