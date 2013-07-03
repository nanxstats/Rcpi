# Returns the number of acidic groups
# 
# Returns the number of acidic groups. The list of acidic groups is defined by these SMARTS "$([O;H1]-[C,S,P]=O)", "$([*;-;!$(*~[*;+])])", "$([NH](S(=O)=O)C(F)(F)F)", and "$(n1nnnc1)" originally presented in JOELib [Unknown BibTeXML type: WEGNER2006].
# 
# 1 feature: nAcid

extractDrugAcidicGroupCount = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.AcidicGroupCountDescriptor', 
                      verbose = FALSE)
  
  return(x)
  
}
