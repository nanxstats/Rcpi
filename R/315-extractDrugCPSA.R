#' A Variety of Descriptors Combining Surface Area and Partial Charge Information
#'
#' A Variety of Descriptors Combining Surface Area and Partial Charge Information
#' 
#' Calculates 29 Charged Partial Surface Area (CPSA) descriptors. 
#' The CPSA's were developed by Stanton et al. 
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules, each column represents one feature,
#'         This function returns 29 columns:
#'         \itemize{
#'         \item \code{PPSA.1} - partial positive surface area -- sum of surface area on positive parts of molecule
#'         \item \code{PPSA.2} - partial positive surface area * total positive charge on the molecule
#'         \item \code{PPSA.3} - charge weighted partial positive surface area
#'         \item \code{PNSA.1} - partial negative surface area -- sum of surface area on negative parts of molecule
#'         \item \code{PNSA.2} - partial negative surface area * total negative charge on the molecule
#'         \item \code{PNSA.3} - charge weighted partial negative surface area
#'         \item \code{DPSA.1} - difference of PPSA.1 and PNSA.1
#'         \item \code{DPSA.2} - difference of FPSA.2 and PNSA.2
#'         \item \code{DPSA.3} - difference of PPSA.3 and PNSA.3
#'         \item \code{FPSA.1} - PPSA.1 / total molecular surface area
#'         \item \code{FFSA.2} - PPSA.2 / total molecular surface area
#'         \item \code{FPSA.3} - PPSA.3 / total molecular surface area
#'         \item \code{FNSA.1} - PNSA.1 / total molecular surface area
#'         \item \code{FNSA.2} - PNSA.2 / total molecular surface area
#'         \item \code{FNSA.3} - PNSA.3 / total molecular surface area
#'         \item \code{WPSA.1} - PPSA.1 * total molecular surface area / 1000
#'         \item \code{WPSA.2} - PPSA.2 * total molecular surface area /1000
#'         \item \code{WPSA.3} - PPSA.3 * total molecular surface area / 1000
#'         \item \code{WNSA.1} - PNSA.1 * total molecular surface area /1000
#'         \item \code{WNSA.2} - PNSA.2 * total molecular surface area / 1000
#'         \item \code{WNSA.3} - PNSA.3 * total molecular surface area / 1000
#'         \item \code{RPCG} - relative positive charge -- most positive charge / total positive charge
#'         \item \code{RNCG} - relative negative charge -- most negative charge / total negative charge
#'         \item \code{RPCS} - relative positive charge surface area -- most positive surface area * RPCG
#'         \item \code{RNCS} - relative negative charge surface area -- most negative surface area * RNCG
#'         \item \code{THSA} - sum of solvent accessible surface areas of atoms with absolute value of partial charges less than 0.2
#'         \item \code{TPSA} - sum of solvent accessible surface areas of atoms with absolute value of partial charges greater than or equal 0.2
#'         \item \code{RHSA} - THSA / total molecular surface area
#'         \item \code{RPSA} - TPSA / total molecular surface area
#'         }
#' 
#' @keywords extractDrugCPSA CPSA
#'
#' @aliases extractDrugCPSA
#' 
#' @author Xiao Nan <\url{http://www.road2stat.com}>
#' 
#' @export extractDrugCPSA
#' 
#' @references
#' Stanton, D.T. and Jurs, P.C. , 
#' Development and Use of Charged Partial Surface 
#' Area Structural Descriptors in Computer Assissted 
#' Quantitative Structure Property Relationship Studies, 
#' Analytical Chemistry, 1990, 62:2323.2329.
#' 
#' @examples
#' \dontrun{
#' mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
#' extractDrugCPSA(mol)}

extractDrugCPSA = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.CPSADescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
