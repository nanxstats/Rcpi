# Read molecule(s) by SDF file and return parsed Java molecular object
# 
# Input: vector containing sdf file name(s)
# Output: a list containing parsed Java molecular object

# # Examples
# readMolFromSDF('/Users/jimmy/Rpkg/Rcpi-support/DB00859.sdf')
# readMolFromSDF(c('/Users/jimmy/Rpkg/Rcpi-support/DB00859.sdf', '/Users/jimmy/Rpkg/Rcpi-support/DB00860.sdf'))

readMolFromSDF = function (sdffile) {
  
  txt = rcdk::load.molecules(sdffile)
  smi = sapply(txt, get.smiles)
  mol = rcdk::parse.smiles(smi)
  
  return(mol)
  
}
