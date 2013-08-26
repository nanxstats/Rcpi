# Descriptor that calculates the LogP based on a simple equation using the number of carbons and hetero atoms
# 
# Prediction of logP based on the number of carbon and hetero atoms. The implemented equation was proposed in [Mannhold, R. and Poda, G.I. and Ostermann, C. and Tetko, I.V., Calculation of molecular lipophilicity: State-of-the-art and comparison of log P methods on more than 96,000 compounds, J.Pharm.Sci., 2009, 98:861--893].
# 
# 1 feature: MLogP

extractDrugMannholdLogP = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.MannholdLogPDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
