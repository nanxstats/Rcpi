# A variety of descriptors combining surface area and partial charge information
# 
# Calculates 29 Charged Partial Surface Area (CPSA) descriptors.
# 
# The CPSA's were developed by Stanton et al. ([Stanton, D.T. and Jurs, P.C. , Development and Use of Charged Partial Surface Area Structural Descriptors in Computer Assissted Quantitative Structure Property Relationship Studies, Analytical Chemistry, 1990, 62:2323.2329]) and are related to the Polar Surface Area descriptors. The original implementation was in the ADAPT software package and the the definitions of the individual descriptors are presented in the following table. This class returns a DoubleArrayResult containing the 29 descriptors in the order described in the table.
# 
# A Summary of the 29 CPSA Descriptors
# IDescriptor  Meaning
# PPSA.1	 partial positive surface area -- sum of surface area on positive parts of molecule
# PPSA.2	 partial positive surface area * total positive charge on the molecule
# PPSA.3	 charge weighted partial positive surface area
# PNSA.1	 partial negative surface area -- sum of surface area on negative parts of molecule
# PNSA.2	 partial negative surface area * total negative charge on the molecule
# PNSA.3	 charge weighted partial negative surface area
# DPSA.1	 difference of PPSA.1 and PNSA.1
# DPSA.2	 difference of FPSA.2 and PNSA.2
# DPSA.3	 difference of PPSA.3 and PNSA.3
# FPSA.1	 PPSA.1 / total molecular surface area
# FFSA.2	PPSA.2 / total molecular surface area
# FPSA.3	 PPSA.3 / total molecular surface area
# FNSA.1	 PNSA.1 / total molecular surface area
# FNSA.2	 PNSA.2 / total molecular surface area
# FNSA.3	 PNSA.3 / total molecular surface area
# WPSA.1	 PPSA.1 * total molecular surface area / 1000
# WPSA.2	 PPSA.2 * total molecular surface area /1000
# WPSA.3	 PPSA.3 * total molecular surface area / 1000
# WNSA.1	 PNSA.1 * total molecular surface area /1000
# WNSA.2	 PNSA.2 * total molecular surface area / 1000
# WNSA.3	 PNSA.3 * total molecular surface area / 1000
# RPCG	 relative positive charge -- most positive charge / total positive charge
# RNCG	relative negative charge -- most negative charge / total negative charge
# RPCS	relative positive charge surface area -- most positive surface area * RPCG
# RNCS	relative negative charge surface area -- most negative surface area * RNCG
# THSA	sum of solvent accessible surface areas of atoms with absolute value of partial charges less than 0.2
# TPSA	sum of solvent accessible surface areas of atoms with absolute value of partial charges greater than or equal 0.2
# RHSA	THSA / total molecular surface area
# RPSA	TPSA / total molecular surface area
# NOTE: The values calculated by this implementation will differ from those calculated by the original ADAPT implementation of the CPSA descriptors. This is because the original implementation used an analytical surface area algorithm and used partial charges obtained from MOPAC using the AM1 Hamiltonian. This implementation uses a numerical algorithm to obtain surface areas (see NumericalSurface) and obtains partial charges using the Gasteiger-Marsilli algorithm (see GasteigerMarsiliPartialCharges).
# 
# However, a comparison of the values calculated by the two implementations indicates that they are qualitatively the same.

# 29 features: PPSA.1 PPSA.2 PPSA.3 PNSA.1 PNSA.2 PNSA.3 DPSA.1 DPSA.2 DPSA.3 FPSA.1 FPSA.2 FPSA.3 FNSA.1 FNSA.2 FNSA.3 WPSA.1 WPSA.2 WPSA.3 WNSA.1 WNSA.2 WNSA.3 RPCG RNCG RPCS RNCS THSA TPSA RHSA RPSA

extractDrugCPSA = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.CPSADescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
