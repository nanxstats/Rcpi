#' Compound-Protein Interaction with R
#'
#' The Rcpi package provides easily accessible functions
#' for retrieving  molecule data from PubChem, ChEMBL, CAS, KEGG, DrugBank, 
#' and protein sequences from UniProt, KEGG and RCSBPDB. Rcpi calculates
#' 14 types of descriptors for protein sequences, 50 kinds of 
#' molecular descriptors, 9 kinds of molecular fingerprints and 
#' computing their similarities. Rcpi facilitates the compound-protein interaction
#' and protein-protein interaction via 3 types of feature combination.
#' 
#' The package is developed by Computational Biology and 
#' Drug Design Group, Central South University.
#'
#' \tabular{ll}{ Package: \tab Rcpi\cr Type: \tab Package\cr
#' Version: \tab 1.0\cr License: \tab BSD\cr }
#'
#' @name Rcpi-package
#' @aliases Rcpi
#' @docType package
#' @exportPattern "^[^\\.]"
#' @author Xiao Nan <\email{road2stat@@gmail.com}>
#'         Dongsheng Cao \email{oriental-cds@@163.com}
#'         Qingsong Xu \email{dasongxu@@gmail.com}
#' 
#' @note
#' The comprehensive user's guide could be opened with \code{vignette('Rcpi')},
#' which explains each descriptor included in this package and corresponding
#' usage.
#' 
#' Bug reports and feature requests should be sent to
#' \url{https://github.com/road2stat/Rcpi/issues}.
#' 
#' @references
#' The associated website for this package:
#' \url{http://cbdd.csu.edu.cn/Rcpi/}
#'
#' @seealso See \code{\link{Rcpi}} for details.
#' 
#' @keywords Rcpi drug design compound protein sequence 
#'           feature extraction descriptors fingerprint
#'           network graph rcdk protr interaction
#'           chemoinformatics bioinforamtics
#' 
#' @example inst/examples/Rcpi-package-ex.R
NULL



#' AAindex Data of 544 Physicochemical and Biological Properties
#' for 20 Amino Acids
#' 
#' AAindex Data of 544 Physicochemical and Biological Properties
#' for 20 Amino Acids
#' 
#' The data was extracted from the AAindex1 database ver 9.1 
#' (\url{ftp://ftp.genome.jp/pub/db/community/aaindex/aaindex1}) as of Nov. 2012
#' (Data Last Modified 2006-08-14).
#' 
#' With this data, users could investigate each property's accession number 
#' and other details. Visit \url{http://www.genome.jp/dbget/aaindex.html} 
#' for more information.
#' 
#' @docType data
#' @name AAindex
#' @aliases AAindex
#' @usage data(AAindex)
#' @keywords AAindex aaindex datasets
#' @examples
#' data(AAindex)
#' 
NULL
