#' Calculate the FP2 Molecular Fingerprints
#'
#' Calculate the FP2 Molecular Fingerprints
#'
#' Calculate the 1024 bit FP2 fingerprints provided by OpenBabel.
#'
#' @param molecules R character string object containing the molecules.
#' See the example section for details.
#' @param type \code{'smile'} or \code{'sdf'}.
#'
#' @return A matrix. Each row represents one molecule,
#' the columns represent the fingerprints.
#'
#' @export extractDrugOBFP2
#'
#' @examples
#' mol1 = 'C1CCC1CC(CN(C)(C))CC(=O)CC'  # one molecule SMILE in a vector
#' mol2 = c('CCC', 'CCN', 'CCN(C)(C)', 'c1ccccc1Cc1ccccc1',
#'          'C1CCC1CC(CN(C)(C))CC(=O)CC')  # multiple SMILEs in a vector
#' mol3 = readChar(system.file('compseq/DB00860.sdf', package = 'Rcpi'),
#'                 nchars = 1e+6)  # single molecule in a sdf file
#' mol4 = readChar(system.file('sysdata/OptAA3d.sdf', package = 'Rcpi'),
#'                 nchars = 1e+6)  # multiple molecules in a sdf file
#'
#' \dontrun{
#' smifp0 = extractDrugOBFP2(mol1, type = 'smile')
#' smifp1 = extractDrugOBFP2(mol2, type = 'smile')
#' sdffp0 = extractDrugOBFP2(mol3, type = 'sdf')
#' sdffp1 = extractDrugOBFP2(mol4, type = 'sdf')}

extractDrugOBFP2 = function (molecules, type = c('smile', 'sdf')) {

    check_ob()

    if (type == 'smile') {

        if ( length(molecules) == 1L ) {

            molRefs = eval(parse(text = "ChemmineOB::forEachMol('SMILES', molecules, identity)"))
            fp = eval(parse(text = "ChemmineOB::fingerprint_OB(molRefs, 'FP2')"))

        } else if ( length(molecules) > 1L ) {

            fp = matrix(0L, nrow = length(molecules), ncol = 1024L)

            for ( i in 1:length(molecules) ) {
                molRefs = eval(parse(text = "ChemmineOB::forEachMol('SMILES', molecules[i], identity)"))
                fp[i, ] = eval(parse(text = "ChemmineOB::fingerprint_OB(molRefs, 'FP2')"))
            }

        }

    } else if (type == 'sdf') {

        smi = eval(parse(text = "ChemmineOB::convertFormat(from = 'SDF', to = 'SMILES', source = molecules)"))
        smiclean = strsplit(smi, '\\t.*?\\n')[[1]]

        if ( length(smiclean) == 1L ) {

            molRefs = eval(parse(text = "ChemmineOB::forEachMol('SMILES', smiclean, identity)"))
            fp = eval(parse(text = "ChemmineOB::fingerprint_OB(molRefs, 'FP2')"))

        } else if ( length(smiclean) > 1L ) {

            fp = matrix(0L, nrow = length(smiclean), ncol = 1024L)
            for ( i in 1:length(smiclean) ) {
                molRefs = eval(parse(text = "ChemmineOB::forEachMol('SMILES', smiclean[i], identity)"))
                fp[i, ] = eval(parse(text = "ChemmineOB::fingerprint_OB(molRefs, 'FP2')"))
            }

        }

    } else {

        stop('Molecule type must be "smile" or "sdf"')

    }

    return(fp)

}
