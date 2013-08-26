# Descriptor based on the number of atoms of a certain element type.
# IDescriptor based on the number of atoms of a certain element type. It is possible to use the wild card symbol '*' as element type to get the count of all atoms.
# Return 1 feature: nAtom

extractDrugAtomCount = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.AtomCountDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
