# Descriptor characterizing the mass distribution of the molecule.

# IDescriptor characterizing the mass distribution of the molecule. Described by Katritzky et al. [Katritzky, A.R. and Mu, L. and Lobanov, V.S. and Karelson, M., Correlation of Boiling Points With Molecular Structure. 1. A Training Set of 298 Diverse Organics and a Test Set of 9 Simple Inorganics, J. Phys. Chem., 1996, 100:10400-10407]. For modelling purposes the value of the descriptor is calculated both with and without H atoms. Furthermore the square and cube roots of the descriptor are also generated as described by Wessel et al. [Wessel, M.D. and Jurs, P.C. and Tolan, J.W. and Muskal, S.M. , Prediction of Human Intestinal Absorption of Drug Compounds From Molecular Structure, Journal of Chemical Information and Computer Sciences, 1998, 38:726-735].
# The descriptor routine generates 9 descriptors:
#   
# GRAV.1 - gravitational index of heavy atoms
# GRAV.2 - square root of gravitational index of heavy atoms
# GRAV.3 - cube root of gravitational index of heavy atoms
# GRAVH.1 - gravitational index - hydrogens included
# GRAVH.2 - square root of hydrogen-included gravitational index
# GRAVH.3 - cube root of hydrogen-included gravitational index
# GRAV.4 - grav1 for all pairs of atoms (not just bonded pairs)
# GRAV.5 - grav2 for all pairs of atoms (not just bonded pairs)
# GRAV.6 - grav3 for all pairs of atoms (not just bonded pairs)

# 9 features: GRAV.1 GRAV.2 GRAV.3 GRAVH.1 GRAVH.2 GRAVH.3 GRAV.4 GRAV.5 GRAV.6

extractDrugGravitationalIndex = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.GravitationalIndexDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
