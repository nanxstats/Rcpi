# Descriptor that calculates the principal moments of inertia and ratios of the principal moments. Als calculates the radius of gyration.
# 
# A descriptor that calculates the moment of inertia and radius of gyration. Moment of inertia (MI) values characterize the mass distribution of a molecule. Related to the MI values, ratios of the MI values along the three principal axes are also well know modeling variables. This descriptor calculates the MI values along the X, Y and Z axes as well as the ratio's X/Y, X/Z and Y/Z. Finally it also calculates the radius of gyration of the molecule.
# The descriptor generates 7 values in the following order
# 
#   * MOMI.X - MI along X axis
#   * MOMI.Y - MI along Y axis
#   * MOMI.Z - MI along Z axis
#   * MOMI.XY - X/Y
#   * MOMI.XZ - X/Z
#   * MOMI.YZ - Y/Z
#   * MOMI.R - Radius of gyration
# One important aspect of the algorithm is that if the eigenvalues of the MI tensor are below 1e-3, then the ratio's are set to a default of 1000.
# 
# 7 features: MOMI.X MOMI.Y MOMI.Z MOMI.XY MOMI.XZ MOMI.YZ MOMI.R

extractDrugMomentOfInertia = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.MomentOfInertiaDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
