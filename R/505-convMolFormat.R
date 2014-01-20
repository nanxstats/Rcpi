#' Chemical File Formats Conversion
#' 
#' Chemical File Formats Conversion
#' 
#' This function converts between various chemical file formats via OpenBabel. 
#' The complete supported file format list could be found at 
#' \url{http://openbabel.org/docs/dev/FileFormats/Overview.html}.
#' 
#' @param infile A character string. Indicating the input file location.
#' @param outfile A character string. Indicating the output file location.
#' @param from The format of \code{infile}. 
#'             A character string supported by OpenBabel. 
#'             See the note section for the supported formats.
#' @param to The desired format of \code{outfile}. 
#'           A character string supported by OpenBabel. 
#'           See the note section for the supported formats.
#' 
#' @return \code{NULL}
#' 
#' @keywords convMolFormat OpenBabel convert molecular format
#' 
#' @aliases convMolFormat
#' 
#' @author Nan Xiao <\url{http://www.road2stat.com}>
#' 
#' @export convMolFormat
#' 
#' @note The supported formats include:
#'             \itemize{
#'             \item abinit -- ABINIT Output Format [Read-only]
#'             \item acr -- ACR format [Read-only]
#'             \item adf -- ADF cartesian input format [Write-only]
#'             \item adfout -- ADF output format [Read-only]
#'             \item alc -- Alchemy format
#'             \item arc -- Accelrys/MSI Biosym/Insight II CAR format [Read-only]
#'             \item axsf -- XCrySDen Structure Format [Read-only]
#'             \item bgf -- MSI BGF format
#'             \item box -- Dock 3.5 Box format
#'             \item bs -- Ball and Stick format
#'             \item c3d1 -- Chem3D Cartesian 1 format
#'             \item c3d2 -- Chem3D Cartesian 2 format
#'             \item cac -- CAChe MolStruct format [Write-only]
#'             \item caccrt -- Cacao Cartesian format
#'             \item cache -- CAChe MolStruct format [Write-only]
#'             \item cacint -- Cacao Internal format [Write-only]
#'             \item can -- Canonical SMILES format
#'             \item car -- Accelrys/MSI Biosym/Insight II CAR format [Read-only]
#'             \item castep -- CASTEP format [Read-only]
#'             \item ccc -- CCC format [Read-only]
#'             \item cdx -- ChemDraw binary format [Read-only]
#'             \item cdxml -- ChemDraw CDXML format
#'             \item cht -- Chemtool format [Write-only]
#'             \item cif -- Crystallographic Information File
#'             \item ck -- ChemKin format
#'             \item cml -- Chemical Markup Language
#'             \item cmlr -- CML Reaction format
#'             \item com -- Gaussian 98/03 Input [Write-only]
#'             \item CONFIG -- DL-POLY CONFIG
#'             \item CONTCAR -- VASP format [Read-only]
#'             \item copy -- Copy raw text [Write-only]
#'             \item crk2d -- Chemical Resource Kit diagram(2D)
#'             \item crk3d -- Chemical Resource Kit 3D format
#'             \item csr -- Accelrys/MSI Quanta CSR format [Write-only]
#'             \item cssr -- CSD CSSR format [Write-only]
#'             \item ct -- ChemDraw Connection Table format
#'             \item cub -- Gaussian cube format
#'             \item cube -- Gaussian cube format
#'             \item dat -- Generic Output file format [Read-only]
#'             \item dmol -- DMol3 coordinates format
#'             \item dx -- OpenDX cube format for APBS
#'             \item ent -- Protein Data Bank format
#'             \item fa -- FASTA format
#'             \item fasta -- FASTA format
#'             \item fch -- Gaussian formatted checkpoint file format [Read-only]
#'             \item fchk -- Gaussian formatted checkpoint file format [Read-only]
#'             \item fck -- Gaussian formatted checkpoint file format [Read-only]
#'             \item feat -- Feature format
#'             \item fh -- Fenske-Hall Z-Matrix format [Write-only]
#'             \item fhiaims -- FHIaims XYZ format
#'             \item fix -- SMILES FIX format [Write-only]
#'             \item fpt -- Fingerprint format [Write-only]
#'             \item fract -- Free Form Fractional format
#'             \item fs -- Fastsearch format
#'             \item fsa -- FASTA format
#'             \item g03 -- Gaussian Output [Read-only]
#'             \item g09 -- Gaussian Output [Read-only]
#'             \item g92 -- Gaussian Output [Read-only]
#'             \item g94 -- Gaussian Output [Read-only]
#'             \item g98 -- Gaussian Output [Read-only]
#'             \item gal -- Gaussian Output [Read-only]
#'             \item gam -- GAMESS Output [Read-only]
#'             \item gamess -- GAMESS Output [Read-only]
#'             \item gamin -- GAMESS Input
#'             \item gamout -- GAMESS Output [Read-only]
#'             \item gau -- Gaussian 98/03 Input [Write-only]
#'             \item gjc -- Gaussian 98/03 Input [Write-only]
#'             \item gjf -- Gaussian 98/03 Input [Write-only]
#'             \item got -- GULP format [Read-only]
#'             \item gpr -- Ghemical format
#'             \item gr96 -- GROMOS96 format [Write-only]
#'             \item gro -- GRO format
#'             \item gukin -- GAMESS-UK Input
#'             \item gukout -- GAMESS-UK Output
#'             \item gzmat -- Gaussian Z-Matrix Input
#'             \item hin -- HyperChem HIN format
#'             \item HISTORY -- DL-POLY HISTORY [Read-only]
#'             \item inchi -- InChI format
#'             \item inchikey -- InChIKey [Write-only]
#'             \item inp -- GAMESS Input
#'             \item ins -- ShelX format [Read-only]
#'             \item jin -- Jaguar input format [Write-only]
#'             \item jout -- Jaguar output format [Read-only]
#'             \item k -- Compare molecules using InChI [Write-only]
#'             \item log -- Generic Output file format [Read-only]
#'             \item mcdl -- MCDL format
#'             \item mcif -- Macromolecular Crystallographic Info
#'             \item mdl -- MDL MOL format
#'             \item ml2 -- Sybyl Mol2 format
#'             \item mmcif -- Macromolecular Crystallographic Info
#'             \item mmd -- MacroModel format
#'             \item mmod -- MacroModel format
#'             \item mna -- Multilevel Neighborhoods of Atoms (MNA) [Write-only]
#'             \item mol -- MDL MOL format
#'             \item mol2 -- Sybyl Mol2 format
#'             \item mold -- Molden format
#'             \item molden -- Molden format
#'             \item molf -- Molden format
#'             \item molreport -- Open Babel molecule report [Write-only]
#'             \item moo -- MOPAC Output format [Read-only]
#'             \item mop -- MOPAC Cartesian format
#'             \item mopcrt -- MOPAC Cartesian format
#'             \item mopin -- MOPAC Internal
#'             \item mopout -- MOPAC Output format [Read-only]
#'             \item mp -- Molpro input format [Write-only]
#'             \item mpc -- MOPAC Cartesian format
#'             \item mpd -- MolPrint2D format [Write-only]
#'             \item mpo -- Molpro output format [Read-only]
#'             \item mpqc -- MPQC output format [Read-only]
#'             \item mpqcin -- MPQC simplified input format [Write-only]
#'             \item mrv -- Chemical Markup Language
#'             \item msi -- Accelrys/MSI Cerius II MSI format [Read-only]
#'             \item msms -- M.F. Sanner's MSMS input format [Write-only]
#'             \item nul -- Outputs nothing [Write-only]
#'             \item nw -- NWChem input format [Write-only]
#'             \item nwo -- NWChem output format [Read-only]
#'             \item out -- Generic Output file format [Read-only]
#'             \item outmol -- DMol3 coordinates format
#'             \item output -- Generic Output file format [Read-only]
#'             \item pc -- PubChem format [Read-only]
#'             \item pcm -- PCModel Format
#'             \item pdb -- Protein Data Bank format
#'             \item pdbqt -- AutoDock PDQBT format
#'             \item png -- PNG 2D depiction
#'             \item POSCAR -- VASP format [Read-only]
#'             \item pov -- POV-Ray input format [Write-only]
#'             \item pqr -- PQR format
#'             \item pqs -- Parallel Quantum Solutions format
#'             \item prep -- Amber Prep format [Read-only]
#'             \item pwscf -- PWscf format [Read-only]
#'             \item qcin -- Q-Chem input format [Write-only]
#'             \item qcout -- Q-Chem output format [Read-only]
#'             \item report -- Open Babel report format [Write-only]
#'             \item res -- ShelX format [Read-only]
#'             \item rsmi -- Reaction SMILES format
#'             \item rxn -- MDL RXN format
#'             \item sd -- MDL MOL format
#'             \item sdf -- MDL MOL format
#'             \item smi -- SMILES format
#'             \item smiles -- SMILES format
#'             \item svg -- SVG 2D depiction [Write-only]
#'             \item sy2 -- Sybyl Mol2 format
#'             \item t41 -- ADF TAPE41 format [Read-only]
#'             \item tdd -- Thermo format
#'             \item text -- Read and write raw text
#'             \item therm -- Thermo format
#'             \item tmol -- TurboMole Coordinate format
#'             \item txt -- Title format
#'             \item txyz -- Tinker XYZ format
#'             \item unixyz -- UniChem XYZ format
#'             \item vmol -- ViewMol format
#'             \item xed -- XED format [Write-only]
#'             \item xml -- General XML format [Read-only]
#'             \item xsf -- XCrySDen Structure Format [Read-only]
#'             \item xyz -- XYZ cartesian coordinates format
#'             \item yob -- YASARA.org YOB format
#'             \item zin -- ZINDO input format [Write-only]
#'             }
#' 
#' @examples
#' \dontrun{
#' convMolFormat(infile = system.file('sysdata/OptAA3d.sdf', package = 'Rcpi'), 
#'               outfile = 'aa.smi', from = 'sdf', to = 'smiles')  # SDF to SMILES
#' convMolFormat(infile = 'aa.smi', outfile = 'aa.mop', 
#'               from = 'smiles', to = 'mop')  # SMILES to MOPAC Cartesian format}
#' 

convMolFormat = function (infile, outfile, from, to) {
  
  ChemmineOB.exist = suppressMessages(require(ChemmineOB, quietly = TRUE))
  if ( !ChemmineOB.exist ) stop('The ChemmineOB package is required to run extractDrugOBFP2(). Please follow the instructions on http://www.bioconductor.org/packages/release/bioc/html/ChemmineOB.html to install it.')
  
  invisible(.Call('ob_convert_file', as.character(from), as.character(to), 
                  as.character(infile), as.character(outfile), 
                  PACKAGE = 'ChemmineOB'))
  
}
