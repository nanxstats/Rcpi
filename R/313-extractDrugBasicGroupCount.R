# Returns the number of basic groups
# 
# Returns the number of basic groups. The list of basic groups is defined by this SMARTS "[$([NH2]-[CX4])]", "[$([NH](-[CX4])-[CX4])]", "[$(N(-[CX4])(-[CX4])-[CX4])]", "[$([*;+;!$(*~[*;-])])]", "[$(N=C-N)]", and "[$(N-C=N)]" originally presented in JOELib [Unknown BibTeXML type: WEGNER2006].
# 
# 1 feature: nBase

extractDrugBasicGroupCount = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.BasicGroupCountDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
