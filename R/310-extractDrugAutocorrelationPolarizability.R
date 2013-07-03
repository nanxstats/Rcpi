# The Moreau-Broto autocorrelation descriptors using polarizability
# This class calculates ATS autocorrelation descriptor, where the weight equal to the charges.
# 5 features: ATSp1 ATSp2 ATSp3 ATSp4 ATSp5

extractDrugAutocorrelationPolarizability = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.AutocorrelationDescriptorPolarizability', 
                      verbose = FALSE)
  
  return(x)
  
}
