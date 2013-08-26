# The weighted path (molecular ID) descriptors described by Randic. They characterize molecular branching.
# 
# These decsriptors were described by Randic ([Randic, M. , On molecular identification numbers , Journal of Chemical Information and Computer Science, 1984, 24:164-175]) and characterize molecular branching. Five descriptors are calculated, based on the implementation in the ADAPT software package. Note that the descriptor is based on identifying all pahs between pairs of atoms and so is NP-hard. This means that it can take some time for large, complex molecules. The class returns a DoubleArrayResult containing the five descriptors in the order described below.
# 
# DMWP
# WTPT.1  - molecular ID
# WTPT.2	- molecular ID / number of atoms
# WTPT.3	- sum of path lengths starting from heteroatoms
# WTPT.4	- sum of path lengths starting from oxygens
# WTPT.5	- sum of path lengths starting from nitrogens
# 
# 5 features: WTPT.1 WTPT.2 WTPT.3 WTPT.4 WTPT.5

extractDrugWeightedPath = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.WeightedPathDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
