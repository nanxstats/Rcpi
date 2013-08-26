# Read molecule(s) by SMILES string and return parsed Java molecular object
# 
# Input: vector containing SMILES string(s)
# Output: a list containing parsed Java molecular object

# # Examples
# require(rcdk)
# smi = c('CCC', 'c1ccccc1', 'C(C)(C=O)C(CCNC)C1CC1C(=O)')
# mol = rcdk::parse.smiles(smi[1])
# mols = rcdk::parse.smiles(smi)

readMolFromSmi = function (smiles) {
  
  smi = as.character(smiles)
  mol = rcdk::parse.smiles(smi)
  
  return(mol)
  
}
