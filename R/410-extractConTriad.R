#' Conjoint Triad Descriptor
#'
#' Conjoint Triad Descriptor
#' 
#' This function calculates the Conjoint Triad descriptor (Dim: 343).
#' 
#' @param x A character vector, as the input protein sequence. 
#'
#' @return A length 343 named vector
#' 
#' @keywords extract ConTriad extractConTriad Conjoint Triad
#'
#' @aliases extractConTriad
#' 
#' @author Xiao Nan <\url{http://www.road2stat.com}>
#' 
#' @export extractConTriad
#' 
#' @references
#' J.W. Shen, J. Zhang, X.M. Luo, W.L. Zhu, 
#' K.Q. Yu, K.X. Chen, Y.X. Li, H.L. Jiang. 
#' Predicting Protein-protein Interactions Based Only on Sequences Information. 
#' \emph{Proceedings of the National Academy of Sciences}. 007, 104, 4337-4341.
#' 
#' @examples
#' x = readFASTA(system.file('protseq/P00750.fasta', package = 'Rcpi'))[[1]]
#' extractConTriad(x)
#' 

extractConTriad = function (x) {
  
  if (protcheck(x) == FALSE) stop('x has unrecognized amino acid type')
  
  # To achieve maximum performance, here we use dictionary directly
  # CTDict could also be generated with
  #
  # classes = vector('list', 7)
  # classes[[1]] = c('A', 'G', 'V')
  # classes[[2]] = c('I', 'L', 'F', 'P')
  # classes[[3]] = c('Y', 'M', 'T', 'S')
  # classes[[4]] = c('H', 'N', 'Q', 'W')
  # classes[[5]] = c('R', 'K')
  # classes[[6]] = c('D', 'E')
  # classes[[7]] = c('C')
  #   
  # vspace = expand.grid(1:7, 1:7, 1:7)
  #   
  # CTDict = vector('list', 343)
  #   
  # for (i in 1:343) {
  #   tmp = as.vector(outer(classes[[vspace[i, 1]]], 
  #                         classes[[vspace[i, 2]]], paste, sep = ''))
  #   CTDict[[i]] = as.vector(outer(tmp, 
  #                                 classes[[vspace[i, 3]]], paste, sep = ''))
  # }
  # 
  # CTDict = unlist(CTDict)
  
  # To pass R CMD check
  CTDict = NULL
  CTIndex = NULL
  
  load(system.file('sysdata/CTDict.rda', package = 'Rcpi'))
  load(system.file('sysdata/CTIndex.rda', package = 'Rcpi'))
  
  xSplitted = strsplit(x, split = '')[[1]]
  n  = nchar(x)
  CTAll = summary(factor(paste(paste(xSplitted[-c(n, n-1)], 
                                     xSplitted[-c(1, n)], sep = ''), 
                               xSplitted[-c(1, 2)], sep = ''), 
                         levels = CTDict), maxsum = 8001)
  
  MatchedIndex = which(CTAll != 0)
  MatchedNames = names(CTAll[MatchedIndex])
  MatchedTimes = as.integer(CTAll[MatchedIndex])
  CTAll = rep(MatchedNames, times = MatchedTimes)
  
  CT = rep(0L, 343)
  
  for (i in 1:length(MatchedNames)) {
    idx = CTIndex[which(CTDict == MatchedNames[i])]
    CT[idx] = CT[idx] + MatchedTimes[i]
  }
  
  CT = (CT - min(CT))/max(CT)
  
  names(CT) = c('VS111', 'VS211', 'VS311', 'VS411', 'VS511', 'VS611', 'VS711', 
                'VS121', 'VS221', 'VS321', 'VS421', 'VS521', 'VS621', 'VS721', 
                'VS131', 'VS231', 'VS331', 'VS431', 'VS531', 'VS631', 'VS731', 
                'VS141', 'VS241', 'VS341', 'VS441', 'VS541', 'VS641', 'VS741', 
                'VS151', 'VS251', 'VS351', 'VS451', 'VS551', 'VS651', 'VS751', 
                'VS161', 'VS261', 'VS361', 'VS461', 'VS561', 'VS661', 'VS761', 
                'VS171', 'VS271', 'VS371', 'VS471', 'VS571', 'VS671', 'VS771', 
                'VS112', 'VS212', 'VS312', 'VS412', 'VS512', 'VS612', 'VS712', 
                'VS122', 'VS222', 'VS322', 'VS422', 'VS522', 'VS622', 'VS722', 
                'VS132', 'VS232', 'VS332', 'VS432', 'VS532', 'VS632', 'VS732', 
                'VS142', 'VS242', 'VS342', 'VS442', 'VS542', 'VS642', 'VS742', 
                'VS152', 'VS252', 'VS352', 'VS452', 'VS552', 'VS652', 'VS752', 
                'VS162', 'VS262', 'VS362', 'VS462', 'VS562', 'VS662', 'VS762', 
                'VS172', 'VS272', 'VS372', 'VS472', 'VS572', 'VS672', 'VS772', 
                'VS113', 'VS213', 'VS313', 'VS413', 'VS513', 'VS613', 'VS713', 
                'VS123', 'VS223', 'VS323', 'VS423', 'VS523', 'VS623', 'VS723', 
                'VS133', 'VS233', 'VS333', 'VS433', 'VS533', 'VS633', 'VS733', 
                'VS143', 'VS243', 'VS343', 'VS443', 'VS543', 'VS643', 'VS743', 
                'VS153', 'VS253', 'VS353', 'VS453', 'VS553', 'VS653', 'VS753', 
                'VS163', 'VS263', 'VS363', 'VS463', 'VS563', 'VS663', 'VS763', 
                'VS173', 'VS273', 'VS373', 'VS473', 'VS573', 'VS673', 'VS773', 
                'VS114', 'VS214', 'VS314', 'VS414', 'VS514', 'VS614', 'VS714', 
                'VS124', 'VS224', 'VS324', 'VS424', 'VS524', 'VS624', 'VS724', 
                'VS134', 'VS234', 'VS334', 'VS434', 'VS534', 'VS634', 'VS734', 
                'VS144', 'VS244', 'VS344', 'VS444', 'VS544', 'VS644', 'VS744', 
                'VS154', 'VS254', 'VS354', 'VS454', 'VS554', 'VS654', 'VS754', 
                'VS164', 'VS264', 'VS364', 'VS464', 'VS564', 'VS664', 'VS764', 
                'VS174', 'VS274', 'VS374', 'VS474', 'VS574', 'VS674', 'VS774', 
                'VS115', 'VS215', 'VS315', 'VS415', 'VS515', 'VS615', 'VS715', 
                'VS125', 'VS225', 'VS325', 'VS425', 'VS525', 'VS625', 'VS725', 
                'VS135', 'VS235', 'VS335', 'VS435', 'VS535', 'VS635', 'VS735', 
                'VS145', 'VS245', 'VS345', 'VS445', 'VS545', 'VS645', 'VS745', 
                'VS155', 'VS255', 'VS355', 'VS455', 'VS555', 'VS655', 'VS755', 
                'VS165', 'VS265', 'VS365', 'VS465', 'VS565', 'VS665', 'VS765', 
                'VS175', 'VS275', 'VS375', 'VS475', 'VS575', 'VS675', 'VS775', 
                'VS116', 'VS216', 'VS316', 'VS416', 'VS516', 'VS616', 'VS716', 
                'VS126', 'VS226', 'VS326', 'VS426', 'VS526', 'VS626', 'VS726', 
                'VS136', 'VS236', 'VS336', 'VS436', 'VS536', 'VS636', 'VS736', 
                'VS146', 'VS246', 'VS346', 'VS446', 'VS546', 'VS646', 'VS746', 
                'VS156', 'VS256', 'VS356', 'VS456', 'VS556', 'VS656', 'VS756', 
                'VS166', 'VS266', 'VS366', 'VS466', 'VS566', 'VS666', 'VS766', 
                'VS176', 'VS276', 'VS376', 'VS476', 'VS576', 'VS676', 'VS776', 
                'VS117', 'VS217', 'VS317', 'VS417', 'VS517', 'VS617', 'VS717', 
                'VS127', 'VS227', 'VS327', 'VS427', 'VS527', 'VS627', 'VS727', 
                'VS137', 'VS237', 'VS337', 'VS437', 'VS537', 'VS637', 'VS737', 
                'VS147', 'VS247', 'VS347', 'VS447', 'VS547', 'VS647', 'VS747', 
                'VS157', 'VS257', 'VS357', 'VS457', 'VS557', 'VS657', 'VS757', 
                'VS167', 'VS267', 'VS367', 'VS467', 'VS567', 'VS667', 'VS767', 
                'VS177', 'VS277', 'VS377', 'VS477', 'VS577', 'VS677', 'VS777')
  
  return(CT)
  
}

