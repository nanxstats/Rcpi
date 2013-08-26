# Characterizes the carbon connectivity in terms of hybridization
# 
# Topological descriptor characterizing the carbon connectivity.
# The class calculates 9 descriptors in the following order
# 
# C1SP1 triply hound carbon bound to one other carbon
# C2SP1 triply bound carbon bound to two other carbons
# C1SP2 doubly hound carbon bound to one other carbon
# C2SP2 doubly bound carbon bound to two other carbons
# C3SP2 doubly bound carbon bound to three other carbons
# C1SP3 singly bound carbon bound to one other carbon
# C2SP3 singly bound carbon bound to two other carbons
# C3SP3 singly bound carbon bound to three other carbons
# C4SP3 singly bound carbon bound to four other carbons

# 9 features: C1SP1 C2SP1 C1SP2 C2SP2 C3SP2 C1SP3 C2SP3 C3SP3 C4SP3

extractDrugCarbonTypes = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.CarbonTypesDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
