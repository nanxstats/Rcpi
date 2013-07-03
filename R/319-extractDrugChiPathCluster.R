# Evaluates the Kier & Hall Chi path cluster indices of orders 4,5 and 6
# 
# Evaluates chi path cluster descriptors.
# The code currently evluates the simple and valence chi chain descriptors of orders 3, 4,5 and 6. It utilizes the graph isomorphism code of the CDK to find fragments matching SMILES strings representing the fragments corresponding to each type of chain.
# 
# The order of the values returned is
# 
# SPC.4 - Simple path cluster, order 4
# SPC.5 - Simple path cluster, order 5
# SPC.6 - Simple path cluster, order 6
# VPC.4 - Valence path cluster, order 4
# VPC.5 - Valence path cluster, order 5
# VPC.6 - Valence path cluster, order 6
# Note: These descriptors are calculated using graph isomorphism to identify the various fragments. As a result calculations may be slow. In addition, recent versions of Molconn-Z use simplified fragment definitions (i.e., rings without branches etc.) whereas these descriptors use the older more complex fragment definitions.

# 6 features: SPC.4 SPC.5 SPC.6 VPC.4 VPC.5 VPC.6

extractDrugChiPathCluster = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.ChiPathClusterDescriptor', 
                      verbose = FALSE)
  
  return(x)
  
}
