# Calculation of topological polar surface area based on fragment contributions
# 
# Calculation of topological polar surface area based on fragment contributions (TPSA) [Ertl, P. and Rohde, B. and Selzer, P., Fast Calculation of Molecular Polar Surface Area as a Sum of Fragment-Based Contributions and Its Application to the Prediction of Drug Transport Properties, J. Med. Chem., 2000, 43:3714-3717].
# 
# 1 feature: TopoPSA

extractDrugTPSA = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.TPSADescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
