calcProtSim = function (protseq1, protseq2, 
                        method = c('local', 'global'), 
                        submat = 'PAM250', 
                        gapOpening = -10, gapExtension = -4) {
  
  # Gap penalty = Gap open penalty + (gap length -1) * Gap extension penalty
  
  if (method == 'global') { # Needleman-Wunsch Algorithm
    
    
    
  } 
  
  if (method == 'local') { # Smith-Waterman Algorithm
    
    
    
  }
  
  return(NULL)
  
}

# step1. 根据序列和Substitution Matrix计算Scoring Matrix: F
# step2. 根据Scoring Matrix矩阵计算路径，得到带Gap对齐后的序列
# step3. 根据对齐后的序列和Scoring Matrix以及两个gap penalty常数计算得分

calcProtSimMat = function (protlist1, protlist2 = NULL, submat, gapOpening = -10, gapExtension = -4) {
  
  return(NULL)
  
}



# # test case
# require(Biostrings)
# data(PAM250)
# 
# aa1 = AAString("HXBLVYMGCHFDCXVBEHIKQZ")
# aa2 = AAString("QRNYMYCFQCISGNEYKQN")
# 
# pairwiseAlignment(aa1, aa2, type = "global", substitutionMatrix = 'PAM250')
# pairwiseAlignment(aa1, aa2, type = "local",  substitutionMatrix = 'PAM250')
# 
# calcProtSim(aa1, aa2, method = 'global', submat = PAM250)
