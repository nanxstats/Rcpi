# Eigenvalue based descriptor noted for its utility in chemical diversity described by Pearlman et al.
#
# Eigenvalue based descriptor noted for its utility in chemical diversity. Described by Pearlman et al. [Pearlman, R.S. and Smith, K.M., Metric Validation and the Receptor-Relevant Subspace Concept, J. Chem. Inf. Comput. Sci., 1999, 39:28-35].
# The descriptor is based on a weighted version of the Burden matrix [Burden, F.R., Molecular identification number for substructure searches , J. Chem. Inf. Comput. Sci., 1989, 29:225-227, Burden, F.R., Chemically Intuitive Molecular Index, Quant. Struct .-Act. Relat., 1997, 16:309-314] which takes into account both the connectivity as well as atomic properties of a molecule. The weights are a variety of atom properties placed along the diagonal of the Burden matrix. Currently three weighting schemes are employed
# 
# * atomic weight
# * partial charge (Gasteiger Marsilli)
# * polarizability [Kang, Y.K. and Jhon, M.S., Additivity of Atomic Static Polarizabilities and Dispersion Coefficients, Theoretica Chimica Acta, 1982, 61:41-48]
# 
# By default, the descriptor will return the highest and lowest eigenvalues for the three classes of descriptor in a single ArrayList (in the order shown above). However it is also possible to supply a parameter list indicating how many of the highest and lowest eigenvalues (for each class of descriptor) are required. The descriptor works with the hydrogen depleted molecule.
# 
# A side effect of specifying the number of highest and lowest eigenvalues is that it is possible to get two copies of all the eigenvalues. That is, if a molecule has 5 heavy atoms, then specifying the 5 highest eigenvalues returns all of them, and specifying the 5 lowest eigenvalues returns all of them, resulting in two copies of all the eigenvalues.
# 
# Note that it is possible to specify an arbitrarily large number of eigenvalues to be returned. However if the number (i.e., nhigh or nlow) is larger than the number of heavy atoms, the remaining eignevalues will be NaN.
# 
# Given the above description, if the aim is to gt all the eigenvalues for a molecule, you should set nlow to 0 and specify the number of heavy atoms (or some large number) for nhigh (or vice versa).
#
#
# Returns an array of values in the following order
# 
# BCUTw-1l, BCUTw-2l ... - nhigh lowest atom weighted BCUTS
# BCUTw-1h, BCUTw-2h ... - nlow highest atom weighted BCUTS
# BCUTc-1l, BCUTc-2l ... - nhigh lowest partial charge weighted BCUTS
# BCUTc-1h, BCUTc-2h ... - nlow highest partial charge weighted BCUTS
# BCUTp-1l, BCUTp-2l ... - nhigh lowest polarizability weighted BCUTS
# BCUTp-1h, BCUTp-2h ... - nlow highest polarizability weighted BCUTS
# 
# 6 features: BCUTw-1l BCUTw-1h BCUTc-1l BCUTc-1h BCUTp-1l BCUTp-1h

extractDrugBCUT = function (molecules, silent = TRUE) {

x = rcdk::eval.desc(molecules, 
                    'org.openscience.cdk.qsar.descriptors.molecular.BCUTDescriptor', 
                    verbose = FALSE)

return(x)

}
