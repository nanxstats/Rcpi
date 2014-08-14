#' Calculate Holistic Descriptors Described by Todeschini et al.
#'
#' Calculate Holistic Descriptors Described by Todeschini et al.
#' 
#' Holistic descriptors described by Todeschini et al, the descriptors 
#' are based on a number of atom weightings. 
#' There are six different possible weightings:
#' \itemize{
#' \item unit weights
#' \item atomic masses
#' \item van der Waals volumes
#' \item Mulliken atomic electronegativites
#' \item atomic polarizabilities
#' \item E-state values described by Kier and Hall
#' }
#' 
#' Currently weighting schemes 1, 2, 3, 4 and 5 are implemented. 
#' The weight values are taken from Todeschini et al.
#' and as a result 19 elements are considered.
#' For each weighting scheme we can obtain
#' \itemize{
#' \item 11 directional WHIM descriptors (lambda1 .. 3, nu1 .. 2, gamma1 .. 3, eta1 .. 3)
#' \item 6 non-directional WHIM descriptors (T, A, V, K, G, D)
#' }
#' Though Todeschini et al. mentions that for planar molecules 
#' only 8 directional WHIM descriptors are required the current code will return all 11.
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process 
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules, 
#' each column represents one feature. 
#' This function returns 17 columns:
#' \itemize{
#' \item Wlambda1
#' \item Wlambda2
#' \item wlambda3
#' \item Wnu1
#' \item Wnu2
#' \item Wgamma1
#' \item Wgamma2
#' \item Wgamma3
#' \item Weta1
#' \item Weta2
#' \item Weta3
#' \item WT
#' \item WA
#' \item WV
#' \item WK
#' \item WG
#' \item WD
#' }
#' 
#' Each name will have a suffix of the form \code{.X} where \code{X} indicates 
#' the weighting scheme used. Possible values of \code{X} are
#' \itemize{
#' \item unity
#' \item mass
#' \item volume
#' \item eneg
#' \item polar
#' }
#' 
#' @keywords extractDrugWHIM WHIM
#'
#' @aliases extractDrugWHIM
#' 
#' @author Nan Xiao <\url{http://r2s.name}>
#' 
#' @export extractDrugWHIM
#' 
#' @importFrom rcdk eval.desc
#' 
#' @references
#' Todeschini, R. and Gramatica, P., 
#' New 3D Molecular Descriptors: The WHIM theory and QAR Applications, 
#' Persepectives in Drug Discovery and Design, 1998, ?:355-380.
#' 
#' @examples
#' \donttest{
#' sdf = system.file('sysdata/OptAA3d.sdf', package = 'Rcpi')
#' mol = readMolFromSDF(sdf)
#' dat = extractDrugWHIM(mol)
#' head(dat)}
#' 

extractDrugWHIM = function (molecules, silent = TRUE) {

    x = eval.desc(molecules, 
                  'org.openscience.cdk.qsar.descriptors.molecular.WHIMDescriptor', 
                  verbose = !silent)

    return(x)

}
