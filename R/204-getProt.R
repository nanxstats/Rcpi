getProt = function (id,
                    from = c('uniprot', 'kegg', 'pdb'),
                    type = c('fasta', 'pdb', 'aaseq'), 
                    parallel = 5) {
  
  if (is.null(from)) stop('Must specify a data source')
  if (is.null(type)) stop('Must specify a data type')
  
  # Exclude 3 special case from total 9 possible combinations
  
  if (from == 'uniprot' & type == 'pdb') stop('UniProt only supports type = "fasta" or type = "aaseq"')
  if (from == 'kegg' & type == 'pdb') stop('KEGG only supports type = "fasta" or type = "aaseq"')
  if (from == 'pdb' & type == 'fasta') stop('RCSB PDB only supports type = "pdb" or type = "aaseq"')
  
  FromDict = c('uniprot' = 'UniProt', 'kegg' = 'KEGG', 'pdb' = 'RCSBPDB')  
  TypeDict = c('fasta' = 'FASTA', 'pdb' = 'PDB', 'aaseq' = 'Seq')
  
  NamePart1 = TypeDict[type]
  NamePart2 = FromDict[from]
  
  FunctionName = paste('get', NamePart1, 'From', NamePart2, sep = '')
  
  Prot = eval(parse(text = paste(FunctionName, '(', 
                                 gsub('\\"', '\'', capture.output(dput(id))), ', ', 
                                 parallel, ')', sep = '')))
  
  return(Prot)
  
}
