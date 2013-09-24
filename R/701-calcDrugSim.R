# Reference:
# Gasteiger, Johann, and Thomas Engel, eds. Chemoinformatics. Wiley.com, 2006.

# Let a be the features of object A, b is the features of object B, 
# c is the number of common features to A and B

# stanimoto: aka Jaccard c/a+b+c
# seuclidean: no aka \sqrt(a + b)
# dice: aka Sorensen, Czekanowski, Hodgkin-Richards c/0.5[(a+c) + (b+c)]
# cosine: aka Ochiai, Carbo c/\sqrt((a + c)(b + c))
# hamming: aka Manhattan, taxi-cab, city-block distance (a + b)

# # Examples
# require(rcdk)
# smiles = c('C1CCC1CC(CN(C)(C))CC(=O)CC', 'c1ccccc1Cc1ccccc1')
# mols = parse.smiles(smiles)
# 
# fp1 = extractDrugEstate(mols[[1]])
# fp2 = extractDrugEstate(mols[[2]])
# calcDrugSim(fp1, fp2, fptype = 'compact', metric = 'tanimoto')
# calcDrugSim(fp1, fp2, fptype = 'compact', metric = 'euclidean')
# calcDrugSim(fp1, fp2, fptype = 'compact', metric = 'cosine')
# calcDrugSim(fp1, fp2, fptype = 'compact', metric = 'dice')
# calcDrugSim(fp1, fp2, fptype = 'compact', metric = 'hamming')
# 
# fp3 = extractDrugEstateComplete(mols[[1]])
# fp4 = extractDrugEstateComplete(mols[[2]])
# calcDrugSim(fp3, fp4, fptype = 'complete', metric = 'tanimoto')
# calcDrugSim(fp3, fp4, fptype = 'complete', metric = 'euclidean')
# calcDrugSim(fp3, fp4, fptype = 'complete', metric = 'cosine')
# calcDrugSim(fp3, fp4, fptype = 'complete', metric = 'dice')
# calcDrugSim(fp3, fp4, fptype = 'complete', metric = 'hamming')



calcDrugSim = function (fp1, fp2, fptype = c('compact', 'complete'), 
                        metric = c('tanimoto', 'euclidean', 'cosine', 'dice', 'hamming')) {
  
  fptype = match.arg(fptype)
  metric = match.arg(metric)
  
  if ( !(fptype %in% c('compact', 'complete')) ) stop('fptype must be one of "compact" or "complete"')
  if ( !(metric %in% c('tanimoto', 'euclidean', 'cosine', 'dice', 'hamming')) ) stop('metric must be one of "tanimoto", "euclidean", "cosine", "dice", "hamming"')
  
  if (fptype == 'compact') {
    
    fp1ext = integer(as.integer(names(fp1)))
    fp1ext[fp1[[1]]] = 1L
    fp2ext = integer(as.integer(names(fp2)))
    fp2ext[fp2[[1]]] = 1L
    
    fp1 = fp1ext
    fp2 = fp2ext
    
    if ( length(fp1) != length(fp2) ) stop('fingerprint vectors must have the same length')
    
    fp1 = as.logical(fp1)
    fp2 = as.logical(fp2)
    
    A = sum( (fp1 | fp2) & !fp2 )
    B = sum( (fp1 | fp2) & !fp1 )
    C = sum( fp1 & fp2 )
    D = sum( !(fp1 | fp2) )
    
    if (metric == 'tanimoto') dis = C/(A + B + C)
    
    if (metric == 'euclidean') dis = sqrt( (C + D) / (A + B + C + D) )
    
    if (metric == 'cosine') dis = C / sqrt( ( A + C ) * ( B + C ) )
    
    if (metric == 'dice') dis = C / ( 0.5 * ( (A + C) + (B + C) ) )
    
    if (metric == 'hamming') dis = (A + B) / (A + B + C + D)
    
  }
  
  if (fptype == 'complete') {
    
    if ( length(fp1) != length(fp2) ) stop('fingerprint vectors must have the same length')
    
    fp1 = as.logical(fp1)
    fp2 = as.logical(fp2)
    
    A = sum( (fp1 | fp2) & !fp2 )
    B = sum( (fp1 | fp2) & !fp1 )
    C = sum( fp1 & fp2 )
    D = sum( !(fp1 | fp2) )
    
    if (metric == 'tanimoto') dis = C/(A + B + C)
    
    if (metric == 'euclidean') dis = sqrt( (C + D) / (A + B + C + D) )
    
    if (metric == 'cosine') dis = C / sqrt( ( A + C ) * ( B + C ) )
    
    if (metric == 'dice') dis = C / ( 0.5 * ( (A + C) + (B + C) ) )
    
    if (metric == 'hamming') dis = (A + B) / (A + B + C + D)
    
  }
  
  return(dis)
  
}
