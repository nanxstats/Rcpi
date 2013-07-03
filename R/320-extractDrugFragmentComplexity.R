# Class that returns the complexity of a system.

# Class that returns the complexity of a system. The complexity is defined as [Nilakantan, R. and Nunn, D.S. and Greenblatt, L. and Walker, G. and Haraki, K. and Mobilio, D., A family of ring system-based structural fragments for use in structure-activity studies: database mining and recursive partitioning., Journal of chemical information and modeling, 2006, 46:1069-1077]:
# C=abs(B^2-A^2+A)+H/100
# 
# where C=complexity, A=number of non-hydrogen atoms, B=number of bonds and H=number of heteroatoms

# 1 feature: fragC

extractDrugFragmentComplexity = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.FragmentComplexityDescriptor', 
                      verbose = FALSE)
  
  return(x)
  
}
