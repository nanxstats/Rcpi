# Descriptor that calculates Kier and Hall kappa molecular shape indices

# Kier and Hall kappa molecular shape indices compare the molecular graph with minimal and maximal molecular graphs; a description is given at: http://www.chemcomp.com/Journal_of_CCG/Features/descr.htm#KH : "they are intended to capture different aspects of molecular shape. Note that hydrogens are ignored. In the following description, n denotes the number of atoms in the hydrogen suppressed graph, m is the number of bonds in the hydrogen suppressed graph. Also, let p2 denote the number of paths of length 2 and let p3 denote the number of paths of length 3".
# Returns three values in the order
# 
# Kier1 - First kappa shape index
# Kier2 - Second kappa shape index
# Kier3 - Third kappa (κ) shape index

# 3 features: Kier1 Kier2 Kier3

extractDrugKappaShapeIndices = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.KappaShapeIndicesDescriptor', 
                      verbose = FALSE)
  
  return(x)
  
}
