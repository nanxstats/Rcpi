getDrug = function (id, 
                    from = c('pubchem', 'chembl', 'cas', 'kegg', 'drugbank'), 
                    type = c('mol', 'smile'), 
                    parallel = 5) {
  
  if (is.null(from)) stop('Must specify a data source')
  if (is.null(type)) stop('Must specify a data type')
  
  # Exclude 1 special case from total 10 possible combinations
  
  if (from == 'cas' & type == 'smile') stop('CAS only supports type = "mol" (InChI)')
  
  FromDict = c('pubchem' = 'PubChem', 'chembl' = 'ChEMBL', 
               'cas' = 'CAS', 'kegg' = 'KEGG', 'drugbank' = 'DrugBank')
    
  TypeDict = c('mol' = 'Mol', 'smile' = 'Smi')
  
  NamePart1 = TypeDict[type]
  NamePart2 = FromDict[from]
  
  FunctionName = paste('get', NamePart1, 'From', NamePart2, sep = '')
  
  Drug = eval(parse(text = paste(FunctionName, '(', 
                                 gsub('\\"', '\'', capture.output(dput(id))), ', ', 
                                 parallel, ')', sep = '')))
  
  return(Drug)
  
}
