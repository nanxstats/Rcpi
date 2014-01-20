#' Calculate Molecular Distance Edge (MDE) Descriptors for C, N and O
#'
#' Calculate Molecular Distance Edge (MDE) Descriptors for C, N and O
#'
#' This descriptor calculates the 10 molecular distance edge (MDE) descriptor 
#' described in Liu, S., Cao, C., & Li, Z, and in addition it calculates 
#' variants where O and N are considered.
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules, each column represents one feature,
#'         This function returns one column named \code{nAtomLAC}.
#' 
#' @keywords extractDrugMDE MDE Molecular Distance Edge
#'
#' @aliases extractDrugMDE
#' 
#' @author Nan Xiao <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugMDE
#' 
#' @references
#' Liu, S., Cao, C., & Li, Z. (1998). 
#' Approach to estimation and prediction for normal boiling point (NBP) 
#' of alkanes based on a novel molecular distance-edge (MDE) vector, lambda. 
#' Journal of chemical information and computer sciences, 38(3), 387-394.
#' 
#' @examples
#' \dontrun{
#' mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
#' extractDrugMDE(mol)}

# Evaluate molecular distance edge descriptors for C, N and O
# 
# Calculates the Molecular Distance Edge descriptor described in [Liu, S. and Cao, C. and Li, Z. , Approach to Estimation and Prediction for Normal Boiling Point (NBP) of Alkanes Based on a Novel Molecular Distance Edge (MDE) Vector, lambda, Journal of Chemical Information and Computer Sciences, 1998, 38:387-394]. This class evaluates the 10 MDE descriptors described by Liu et al. and in addition it calculates variants where O and N are considered (as found in the DEDGE routine from ADAPT).
# http://pele.farmbio.uu.se/nightly/api/org/openscience/cdk/qsar/descriptors/molecular/MDEDescriptor.html
# 
# 19 features: MDEC.11 MDEC.12 MDEC.13 MDEC.14 MDEC.22 MDEC.23 MDEC.24 MDEC.33 MDEC.34 MDEC.44 MDEO.11 MDEO.12 MDEO.22 MDEN.11 MDEN.12 MDEN.13 MDEN.22 MDEN.23 MDEN.33
# The variants are described below:
# 
# MDEC-11   molecular distance edge between all primary carbons
# MDEC-12	 molecular distance edge between all primary and secondary carbons
# MDEC-13	 molecular distance edge between all primary and tertiary carbons
# MDEC-14	 molecular distance edge between all primary and quaternary carbons
# MDEC-22	 molecular distance edge between all secondary carbons
# MDEC-23	 molecular distance edge between all secondary and tertiary carbons
# MDEC-24	 molecular distance edge between all secondary and quaternary carbons
# MDEC-33	 molecular distance edge between all tertiary carbons
# MDEC-34	 molecular distance edge between all tertiary and quaternary carbons
# MDEC-44	 molecular distance edge between all quaternary carbons
# MDEO-11	 molecular distance edge between all primary oxygens
# MDEO-12	 molecular distance edge between all primary and secondary oxygens
# MDEO-22	 molecular distance edge between all secondary oxygens
# MDEN-11	 molecular distance edge between all primary nitrogens
# MDEN-12	 molecular distance edge between all primary and secondary nitrogens
# MDEN-13	 molecular distance edge between all primary and tertiary niroqens
# MDEN-22	 molecular distance edge between all secondary nitroqens
# MDEN-23	 molecular distance edge between all secondary and tertiary nitrogens
# MDEN-33	 molecular distance edge between all tertiary nitrogens

extractDrugMDE = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.MDEDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
