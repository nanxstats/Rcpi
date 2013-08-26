# The Moreau-Broto autocorrelation descriptors using partial charges
# This class calculates ATS autocorrelation descriptor, where the weight equal to the charges.
# Return 5 features: ATSc1 ATSc2 ATSc3 ATSc4 ATSc5

extractDrugAutocorrelationCharge = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.AutocorrelationDescriptorCharge', 
                      verbose = !silent)
  
  return(x)
  
}
