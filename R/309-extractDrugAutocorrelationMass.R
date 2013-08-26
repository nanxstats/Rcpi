# The Moreau-Broto autocorrelation descriptors using atomic weight
# This class calculates ATS autocorrelation descriptor, where the weight equal to the scaled atomic mass [Moreau G. and Broto P., The autocorrelation of a topological structure: A new molecular descriptor, Nouveau Journal de Chimie, 1980, ?:359-360].
# 5 features: ATSm1 ATSm2 ATSm3 ATSm4 ATSm5

extractDrugAutocorrelationMass = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.AutocorrelationDescriptorMass', 
                      verbose = !silent)
  
  return(x)
  
}
