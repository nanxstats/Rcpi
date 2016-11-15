#' Calculate Molecular Descriptors Provided by OpenBabel
#'
#' Calculate Molecular Descriptors Provided by OpenBabel
#'
#' This function calculates 14 types of the \emph{numerical}
#' molecular descriptors provided in OpenBabel.
#'
#' @param molecules R character string object containing the molecules.
#' See the example section for details.
#' @param type \code{'smile'} or \code{'sdf'}.
#'
#' @return A data frame, each row represents one of the molecules,
#' each column represents one descriptor.
#' This function returns 14 columns named
#' \code{abonds}, \code{atoms}, \code{bonds}, \code{dbonds},
#' \code{HBA1}, \code{HBA2}, \code{HBD}, \code{logP},
#' \code{MR}, \code{MW}, \code{nF}, \code{sbonds}, \code{tbonds}, \code{TPSA}:
#'         \itemize{
#'         \item \code{abonds} - Number of aromatic bonds
#'         \item \code{atoms} - Number of atoms
#'         \item \code{bonds} - Number of bonds
#'         \item \code{dbonds} - Number of double bonds
#'         \item \code{HBA1} - Number of Hydrogen Bond Acceptors 1
#'         \item \code{HBA2} - Number of Hydrogen Bond Acceptors 2
#'         \item \code{HBD} - Number of Hydrogen Bond Donors
#'         \item \code{logP} - Octanol/Water Partition Coefficient
#'         \item \code{MR} - Molar Refractivity
#'         \item \code{MW} - Molecular Weight Filter
#'         \item \code{nF} - Number of Fluorine Atoms
#'         \item \code{sbonds} - Number of single bonds
#'         \item \code{tbonds} - Number of triple bonds
#'         \item \code{TPSA} - Topological Polar Surface Area
#'         }
#'
#' @keywords extractDrugDescOB OpenBabel Descriptors
#'
#' @aliases extractDrugDescOB
#'
#' @author Nan Xiao <\url{http://nanx.me}>
#'
#' @export extractDrugDescOB
#'
#' @examples
#' \donttest{
#' mol1 = 'CC(=O)NCCC1=CNc2c1cc(OC)cc2'  # one molecule SMILE in a vector
#' mol2 = c('OCCc1c(C)[n+](=cs1)Cc2cnc(C)nc(N)2',
#'          'CCc(c1)ccc2[n+]1ccc3c2Nc4c3cccc4',
#'          '[Cu+2].[O-]S(=O)(=O)[O-]')  # multiple SMILEs in a vector
#' mol3 = readChar(system.file('compseq/DB00860.sdf', package = 'Rcpi'),
#'                 nchars = 1e+6)  # single molecule in single sdf file
#' mol4 = readChar(system.file('sysdata/OptAA3d.sdf', package = 'Rcpi'),
#'                 nchars = 1e+6)  # multiple molecules in single sdf file
#'
#' smidesc0 = extractDrugDescOB(mol1, type = 'smile')
#' smidesc1 = extractDrugDescOB(mol2, type = 'smile')
#' sdfdesc0 = extractDrugDescOB(mol3, type = 'sdf')
#' sdfdesc1 = extractDrugDescOB(mol4, type = 'sdf')}
#'

extractDrugDescOB = function (molecules, type = c('smile', 'sdf')) {

    strDesc = c('cansmi', 'cansmiNS', 'formula', 'title')
    numDesc = c('abonds', 'atoms', 'bonds', 'dbonds', 'HBA1', 'HBA2', 'HBD',
                'logP', 'MR', 'MW', 'nF', 'sbonds', 'tbonds', 'TPSA')

    if (type == 'smile') {

        if ( length(molecules) == 1L ) {

            x = eval(parse(text = ".Call('propOB', 'SMILES', as.character(molecules), numDesc, strDesc, PACKAGE = 'ChemmineOB')[[1]]"))

        } else if ( length(molecules) > 1L ) {

            x = matrix(NA, nrow = length(molecules), ncol = length(numDesc))

            for ( i in 1:length(molecules) ) {
                x[i, ] = eval(parse(text = ".Call('propOB', 'SMILES', as.character(molecules[i]), numDesc, strDesc, PACKAGE = 'ChemmineOB')[[1]]"))
            }

        }

    } else if (type == 'sdf') {

        smi = ChemmineOB::convertFormat(from = 'SDF', to = 'SMILES',
                                        source = molecules)
        smiclean = strsplit(smi, '\\t.*?\\n')[[1]]

        if ( length(smiclean) == 1L ) {

            x = eval(parse(text = ".Call('propOB', 'SMILES', as.character(smiclean), numDesc, strDesc, PACKAGE = 'ChemmineOB')[[1]]"))

        } else if ( length(smiclean) > 1L ) {

            x = matrix(NA, nrow = length(smiclean), ncol = length(numDesc))

            for ( i in 1:length(smiclean) ) {
                x[i, ] = eval(parse(text = ".Call('propOB', 'SMILES', as.character(smiclean[i]), numDesc, strDesc, PACKAGE = 'ChemmineOB')[[1]]"))
            }

        }

    } else {

        stop('Molecule type must be "smile" or "sdf"')

    }

    colnames(x) = numDesc

    return(x)

}
