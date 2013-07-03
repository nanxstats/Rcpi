# Counts the number of occurrences of the E-state fragments

# A fragment count descriptor that uses e-state fragments.
# Traditionally the e-state descriptors identify the relevant fragments and then evaluate the actual e-state value. However it has been shown in [Butina, D. , Performance of Kier-Hall E-state Descriptors in Quantitative Structure Activity Relationship (QSAR) Studies of Multifunctional Molecules , Molecules, 2004, 9:1004-1009] that simply using the counts of the e-state fragments can lead to QSAR models that exhibit similar performance to those built using the actual e-state indices.
# 
# Atom typing and aromaticity perception should be performed prior to calling this descriptor. The atom type definitions are taken from [Hall, L.H. and Kier, L.B. , Electrotopological State Indices for Atom Types: A Novel Combination of Electronic, Topological, and Valence State Information, Journal of Chemical Information and Computer Science, 1995, 35:1039-1045]. The SMARTS definitions were obtained from RDKit.
# 
# The descriptor returns an integer array result of 79 values with the following names (see here for the corresponding chemical groups).
# Table: http://pele.farmbio.uu.se/nightly/api/org/openscience/cdk/qsar/descriptors/molecular/KierHallSmartsDescriptor.html

# 79 features: http://pele.farmbio.uu.se/nightly/api/org/openscience/cdk/qsar/descriptors/molecular/KierHallSmartsDescriptor.html

extractDrugKierHallSmarts = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.KierHallSmartsDescriptor', 
                      verbose = FALSE)
  
  return(x)
  
}
