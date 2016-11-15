#' Calculates the Eccentric Connectivity Index Descriptor
#'
#' Calculates the Eccentric Connectivity Index Descriptor
#'
#' Eccentric Connectivity Index (ECI) is a topological descriptor combining
#' distance and adjacency information. This descriptor is described by Sharma et al.
#' and has been shown to correlate well with a number of physical properties.
#' The descriptor is also reported to have good discriminatory ability.
#' The eccentric connectivity index for a hydrogen supressed molecular graph
#' is given by
#' \deqn{x_i^c = \sum_{i = 1}^{n} E(i) V(i)}
#' where E(i) is the eccentricity of the i-th atom
#' (path length from the i-th atom to the atom farthest from it)
#' and V(i) is the vertex degree of the i-th atom.
#'
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules,
#' each column represents one feature.
#' This function returns one column named \code{ECCEN}.
#'
#' @keywords extractDrugECI Eccentric Connectivity Index
#'
#' @aliases extractDrugECI
#'
#' @author Nan Xiao <\url{http://nanx.me}>
#'
#' @export extractDrugECI
#'
#' @importFrom rcdk eval.desc
#'
#' @references
#' Sharma, V. and Goswami, R. and Madan, A.K. (1997),
#' Eccentric Connectivity Index: A Novel Highly Discriminating
#' Topological Descriptor for Structure-Property and Structure-Activity Studies,
#' Journal of Chemical Information and Computer Sciences, 37:273-282
#'
#' @examples
#' \donttest{
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugECI(mol)
#' head(dat)}
#'

extractDrugECI = function (molecules, silent = TRUE) {

    x = eval.desc(molecules,
                  'org.openscience.cdk.qsar.descriptors.molecular.EccentricConnectivityIndexDescriptor',
                  verbose = !silent)

    return(x)

}
