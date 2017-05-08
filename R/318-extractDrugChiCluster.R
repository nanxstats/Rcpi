#' Evaluates the Kier and Hall Chi cluster indices of orders 3, 4, 5 and 6
#'
#' Evaluates the Kier and Hall Chi cluster indices of orders 3, 4, 5 and 6
#'
#' Evaluates chi cluster descriptors.
#' It utilizes the graph isomorphism code of the CDK
#' to find fragments matching SMILES strings
#' representing the fragments corresponding to each type of chain.
#'
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules,
#' each column represents one feature.
#' This function returns 8 columns,
#' the order and names of the columns returned is:
#' \itemize{
#' \item SC.3 - Simple cluster, order 3
#' \item SC.4 - Simple cluster, order 4
#' \item SC.5 - Simple cluster, order 5
#' \item SC.6 - Simple cluster, order 6
#' \item VC.3 - Valence cluster, order 3
#' \item VC.4 - Valence cluster, order 4
#' \item VC.5 - Valence cluster, order 5
#' \item VC.6 - Valence cluster, order 6
#' }
#'
#' @note These descriptors are calculated using graph isomorphism to identify
#' the various fragments. As a result calculations may be slow.
#' In addition, recent versions of Molconn-Z use simplified fragment
#' definitions (i.e., rings without branches etc.)
#' whereas these descriptors use the older more complex fragment definitions.
#'
#' @keywords extractDrugChiCluster Chi Cluster
#'
#' @aliases extractDrugChiCluster
#'
#' @author Nan Xiao <\url{http://nanx.me}>
#'
#' @export extractDrugChiCluster
#'
#' @importFrom rcdk eval.desc
#'
#' @examples
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' \donttest{
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugChiCluster(mol)
#' head(dat)}

extractDrugChiCluster = function (molecules, silent = TRUE) {

    x = eval.desc(
        molecules,
        'org.openscience.cdk.qsar.descriptors.molecular.ChiClusterDescriptor',
        verbose = !silent)

    return(x)

}
