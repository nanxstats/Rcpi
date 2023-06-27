#' Descriptor that Counts the Number of Occurrences of the E-State Fragments
#'
#' Descriptor that Counts the Number of Occurrences of the E-State Fragments
#'
#' A fragment count descriptor that uses e-state fragments.
#' Traditionally the e-state descriptors identify the relevant
#' fragments and then evaluate the actual e-state value.
#' However it has been shown in Butina et al.
#' that simply using the counts of the e-state fragments can
#' lead to QSAR models that exhibit similar performance to those
#' built using the actual e-state indices.
#'
#' Atom typing and aromaticity perception should be
#' performed prior to calling this descriptor.
#' The atom type definitions are taken from Hall et al.
#' The SMARTS definitions were obtained from RDKit.
#'
#' @param molecules Parsed molucule object.
#' @param silent Logical. Whether the calculating process
#' should be shown or not, default is \code{TRUE}.
#'
#' @return A data frame, each row represents one of the molecules,
#' each column represents one feature.
#' This function returns 79 columns:
#' \tabular{ccc}{
#' ID \tab Name \tab Pattern\cr
#' \code{0} \tab \code{khs.sLi} \tab \code{[LiD1]-*}\cr
#' \code{1} \tab \code{khs.ssBe} \tab \code{[BeD2](-*)-*}\cr
#' \code{2} \tab \code{khs.ssssBe} \tab \code{[BeD4](-*)(-*)(-*)-*}\cr
#' \code{3} \tab \code{khs.ssBH} \tab \code{[BD2H](-*)-*}\cr
#' \code{4} \tab \code{khs.sssB} \tab \code{[BD3](-*)(-*)-*}\cr
#' \code{5} \tab \code{khs.ssssB} \tab \code{[BD4](-*)(-*)(-*)-*}\cr
#' \code{6} \tab \code{khs.sCH3} \tab \code{[CD1H3]-*}\cr
#' \code{7} \tab \code{khs.dCH2} \tab \code{[CD1H2]=*}\cr
#' \code{8} \tab \code{khs.ssCH2} \tab \code{[CD2H2](-*)-*}\cr
#' \code{9} \tab \code{khs.tCH} \tab \code{[CD1H]#*}\cr
#' \code{10} \tab \code{khs.dsCH} \tab \code{[CD2H](=*)-*}\cr
#' \code{11} \tab \code{khs.aaCH} \tab \code{[C,c;D2H](:*):*}\cr
#' \code{12} \tab \code{khs.sssCH} \tab \code{[CD3H](-*)(-*)-*}\cr
#' \code{13} \tab \code{khs.ddC} \tab \code{[CD2H0](=*)=*}\cr
#' \code{14} \tab \code{khs.tsC} \tab \code{[CD2H0](#*)-*}\cr
#' \code{15} \tab \code{khs.dssC} \tab \code{[CD3H0](=*)(-*)-*}\cr
#' \code{16} \tab \code{khs.aasC} \tab \code{[C,c;D3H0](:*)(:*)-*}\cr
#' \code{17} \tab \code{khs.aaaC} \tab \code{[C,c;D3H0](:*)(:*):*}\cr
#' \code{18} \tab \code{khs.ssssC} \tab \code{[CD4H0](-*)(-*)(-*)-*}\cr
#' \code{19} \tab \code{khs.sNH3} \tab \code{[ND1H3]-*}\cr
#' \code{20} \tab \code{khs.sNH2} \tab \code{[ND1H2]-*}\cr
#' \code{21} \tab \code{khs.ssNH2} \tab \code{[ND2H2](-*)-*}\cr
#' \code{22} \tab \code{khs.dNH} \tab \code{[ND1H]=*}\cr
#' \code{23} \tab \code{khs.ssNH} \tab \code{[ND2H](-*)-*}\cr
#' \code{24} \tab \code{khs.aaNH} \tab \code{[N,nD2H](:*):*}\cr
#' \code{25} \tab \code{khs.tN} \tab \code{[ND1H0]#*}\cr
#' \code{26} \tab \code{khs.sssNH} \tab \code{[ND3H](-*)(-*)-*}\cr
#' \code{27} \tab \code{khs.dsN} \tab \code{[ND2H0](=*)-*}\cr
#' \code{28} \tab \code{khs.aaN} \tab \code{[N,nD2H0](:*):*}\cr
#' \code{29} \tab \code{khs.sssN} \tab \code{[ND3H0](-*)(-*)-*}\cr
#' \code{30} \tab \code{khs.ddsN} \tab \code{[ND3H0](~[OD1H0])(~[OD1H0])-,:*}\cr
#' \code{31} \tab \code{khs.aasN} \tab \code{[N,nD3H0](:*)(:*)-,:*}\cr
#' \code{32} \tab \code{khs.ssssN} \tab \code{[ND4H0](-*)(-*)(-*)-*}\cr
#' \code{33} \tab \code{khs.sOH} \tab \code{[OD1H]-*}\cr
#' \code{34} \tab \code{khs.dO} \tab \code{[OD1H0]=*}\cr
#' \code{35} \tab \code{khs.ssO} \tab \code{[OD2H0](-*)-*}\cr
#' \code{36} \tab \code{khs.aaO} \tab \code{[O,oD2H0](:*):*}\cr
#' \code{37} \tab \code{khs.sF} \tab \code{[FD1]-*}\cr
#' \code{38} \tab \code{khs.sSiH3} \tab \code{[SiD1H3]-*}\cr
#' \code{39} \tab \code{khs.ssSiH2} \tab \code{[SiD2H2](-*)-*}\cr
#' \code{40} \tab \code{khs.sssSiH} \tab \code{[SiD3H1](-*)(-*)-*}\cr
#' \code{41} \tab \code{khs.ssssSi} \tab \code{[SiD4H0](-*)(-*)(-*)-*}\cr
#' \code{42} \tab \code{khs.sPH2} \tab \code{[PD1H2]-*}\cr
#' \code{43} \tab \code{khs.ssPH} \tab \code{[PD2H1](-*)-*}\cr
#' \code{44} \tab \code{khs.sssP} \tab \code{[PD3H0](-*)(-*)-*}\cr
#' \code{45} \tab \code{khs.dsssP} \tab \code{[PD4H0](=*)(-*)(-*)-*}\cr
#' \code{46} \tab \code{khs.sssssP} \tab \code{[PD5H0](-*)(-*)(-*)(-*)-*}\cr
#' \code{47} \tab \code{khs.sSH} \tab \code{[SD1H1]-*}\cr
#' \code{48} \tab \code{khs.dS} \tab \code{[SD1H0]=*}\cr
#' \code{49} \tab \code{khs.ssS} \tab \code{[SD2H0](-*)-*}\cr
#' \code{50} \tab \code{khs.aaS} \tab \code{[S,sD2H0](:*):*}\cr
#' \code{51} \tab \code{khs.dssS} \tab \code{[SD3H0](=*)(-*)-*}\cr
#' \code{52} \tab \code{khs.ddssS} \tab \code{[SD4H0](~[OD1H0])(~[OD1H0])(-*)-*}\cr
#' \code{53} \tab \code{khs.sCl} \tab \code{[ClD1]-*}\cr
#' \code{54} \tab \code{khs.sGeH3} \tab \code{[GeD1H3](-*)}\cr
#' \code{55} \tab \code{khs.ssGeH2} \tab \code{[GeD2H2](-*)-*}\cr
#' \code{56} \tab \code{khs.sssGeH} \tab \code{[GeD3H1](-*)(-*)-*}\cr
#' \code{57} \tab \code{khs.ssssGe} \tab \code{[GeD4H0](-*)(-*)(-*)-*}\cr
#' \code{58} \tab \code{khs.sAsH2} \tab \code{[AsD1H2]-*}\cr
#' \code{59} \tab \code{khs.ssAsH} \tab \code{[AsD2H1](-*)-*}\cr
#' \code{60} \tab \code{khs.sssAs} \tab \code{[AsD3H0](-*)(-*)-*}\cr
#' \code{61} \tab \code{khs.sssdAs} \tab \code{[AsD4H0](=*)(-*)(-*)-*}\cr
#' \code{62} \tab \code{khs.sssssAs} \tab \code{[AsD5H0](-*)(-*)(-*)(-*)-*}\cr
#' \code{63} \tab \code{khs.sSeH} \tab \code{[SeD1H1]-*}\cr
#' \code{64} \tab \code{khs.dSe} \tab \code{[SeD1H0]=*}\cr
#' \code{65} \tab \code{khs.ssSe} \tab \code{[SeD2H0](-*)-*}\cr
#' \code{66} \tab \code{khs.aaSe} \tab \code{[SeD2H0](:*):*}\cr
#' \code{67} \tab \code{khs.dssSe} \tab \code{[SeD3H0](=*)(-*)-*}\cr
#' \code{68} \tab \code{khs.ddssSe} \tab \code{[SeD4H0](=*)(=*)(-*)-*}\cr
#' \code{69} \tab \code{khs.sBr} \tab \code{[BrD1]-*}\cr
#' \code{70} \tab \code{khs.sSnH3} \tab \code{[SnD1H3]-*}\cr
#' \code{71} \tab \code{khs.ssSnH2} \tab \code{[SnD2H2](-*)-*}\cr
#' \code{72} \tab \code{khs.sssSnH} \tab \code{[SnD3H1](-*)(-*)-*}\cr
#' \code{73} \tab \code{khs.ssssSn} \tab \code{[SnD4H0](-*)(-*)(-*)-*}\cr
#' \code{74} \tab \code{khs.sI} \tab \code{[ID1]-*}\cr
#' \code{75} \tab \code{khs.sPbH3} \tab \code{[PbD1H3]-*}\cr
#' \code{76} \tab \code{khs.ssPbH2} \tab \code{[PbD2H2](-*)-*}\cr
#' \code{77} \tab \code{khs.sssPbH} \tab \code{[PbD3H1](-*)(-*)-*}\cr
#' \code{78} \tab \code{khs.ssssPb} \tab \code{[PbD4H0](-*)(-*)(-*)-*}
#' }
#'
#' @export extractDrugKierHallSmarts
#'
#' @references
#' Butina, D. ,
#' Performance of Kier-Hall E-state Descriptors
#' in Quantitative Structure Activity Relationship (QSAR)
#' Studies of Multifunctional Molecules,
#' Molecules, 2004, 9:1004-1009.
#'
#' Hall, L.H. and Kier, L.B. ,
#' Electrotopological State Indices for Atom Types:
#' A Novel Combination of Electronic, Topological,
#' and Valence State Information,
#' Journal of Chemical Information and Computer Science, 1995, 35:1039-1045.
#'
#' @examples
#' smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
#' \donttest{
#' mol = readMolFromSmi(smi, type = 'mol')
#' dat = extractDrugKierHallSmarts(mol)
#' head(dat)}

extractDrugKierHallSmarts = function (molecules, silent = TRUE) {
    evaluateDescriptor(molecules, type = 'KierHallSmartsDescriptor', silent = silent)
}
