#' Descriptor that Calculates the Petitjean Number of a Molecule
#'
#' Descriptor that Calculates the Petitjean Number of a Molecule
#' 
#' This descriptor calculates the Petitjean number of a molecule.
#' According to the Petitjean definition, the eccentricity of a vertex 
#' corresponds to the distance from that vertex to the most remote vertex 
#' in the graph. 
#' 
#' The distance is obtained from the distance matrix as the count of edges 
#' between the two vertices. If \code{r(i)} is the largest matrix entry 
#' in row \code{i} of the distance matrix \code{D}, then the radius is defined 
#' as the smallest of the \code{r(i)}. The graph diameter \code{D} is defined as 
#' the largest vertex eccentricity in the graph. 
#' (\url{http://www.edusoft-lc.com/molconn/manuals/400/chaptwo.html})
#' 
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules, 
#' each column represents one feature. 
#' This function returns one column named \code{PetitjeanNumber}.
#' 
#' @keywords extractDrugPetitjeanNumber Petitjean
#'
#' @aliases extractDrugPetitjeanNumber
#' 
#' @author Nan Xiao <\url{http://r2s.name}>
#' 
#' @export extractDrugPetitjeanNumber
#' 
#' @importFrom rcdk eval.desc
#' 
#' @examples
#' \donttest{
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugPetitjeanNumber(mol)
#' head(dat)}
#' 

extractDrugPetitjeanNumber = function (molecules, silent = TRUE) {

    x = eval.desc(molecules, 
                  'org.openscience.cdk.qsar.descriptors.molecular.PetitjeanNumberDescriptor', 
                  verbose = !silent)

    return(x)

}
