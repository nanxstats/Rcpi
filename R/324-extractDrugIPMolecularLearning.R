# Descriptor that evaluates the ionization potential

# Calculate the ionization potential of a molecule. Up to now is only possible for atomContainers which contain; see IPAtomicDescriptor and IPBondDescriptor. The descriptor assumes that explicit hydrogens have been added to the molecule

# 1 feature: MolIP

extractDrugIPMolecularLearning = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.IPMolecularLearningDescriptor', 
                      verbose = FALSE)
  
  return(x)
  
}
