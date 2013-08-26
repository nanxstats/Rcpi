# This Class contains a method that returns the number failures of the Lipinski's Rule Of Five
# 
# This Class contains a method that returns the number failures of the Lipinski's Rule Of 5.
# See http://en.wikipedia.org/wiki/Lipinski%27s_Rule_of_Five.
# 
# 1 feature: LipinskiFailures

extractDrugRuleOfFive = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.RuleOfFiveDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
