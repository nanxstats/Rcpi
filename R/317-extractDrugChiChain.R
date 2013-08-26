# Evaluates the Kier & Hall Chi chain indices of orders 3,4,5 and 6
# 
# Evaluates chi chain descriptors.
# The code currently evluates the simple and valence chi chain descriptors of orders 3, 4, 5, 6 and 7. It utilizes the graph isomorphism code of the CDK to find fragments matching SMILES strings representing the fragments corresponding to each type of chain.
# 
# The order of the values returned is
# 
# SCH.3 - Simple chain, order 3
# SCH.4 - Simple chain, order 4
# SCH.5 - Simple chain, order 5
# SCH.6 - Simple chain, order 6
# SCH.7 - Simple chain, order 7
# VCH.3 - Valence chain, order 3
# VCH.4 - Valence chain, order 4
# VCH.5 - Valence chain, order 5
# VCH.6 - Valence chain, order 6
# VCH.7 - Valence chain, order 7
# Note: These descriptors are calculated using graph isomorphism to identify the various fragments. As a result calculations may be slow. In addition, recent versions of Molconn-Z use simplified fragment definitions (i.e., rings without branches etc.) whereas these descriptors use the older more complex fragment definitions.

# 10 features: SCH.3 SCH.4 SCH.5 SCH.6 SCH.7 VCH.3 VCH.4 VCH.5 VCH.6 VCH.7

extractDrugChiChain = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.ChiChainDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
