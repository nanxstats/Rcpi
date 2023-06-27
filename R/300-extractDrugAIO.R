#' Calculate All Molecular Descriptors in Rcpi at Once
#'
#' Calculate All Molecular Descriptors in Rcpi at Once
#'
#' This function calculates all the molecular descriptors
#' in the Rcpi package at once.
#'
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process should be
#' shown or not, default is \code{TRUE}.
#' @param warn Logical. Whether the warning about some descriptors
#' need the 3D coordinates should be shown or not after the calculation,
#' default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules,
#' each column represents one descriptor.
#' Currently, this function returns total 293 descriptors
#' composed of 48 descriptor types.
#'
#' @export extractDrugAIO
#'
#' @note
#' Note that we need 3-D coordinates of the molecules to calculate
#' some of the descriptors, if not provided, these descriptors
#' values will be \code{NA}.
#'
#' @examples
#' # Load 20 small molecules that have 3D coordinates
#' sdf = system.file('sysdata/OptAA3d.sdf', package = 'Rcpi')
#' \donttest{
#' mol = readMolFromSDF(sdf)
#' dat = extractDrugAIO(mol, warn = FALSE)}

extractDrugAIO = function (molecules, silent = TRUE, warn = TRUE) {

    if (warn == TRUE)
        warning('Note that we need 3-D coordinates of the molecules to calculate some of the descriptors, if not provided, these descriptors will be NA')

    descNames = c(
        'ALOGPDescriptor',
        'APolDescriptor',
        'AminoAcidCountDescriptor',
        'AromaticAtomsCountDescriptor',
        'AromaticBondsCountDescriptor',
        'AtomCountDescriptor',
        'AutocorrelationDescriptorCharge',
        'AutocorrelationDescriptorMass',
        'AutocorrelationDescriptorPolarizability',
        'BCUTDescriptor',
        'BPolDescriptor',
        'BondCountDescriptor',
        'CPSADescriptor',
        'CarbonTypesDescriptor',
        'ChiChainDescriptor',
        'ChiClusterDescriptor',
        'ChiPathClusterDescriptor',
        'ChiPathDescriptor',
        'EccentricConnectivityIndexDescriptor',
        'FMFDescriptor',
        'FragmentComplexityDescriptor',
        'GravitationalIndexDescriptor',
        'HBondAcceptorCountDescriptor',
        'HBondDonorCountDescriptor',
        'HybridizationRatioDescriptor',
        'IPMolecularLearningDescriptor',
        'KappaShapeIndicesDescriptor',
        'KierHallSmartsDescriptor',
        'LargestChainDescriptor',
        'LargestPiSystemDescriptor',
        'LengthOverBreadthDescriptor',
        'LongestAliphaticChainDescriptor',
        'MDEDescriptor',
        'MannholdLogPDescriptor',
        'MomentOfInertiaDescriptor',
        'PetitjeanNumberDescriptor',
        'PetitjeanShapeIndexDescriptor',
        'RotatableBondsCountDescriptor',
        'RuleOfFiveDescriptor',
        'TPSADescriptor',
        'VABCDescriptor',
        'VAdjMaDescriptor',
        'WHIMDescriptor',
        'WeightDescriptor',
        'WeightedPathDescriptor',
        'WienerNumbersDescriptor',
        'XLogPDescriptor',
        'ZagrebIndexDescriptor')

    evaluateDescriptor(molecules, type = descNames, silent = silent)
}
