# Descriptor that calculates the vertex adjacency information of a molecule
# 
# Vertex adjacency information (magnitude): 1 + log2 m where m is the number of heavy-heavy bonds. If m is zero, then zero is returned. (definition from MOE tutorial on line)
# 
# 1 feature: VAdjMat

extractDrugVAdjMa = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.VAdjMaDescriptor', 
                      verbose = FALSE)
  
  return(x)
  
}
