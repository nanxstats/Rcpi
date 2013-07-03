# Evaluates the Kier & Hall Chi path indices of orders 0,1,2,3,4,5,6 and 7
# 
# Evaluates chi path descriptors.
# It utilizes the graph isomorphism code of the CDK to find fragments matching SMILES strings representing the fragments corresponding to each type of chain.
# 
# The order of the values returned is
# 
# SP.0, SP.1, ..., SP.7 - Simple path, orders 0 to 7
# VP.0, VP.1, ..., VP.7 - Valence path, orders 0 to 7
# Note: These descriptors are calculated using graph isomorphism to identify the various fragments. As a result calculations may be slow. In addition, recent versions of Molconn-Z use simplified fragment definitions (i.e., rings without branches etc.) whereas these descriptors use the older more complex fragment definitions.

# 16 features: SP.0 SP.1 SP.2 SP.3 SP.4 SP.5 SP.6 SP.7 VP.0 VP.1 VP.2 VP.3 VP.4 VP.5 VP.6 VP.7 

extractDrugChiPath = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.ChiPathDescriptor', 
                      verbose = FALSE)
  
  return(x)
  
}
