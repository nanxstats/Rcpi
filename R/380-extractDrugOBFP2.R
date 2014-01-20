#' Calculate the FP2 Molecular Fingerprints
#' 
#' Calculate the FP2 Molecular Fingerprints
#' 
#' Calculate the 1024 bit FP2 fingerprints provided by OpenBabel.
#' 
#' @param molecules R character string object containing the molecules. See examples.
#' @param type 'smile' or 'sdf'
#' 
#' @return A matrix. Each row represents one molecule, 
#' the columns represent the fingerprints.
#' 
#' @keywords extractDrugOBFP2
#'
#' @aliases extractDrugOBFP2
#' 
#' @author Nan Xiao <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugOBFP2
#' 
#' @examples
#' \dontrun{
#' mol1 = 'C1CCC1CC(CN(C)(C))CC(=O)CC'  # one molecule SMILE in a vector
#' mol2 = c('CCC', 'CCN', 'CCN(C)(C)', 'c1ccccc1Cc1ccccc1', 
#'          'C1CCC1CC(CN(C)(C))CC(=O)CC')  # multiple SMILEs in a vector
#' mol3 = readChar(system.file('compseq/DB00860.sdf', package = 'Rcpi'), 
#'                 nchars = 1e+6)  # single molecule in single sdf file
#' mol4 = readChar(system.file('sysdata/OptAA3d.sdf', package = 'Rcpi'), 
#'                 nchars = 1e+6)  # multiple molecules in single sdf file
#' 
#' smifp0 = extractDrugOBFP2(mol1, type = 'smile')
#' smifp1 = extractDrugOBFP2(mol2, type = 'smile')
#' sdffp0 = extractDrugOBFP2(mol3, type = 'sdf')
#' sdffp1 = extractDrugOBFP2(mol4, type = 'sdf')}
#' 

extractDrugOBFP2 = function (molecules, type = c('smile', 'sdf')) {
  
  ChemmineOB.exist = suppressMessages(require(ChemmineOB, quietly = TRUE))
  if ( !ChemmineOB.exist ) stop('The ChemmineOB package is required to run extractDrugOBFP2(). Please follow the instructions on http://www.bioconductor.org/packages/release/bioc/html/ChemmineOB.html to install it.')
  
  if (type == 'smile') {
    
    if ( length(molecules) == 1L ) {
      
      fp = ChemmineOB::fingerprint_OB('SMI', molecules, 'FP2')
      
    } else if ( length(molecules) > 1L ) {
      
      fp = matrix(0L, nrow = length(molecules), ncol = 1024L)
      for ( i in 1:length(molecules) ) fp[i, ] = ChemmineOB::fingerprint_OB('SMI', molecules[i], 'FP2')
      
    }
    
  } else if (type == 'sdf') {
    
    smi = ChemmineOB::convertFormat(from = 'SDF', to = 'SMILES', source = molecules)
    smiclean = strsplit(smi, '\\t.*?\\n')[[1]]
    
    if ( length(smiclean) == 1L ) {
      
      fp = ChemmineOB::fingerprint_OB('SMI', smiclean, 'FP2')
      
    } else if ( length(smiclean) > 1L ) {
      
      fp = matrix(0L, nrow = length(smiclean), ncol = 1024L)
      for ( i in 1:length(smiclean) ) fp[i, ] = ChemmineOB::fingerprint_OB('SMI', smiclean[i], 'FP2')
      
    }
    
  } else {
    
    stop('Molecule type must be "smile" or "sdf"')
  
  }
  
  return(fp)
  
}
