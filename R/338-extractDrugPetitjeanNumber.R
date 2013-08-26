# Descriptor that calculates the Petitjean Number of a molecule
# 
# According to the Petitjean definition, the eccentricity of a vertex corresponds to the distance from that vertex to the most remote vertex in the graph. The distance is obtained from the distance matrix as the count of edges between the two vertices. If r(i) is the largest matrix entry in row i of the distance matrix D, then the radius is defined as the smallest of the r(i). The graph diameter D is defined as the largest vertex eccentricity in the graph. (http://www.edusoft-lc.com/molconn/manuals/400/chaptwo.html)
# 
# 1 feature: PetitjeanNumber

extractDrugPetitjeanNumber = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.PetitjeanNumberDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
