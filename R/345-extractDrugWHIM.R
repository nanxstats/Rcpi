# Holistic descriptors described by Todeschini et al.
# 
# Holistic descriptors described by Todeschini et al [Todeschini, R. and Gramatica, P., New 3D Molecular Descriptors: The WHIM theory and QAR Applications, Persepectives in Drug Discovery and Design, 1998, ?:355-380]. The descriptors are based on a number of atom weightings. There are 6 different possible weightings:
#  * unit weights
#  * atomic masses
#  * van der Waals volumes
#  * Mulliken atomic electronegativites
#  * atomic polarizabilities
#  * E-state values described by Kier & Hall
# 
# Currently weighting schemes 1,2,3,4 & 5 are implemented. The weight values are taken from [Todeschini, R. and Gramatica, P., New 3D Molecular Descriptors: The WHIM theory and QAR Applications, Persepectives in Drug Discovery and Design, 1998, ?:355-380] and as a result 19 elements are considered.
# For each weighting scheme we can obtain
# 
#  * 11 directional WHIM descriptors (λ1 .. 3, ν1 .. 2, γ1 .. 3, η1 .. 3)
#  * 6 non-directional WHIM descriptors (T, A, V, K, G, D)
# Though [Todeschini, R. and Gramatica, P., New 3D Molecular Descriptors: The WHIM theory and QAR Applications, Persepectives in Drug Discovery and Design, 1998, ?:355-380] mentions that for planar molecules only 8 directional WHIM descriptors are required the current code will return all 11.
# 
# The descriptor returns 17 values for a given weighting scheme, named as follows:
#   
# Wlambda1
# Wlambda2
# wlambda3
# Wnu1
# Wnu2
# Wgamma1
# Wgamma2
# Wgamma3
# Weta1
# Weta2
# Weta3
# WT
# WA
# WV
# WK
# WG
# WD
# 
# Each name will have a suffix of the form .X where X indicates the weighting scheme used. Possible values of X are
# 
# unity
# mass
# volume
# eneg
# polar
# 
# 17 features: Wlambda1.unity Wlambda2.unity Wlambda3.unity Wnu1.unity Wnu2.unity Wgamma1.unity Wgamma2.unity Wgamma3.unity Weta1.unity Weta2.unity Weta3.unity WT.unity WA.unity WV.unity WK.unity WG.unity WD.unity

extractDrugWHIM = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.WHIMDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
