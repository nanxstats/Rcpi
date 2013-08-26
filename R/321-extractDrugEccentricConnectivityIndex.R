# A topological descriptor combining distance and adjacency information.
# 
# A topological descriptor combining distance and adjacency information. This descriptor is described by Sharma et al. [ Sharma, V. and Goswami, R. and Madan, A.K. , Eccentric Connectivity Index: A Novel Highly Discriminating Topological Descriptor for Structure-Property and Structure-Activity Studies , Journal of Chemical Information and Computer Sciences, 1997, 37:273-282] and has been shown to correlate well with a number of physical properties. The descriptor is also reported to have good discriminatory ability.
# The eccentric connectivity index for a hydrogen supressed molecular graph is given by the expression
# 
# \xi^{c} = \sum_{i = 1}{n} E(i) V(i)
# where E(i) is the eccentricity of the ith atom (path length from the ith atom to the atom farthest from it) and V(i) is the vertex degree of the ith atom.

# 1 feature: ECCEN

extractDrugEccentricConnectivityIndex = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.EccentricConnectivityIndexDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
