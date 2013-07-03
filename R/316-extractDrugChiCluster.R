# Evaluates the Kier & Hall Chi cluster indices of orders 3,4,5,6 and 7
# 
# Evaluates chi cluster descriptors.
# The code currently evluates the simple and valence chi chain descriptors of orders 3, 4,5 and 6. It utilizes the graph isomorphism code of the CDK to find fragments matching SMILES strings representing the fragments corresponding to each type of chain.
# 
# The order of the values returned is
# 
# SC.3 - Simple cluster, order 3
# SC.4 - Simple cluster, order 4
# SC.5 - Simple cluster, order 5
# SC.6 - Simple cluster, order 6
# VC.3 - Valence cluster, order 3
# VC.4 - Valence cluster, order 4
# VC.5 - Valence cluster, order 5
# VC.6 - Valence cluster, order 6
# Note: These descriptors are calculated using graph isomorphism to identify the various fragments. As a result calculations may be slow. In addition, recent versions of Molconn-Z use simplified fragment definitions (i.e., rings without branches etc.) whereas these descriptors use the older more complex fragment definitions.

# 8 features: SC.3 SC.4 SC.5 SC.6 VC.3 VC.4 VC.5 VC.6

extractDrugChiCluster = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.ChiClusterDescriptor', 
                      verbose = FALSE)
  
  return(x)
  
}
