# Evaluate molecular distance edge descriptors for C, N and O
# 
# Calculates the Molecular Distance Edge descriptor described in [Liu, S. and Cao, C. and Li, Z. , Approach to Estimation and Prediction for Normal Boiling Point (NBP) of Alkanes Based on a Novel Molecular Distance Edge (MDE) Vector, lambda, Journal of Chemical Information and Computer Sciences, 1998, 38:387-394]. This class evaluates the 10 MDE descriptors described by Liu et al. and in addition it calculates variants where O and N are considered (as found in the DEDGE routine from ADAPT).
# http://pele.farmbio.uu.se/nightly/api/org/openscience/cdk/qsar/descriptors/molecular/MDEDescriptor.html
# 
# 19 features: MDEC.11 MDEC.12 MDEC.13 MDEC.14 MDEC.22 MDEC.23 MDEC.24 MDEC.33 MDEC.34 MDEC.44 MDEO.11 MDEO.12 MDEO.22 MDEN.11 MDEN.12 MDEN.13 MDEN.22 MDEN.23 MDEN.33

extractDrugMDE = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.MDEDescriptor', 
                      verbose = FALSE)
  
  return(x)
  
}
