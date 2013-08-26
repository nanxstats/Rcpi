calcDrugSim = function (fp1, fp2, type, 
                        fptype = c('compressed', 'complete'), ...) {
  
  return(NULL)
  
}



calcDrugSimMat = function (fplist1, fplist2 = NULL, type, 
                           fptype = c('compressed', 'complete'), 
                           fill = c('upper', 'lower', 'all'),
                           ...) {
  
  return(NULL)
  
}





function (fp1, fp2, method, a, b) standardGeneric('distance')





# 条件
# c("featvec", "featvec", "missing", "missing", "missing")

function (fp1, fp2) distance(fp1, fp2, 'tanimoto')





# c("featvec", "featvec", "character", "missing", "missing")
          
function (fp1, fp2, method = c('tanimoto', 'dice', 'robust')) {
  
  method = match.arg(method)
  n1 = length(fp1)
  n2 = length(fp2)
  n12 = length(intersect(fp1@features, fp2@features))
  
  if (method == 'tanimoto') {
    
    return(n12/(n1 + n2 - n12))
    
    } else if (method == 'robust') {
      
      return(0.5 + 0.5 * n12 * n12 / (n1 * n2))
      
      } else if (method == 'dice') {
        
        return(2.0 * n12 / (n1 + n2))
      
      }

}





# c("fingerprint", "fingerprint", "missing", "missing", "missing")

function (fp1, fp2) {
  
  distance(fp1, fp2, 'tanimoto')

}





# c("fingerprint", "fingerprint", "character", "numeric", "numeric")

function(fp1, fp2, type = 'tversky', a, b) {
  
  if (!is.null(method) && !is.na(method) && method != 'tversky') distance(fp1, fp2, method)
  
  if ( length(fp1) != length(fp2)) stop('Fingerprints must of the same bit length')
  
  if ( a < 0 || b < 0 ) stop('a and b must be positive')
  
  tmp = fp1 & fp2
  xiy = length(tmp@bits)
  tmp = fp1 | fp2
  xuy = length(tmp@bits)
  
  x = length(fp1@bits)
  y = length(fp2@bits)
  
  return( xiy / (a * x + b * y + (1 - a - b) * xiy ) )
  
}





# c("fingerprint", "fingerprint", "character", "missing", "missing")

function(fp1, fp2, method = c('tanimoto', 'euclidean', 'mt',
                              'simple', 'jaccard', 'dice',
                              'russelrao', 'rodgerstanimoto','cosine',
                              'achiai', 'carbo', 'baroniurbanibuser',
                              'kulczynski2', 'hamming', 'meanHamming', 
                              'soergel', 'patternDifference', 'variance', 
                              'size', 'shape', 'hamann', 'yule', 
                              'pearson', 'dispersion', 'mcconnaughey', 
                              'stiles', 'simpson', 'petke', 
                              'stanimoto', 'seuclidean')) {
  
  if (method == 'tversky') stop('If Tversky metric is desired, must specify a and b')
  
  if ( length(fp1) != length(fp2) ) stop('Fingerprints must of the same bit length')
  
  method = match.arg(method)
  n = length(fp1)
  
  if (method == 'tanimoto') {
    
    f1 = numeric(n)
    f2 = numeric(n)
    f1[fp1@bits] = 1
    f2[fp2@bits] = 1
    sim = 0.0
    
    ret = fpdist(f1, f2, 'tanimoto')
    
    return (ret)
    
    } else if (method == 'euclidean') {
      
      f1 = numeric(n)
      f2 = numeric(n)
      f1[fp1@bits] = 1
      f2[fp2@bits] = 1
      sim = 0.0
      
      ret = fpdist(fp1, fp2, 'euclidean')
      
      return (ret)
    
    }
  
  size = n
  
  ## in A & B
  tmp = fp1 & fp2
  c = length(tmp@bits)
  
  ## in A not in B
  tmp = (fp1 | fp2) & !fp2
  a = length(tmp@bits)
  
  ## in B not in A
  tmp = (fp1 | fp2) & !fp1
  b = length(tmp@bits)
  
  ## not in A, not in B
  tmp = !(fp1 | fp2)
  d = length(tmp@bits)
  dist = NULL
  
  ## Simlarity
  if (method == 'stanimoto') {
    
    dist = c / (a + b + c)
    
    } else if (method == 'seuclidean') {
      
      dist = sqrt((d + c) / (a + b + c + d))
      
      } else if (method == 'dice') {
        
        dist = c / (0.5 * a + 0.5 * b + c)
        
        } else if (method == 'mt') {
          
          t1 = c/(size - d)
          t0 = d/(size - c)
          phat = ((size - d) + c)/(2 * size)
          dist = (2 - phat) * t1/3 + (1 + phat) * t0/3
          
          } else if (method == 'simple') {
            
            dist = (c + d)/n
            
            } else if (method == 'jaccard') {
              
              dist = c/(a + b + c)
              
              } else if (method == 'russelrao') {
                
                dist = c/size
                
                } else if (method == 'rodgerstanimoto') {
                  
                  dist = (c + d)/(2 * a + 2 * b + c + d)
                  
                  } else if (method == 'cosine' || method == 'achiai' || method == 'carbo') {
                    
                    dist = c/sqrt((a + c) * (b + c))
                    
                    } else if (method == 'baroniurbanibuser') {
                      
                      dist = (sqrt(c * d) + c)/(sqrt(c * d) + a + b + c)
                      
                      } else if (method == 'kulczynski2') {
                        
                        dist = 0.5 * (c/(a + c) + c/(b + c))
                        
                        } else if (method == 'hamming') { ## Dissimilarity
                          
                          dist = a + b
                          
                          } else if (method == 'meanHamming') {
                            
                            dist = (a + b)/(a + b + c + d)
                            
                            } else if (method == 'soergel') {
                              
                              dist = (a + b)/(a + b + c)
                              
                              } else if (method == 'patternDifference') {
                                
                                dist = (a * b)/(a + b + c + d)^2
                                
                                } else if (method == 'variance') {
                                  
                                  dist = (a + b)/(4 * n)
                                  
                                  } else if (method == 'size') {
                                    
                                    dist =  (a - b)^2/n^2
                                    
                                    } else if (method == 'shape') {
                                      
                                      dist = (a + b)/n - ((a - b)/(n))^2
                                      
                                      } else if (method == 'hamann') { ## Composite
                                        
                                        dist = (c + d - a - b)/(a + b + c + d)
                                        
                                        } else if (method == 'yule') {
                                          
                                          dist =  (c * d - a * b)/(c * d + a * b)
                                          
                                          } else if (method == 'pearson') {
                                            
                                            dist = (c * d - a * b)/sqrt((a + c) * (b + c) * (a + d) * (b + d))
                                            
                                            } else if (method == 'dispersion') {
                                              
                                              dist = (c * d - a * b)/n^2
                                              
                                              } else if (method == 'mcconaughey') {
                                                
                                                dist = (c^2 - a * b)/((a + c) * (b + c))
                                                
                                                } else if (method == 'stiles') {
                                                  
                                                  dist = log10(n * (abs(c * d - a * b) - n/2)^2/((a + c) * (b + c) * (a + d) * (b + d)))
                                                  
                                                  } else if (method == 'simpson') { ## Asymmetric
                                                    
                                                    dist = c/min((a + c), (b + c))
                                                    
                                                    } else if (method == 'petke') {
                                                      
                                                      dist = c/max((a + c), (b + c))
                                                    
                                                    }
  
  return(dist)

}





fpdist = function (fp1, fp2, metric = c('tanimoto', 'euclidean')) {
  
  n = length(fp1)
  
  if (metric == 'tanimoto') {
    
    C = sum(fp1 == 1L & fp2 == 1L)
    distance = C/(sum(fp1 != fp2) + C)
    
  }
  
  if (metric == 'euclidean') {
    
    distance = sqrt(sum(fp1 == fp2)/n)
  
  }
  
  return(distance)
  
}

# fp1 = c(1, 0, 1, 0, 0, 0)
# fp2 = c(1, 0, 0, 0, 1, 1)
# fpdist(fp1, fp2, 'tanimoto')
# fpdist(fp1, fp2, 'euclidean')
