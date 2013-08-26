# The topological and geometric shape indices described Petitjean and Bath et al. respectively. Both measure the anisotropy in a molecule
# 
# Evaluates the Petitjean shape indices,
# These original Petitjean number was described by Petitjean ([ Petitjean, M. , Applications of the radius-diameter diagram to the classification of topological and geometrical shapes of chemical compounds, Journal of Chemical Information and Computer Science, 1992, 32:331-337]) and considered the molecular graph. This class also implements the geometric analog of the topological shape index described by Bath et al ([ Bath, P.A. and Poirette, A.R. and Willet, P. and Allen, F.H. , The Extent of the Relationship between the Graph-Theoretical and the Geometrical Shape Coefficients of Chemical Compounds, Journal of Chemical Information and Computer Science, 1995, 35:714-716]).
# 
# The descriptor returns 2 features:
# 
#   * topoShape - topological shape index
#   * geomShape - geometric shape index
# 
# 2 features: topoShape geomShape

extractDrugPetitjeanShapeIndex = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.PetitjeanShapeIndexDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
