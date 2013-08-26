# Calculates atom additive logP and molar refractivity values as described by Ghose, A.K. and Crippen, G.M.
# This class calculates ALOGP (Ghose-Crippen LogKow) and the Ghose-Crippen molar refractivity [Ghose, A.K. and Crippen, G.M. , Atomic physicochemical parameters for three-dimensional structure-directed quantitative structure-activity relationships. I. Partition coefficients as a measure of hydrophobicity, Journal of Computational Chemistry, 1986, 7:565-577, Ghose, A.K. and Crippen, G.M. , Atomic physicochemical parameters for three-dimensional-structure-directed quantitative structure-activity relationships. 2. Modeling dispersive and hydrophobic interactions, Journal of Chemical Information and Computer Science, 1987, 27:21-35]. Note The code assumes that aromaticity has been detected before evaluating this descriptor. The code also expects that the molecule will have hydrogens explicitly set. For SD files, this is usually not a problem since hydrogens are explicit. But for the case of molecules obtained from SMILES, hydrogens must be made explicit.
# Return 3 features: ALogP ALogp2 AMR

extractDrugALOGP = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.ALOGPDescriptor', 
                      verbose = FALSE)

  return(x)
  
}
