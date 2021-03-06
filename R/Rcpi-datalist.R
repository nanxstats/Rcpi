#' AAindex Data of 544 Physicochemical and Biological Properties
#' for 20 Amino Acids
#'
#' AAindex Data of 544 Physicochemical and Biological Properties
#' for 20 Amino Acids
#'
#' The data was extracted from the AAindex1 database ver 9.1
#' (\url{ftp://ftp.genome.jp/pub/db/community/aaindex/aaindex1}) as of
#' November 2012 (Data Last Modified 2006-08-14).
#'
#' With this data, users could investigate each property's accession number
#' and other details. Visit \url{http://www.genome.jp/dbget/aaindex.html}
#' for more information.
#'
#' @docType data
#' @name AAindex
#' @return AAindex data
#' @aliases AAindex
#' @keywords AAindex aaindex datasets
#' @examples
#' data(AAindex)
#'
NULL

#' OptAA3d.sdf - 20 Amino Acids Optimized with MOE 2011.10 (Semiempirical AM1)
#'
#' OptAA3d.sdf - 20 Amino Acids Optimized with MOE 2011.10 (Semiempirical AM1)
#'
#' OptAA3d.sdf - 20 Amino Acids Optimized with MOE 2011.10 (Semiempirical AM1)
#'
#' @docType data
#' @name OptAA3d
#' @return OptAA3d data
#' @aliases OptAA3d
#' @keywords OptAA3d Amino Acid
#' @examples
#' # This example requires the rcdk package
#' # library('rcdk')
#' # optaa3d = load.molecules(system.file('sysdata/OptAA3d.sdf', package = 'Rcpi'))
#' # view.molecule.2d(optaa3d[[1]])  # view the first amino acid
NULL

#' Meta Information for the 20 Amino Acids
#'
#' Meta Information for the 20 Amino Acids
#'
#' This dataset includes the meta information of
#' the 20 amino acids used for the 2D and 3D descriptor
#' calculation in this package. Each column represents:
#' \itemize{
#' \item{\code{AAName}} {Amino Acid Name}
#' \item{\code{Short}} {One-Letter Representation}
#' \item{\code{Abbreviation}} {Three-Letter Representation}
#' \item{\code{mol}} {SMILE Representation}
#' \item{\code{PUBCHEM_COMPOUND_CID}} {PubChem CID for the Amino Acid}
#' \item{\code{PUBCHEM_LINK}} {PubChem Link for the Amino Acid}
#' }
#'
#' @docType data
#' @name AAMetaInfo
#' @return AAMetaInfo data
#' @aliases AAMetaInfo
#' @keywords AAMetaInfo
#' @examples
#' data(AAMetaInfo)
#'
NULL

#' 2D Descriptors for 20 Amino Acids calculated by MOE 2011.10
#'
#' 2D Descriptors for 20 Amino Acids calculated by MOE 2011.10
#'
#' This dataset includes the 2D descriptors of
#' the 20 amino acids calculated by MOE 2011.10
#' used for scales extraction in this package.
#'
#' @docType data
#' @name AAMOE2D
#' @return AAMOE2D data
#' @aliases AAMOE2D
#' @keywords AAMOE2D
#' @examples
#' data(AAMOE2D)
#'
NULL

#' 3D Descriptors for 20 Amino Acids calculated by MOE 2011.10
#'
#' 3D Descriptors for 20 Amino Acids calculated by MOE 2011.10
#'
#' This dataset includes the 3D descriptors of the 20 amino acids
#' calculated by MOE 2011.10 used for scales extraction in this package.
#' All amino acid molecules had also been optimized with MOE (semiempirical AM1)
#' before calculating these 3D descriptors.
#' The SDF file containing the information of the optimized amino acid molecules
#' is included in this package. See \code{\link{OptAA3d}} for more information.
#'
#' @docType data
#' @name AAMOE3D
#' @return AAMOE3D data
#' @aliases AAMOE3D
#' @keywords AAMOE3D
#' @examples
#' data(AAMOE3D)
#'
NULL

#' CPSA Descriptors for 20 Amino Acids calculated by Discovery Studio
#'
#' CPSA Descriptors for 20 Amino Acids calculated by Discovery Studio
#'
#' This dataset includes the CPSA descriptors of the 20 amino acids
#' calculated by Discovery Studio (version 2.5) used for scales extraction
#' in this package.
#' All amino acid molecules had also been optimized with
#' MOE 2011.10 (semiempirical AM1)
#' before calculating these CPSA descriptors.
#' The SDF file containing the information of the optimized amino acid molecules
#' is included in this package. See \code{\link{OptAA3d}} for more information.
#'
#' @docType data
#' @name AACPSA
#' @return AACPSA data
#' @aliases AACPSA
#' @keywords AACPSA
#' @examples
#' data(AACPSA)
#'
NULL

#' All 2D Descriptors for 20 Amino Acids calculated by Dragon
#'
#' All 2D Descriptors for 20 Amino Acids calculated by Dragon
#'
#' This dataset includes all the 2D descriptors of
#' the 20 amino acids calculated by Dragon (version 5.4)
#' used for scales extraction in this package.
#'
#' @docType data
#' @name AADescAll
#' @return AADescAll data
#' @aliases AADescAll
#' @keywords AADescAll
#' @examples
#' data(AADescAll)
#'
NULL



#' 2D Autocorrelations Descriptors for 20 Amino Acids calculated by Dragon
#'
#' 2D Autocorrelations Descriptors for 20 Amino Acids calculated by Dragon
#'
#' This dataset includes the 2D autocorrelations descriptors of
#' the 20 amino acids calculated by Dragon (version 5.4)
#' used for scales extraction in this package.
#'
#' @docType data
#' @name AA2DACOR
#' @return AA2DACOR data
#' @aliases AA2DACOR
#' @keywords AA2DACOR
#' @examples
#' data(AA2DACOR)
#'
NULL

#' 3D-MoRSE Descriptors for 20 Amino Acids calculated by Dragon
#'
#' 3D-MoRSE Descriptors for 20 Amino Acids calculated by Dragon
#'
#' This dataset includes the 3D-MoRSE descriptors of
#' the 20 amino acids calculated by Dragon (version 5.4)
#' used for scales extraction in this package.
#'
#' @docType data
#' @name AA3DMoRSE
#' @return AA3DMoRSE data
#' @aliases AA3DMoRSE
#' @keywords AA3DMoRSE
#' @examples
#' data(AA3DMoRSE)
#'
NULL

#' Atom-Centred Fragments Descriptors for 20 Amino Acids calculated by Dragon
#'
#' Atom-Centred Fragments Descriptors for 20 Amino Acids calculated by Dragon
#'
#' This dataset includes the atom-centred fragments descriptors of
#' the 20 amino acids calculated by Dragon (version 5.4)
#' used for scales extraction in this package.
#'
#' @docType data
#' @name AAACF
#' @return AAACF data
#' @aliases AAACF
#' @keywords AAACF
#' @examples
#' data(AAACF)
#'
NULL

#' Burden Eigenvalues Descriptors for 20 Amino Acids calculated by Dragon
#'
#' Burden Eigenvalues Descriptors for 20 Amino Acids calculated by Dragon
#'
#' This dataset includes the Burden eigenvalues descriptors of
#' the 20 amino acids calculated by Dragon (version 5.4)
#' used for scales extraction in this package.
#'
#' @docType data
#' @name AABurden
#' @return AABurden data
#' @aliases AABurden
#' @keywords AABurden
#' @examples
#' data(AABurden)
#'
NULL

#' Connectivity Indices Descriptors for 20 Amino Acids calculated by Dragon
#'
#' Connectivity Indices Descriptors for 20 Amino Acids calculated by Dragon
#'
#' This dataset includes the connectivity indices descriptors of
#' the 20 amino acids calculated by Dragon (version 5.4)
#' used for scales extraction in this package.
#'
#' @docType data
#' @name AAConn
#' @return AAConn data
#' @aliases AAConn
#' @keywords AAConn
#' @examples
#' data(AAConn)
#'
NULL

#' Constitutional Descriptors for 20 Amino Acids calculated by Dragon
#'
#' Constitutional Descriptors for 20 Amino Acids calculated by Dragon
#'
#' This dataset includes the constitutional descriptors of
#' the 20 amino acids calculated by Dragon (version 5.4)
#' used for scales extraction in this package.
#'
#' @docType data
#' @name AAConst
#' @return AAConst data
#' @aliases AAConst
#' @keywords AAConst
#' @examples
#' data(AAConst)
#'
NULL

#' Edge Adjacency Indices Descriptors for 20 Amino Acids calculated by Dragon
#'
#' Edge Adjacency Indices Descriptors for 20 Amino Acids calculated by Dragon
#'
#' This dataset includes the edge adjacency indices descriptors of
#' the 20 amino acids calculated by Dragon (version 5.4)
#' used for scales extraction in this package.
#'
#' @docType data
#' @name AAEdgeAdj
#' @return AAEdgeAdj data
#' @aliases AAEdgeAdj
#' @keywords AAEdgeAdj
#' @examples
#' data(AAEdgeAdj)
#'
NULL

#' Eigenvalue-Based Indices Descriptors for 20 Amino Acids calculated by Dragon
#'
#' Eigenvalue-Based Indices Descriptors for 20 Amino Acids calculated by Dragon
#'
#' This dataset includes the eigenvalue-based indices descriptors of
#' the 20 amino acids calculated by Dragon (version 5.4)
#' used for scales extraction in this package.
#'
#' @docType data
#' @name AAEigIdx
#' @return AAEigIdx data
#' @aliases AAEigIdx
#' @keywords AAEigIdx
#' @examples
#' data(AAEigIdx)
#'
NULL

#' Functional Group Counts Descriptors for 20 Amino Acids calculated by Dragon
#'
#' Functional Group Counts Descriptors for 20 Amino Acids calculated by Dragon
#'
#' This dataset includes the functional group counts descriptors of
#' the 20 amino acids calculated by Dragon (version 5.4)
#' used for scales extraction in this package.
#'
#' @docType data
#' @name AAFGC
#' @return AAFGC data
#' @aliases AAFGC
#' @keywords AAFGC
#' @examples
#' data(AAFGC)
#'
NULL

#' Geometrical Descriptors for 20 Amino Acids calculated by Dragon
#'
#' Geometrical Descriptors for 20 Amino Acids calculated by Dragon
#'
#' This dataset includes the geometrical descriptors of
#' the 20 amino acids calculated by Dragon (version 5.4)
#' used for scales extraction in this package.
#'
#' @docType data
#' @name AAGeom
#' @return AAGeom data
#' @aliases AAGeom
#' @keywords AAGeom
#' @examples
#' data(AAGeom)
#'
NULL

#' GETAWAY Descriptors for 20 Amino Acids calculated by Dragon
#'
#' GETAWAY Descriptors for 20 Amino Acids calculated by Dragon
#'
#' This dataset includes the GETAWAY descriptors of
#' the 20 amino acids calculated by Dragon (version 5.4)
#' used for scales extraction in this package.
#'
#' @docType data
#' @name AAGETAWAY
#' @return AAGETAWAY data
#' @aliases AAGETAWAY
#' @keywords AAGETAWAY
#' @examples
#' data(AAGETAWAY)
#'
NULL

#' Information Indices Descriptors for 20 Amino Acids calculated by Dragon
#'
#' Information Indices Descriptors for 20 Amino Acids calculated by Dragon
#'
#' This dataset includes the information indices descriptors of
#' the 20 amino acids calculated by Dragon (version 5.4)
#' used for scales extraction in this package.
#'
#' @docType data
#' @name AAInfo
#' @return AAInfo data
#' @aliases AAInfo
#' @keywords AAInfo
#' @examples
#' data(AAInfo)
#'
NULL

#' Molecular Properties Descriptors for 20 Amino Acids calculated by Dragon
#'
#' Molecular Properties Descriptors for 20 Amino Acids calculated by Dragon
#'
#' This dataset includes the molecular properties descriptors of
#' the 20 amino acids calculated by Dragon (version 5.4)
#' used for scales extraction in this package.
#'
#' @docType data
#' @name AAMolProp
#' @return AAMolProp data
#' @aliases AAMolProp
#' @keywords AAMolProp
#' @examples
#' data(AAMolProp)
#'
NULL

#' Randic Molecular Profiles Descriptors for 20 Amino Acids calculated by Dragon
#'
#' Randic Molecular Profiles Descriptors for 20 Amino Acids calculated by Dragon
#'
#' This dataset includes the Randic molecular profiles descriptors of
#' the 20 amino acids calculated by Dragon (version 5.4)
#' used for scales extraction in this package.
#'
#' @docType data
#' @name AARandic
#' @return AARandic data
#' @aliases AARandic
#' @keywords AARandic
#' @examples
#' data(AARandic)
#'
NULL

#' RDF Descriptors for 20 Amino Acids calculated by Dragon
#'
#' RDF Descriptors for 20 Amino Acids calculated by Dragon
#'
#' This dataset includes the RDF descriptors of
#' the 20 amino acids calculated by Dragon (version 5.4)
#' used for scales extraction in this package.
#'
#' @docType data
#' @name AARDF
#' @return AARDF data
#' @aliases AARDF
#' @keywords AARDF
#' @examples
#' data(AARDF)
#'
NULL

#' Topological Descriptors for 20 Amino Acids calculated by Dragon
#'
#' Topological Descriptors for 20 Amino Acids calculated by Dragon
#'
#' This dataset includes the topological descriptors of
#' the 20 amino acids calculated by Dragon (version 5.4)
#' used for scales extraction in this package.
#'
#' @docType data
#' @name AATopo
#' @return AATopo data
#' @aliases AATopo
#' @keywords AATopo
#' @examples
#' data(AATopo)
#'
NULL

#' Topological Charge Indices Descriptors for 20 Amino Acids
#' calculated by Dragon
#'
#' Topological Charge Indices Descriptors for 20 Amino Acids
#' calculated by Dragon
#'
#' This dataset includes the topological charge indices descriptors of
#' the 20 amino acids calculated by Dragon (version 5.4)
#' used for scales extraction in this package.
#'
#' @docType data
#' @name AATopoChg
#' @return AATopoChg data
#' @aliases AATopoChg
#' @keywords AATopoChg
#' @examples
#' data(AATopoChg)
#'
NULL

#' Walk and Path Counts Descriptors for 20 Amino Acids calculated by Dragon
#'
#' Walk and Path Counts Descriptors for 20 Amino Acids calculated by Dragon
#'
#' This dataset includes the walk and path counts descriptors of
#' the 20 amino acids calculated by Dragon (version 5.4)
#' used for scales extraction in this package.
#'
#' @docType data
#' @name AAWalk
#' @return AAWalk data
#' @aliases AAWalk
#' @keywords AAWalk
#' @examples
#' data(AAWalk)
#'
NULL

#' WHIM Descriptors for 20 Amino Acids calculated by Dragon
#'
#' WHIM Descriptors for 20 Amino Acids calculated by Dragon
#'
#' This dataset includes the WHIM descriptors of
#' the 20 amino acids calculated by Dragon (version 5.4)
#' used for scales extraction in this package.
#'
#' @docType data
#' @name AAWHIM
#' @return AAWHIM data
#' @aliases AAWHIM
#' @keywords AAWHIM
#' @examples
#' data(AAWHIM)
#'
NULL



#' BLOSUM45 Matrix for 20 Amino Acids
#'
#' BLOSUM45 Matrix for 20 Amino Acids
#'
#' BLOSUM45 Matrix for the 20 amino acids. The matrix was extracted from the
#' \code{Biostrings} package of Bioconductor.
#'
#' @docType data
#' @name AABLOSUM45
#' @return AABLOSUM45 data
#' @aliases AABLOSUM45
#' @keywords AABLOSUM45 BLOSUM datasets
#' @examples
#' data(AABLOSUM45)
#'
NULL

#' BLOSUM50 Matrix for 20 Amino Acids
#'
#' BLOSUM50 Matrix for 20 Amino Acids
#'
#' BLOSUM50 Matrix for the 20 amino acids. The matrix was extracted from the
#' \code{Biostrings} package of Bioconductor.
#'
#' @docType data
#' @name AABLOSUM50
#' @return AABLOSUM50 data
#' @aliases AABLOSUM50
#' @keywords AABLOSUM50 BLOSUM datasets
#' @examples
#' data(AABLOSUM50)
#'
NULL

#' BLOSUM62 Matrix for 20 Amino Acids
#'
#' BLOSUM62 Matrix for 20 Amino Acids
#'
#' BLOSUM62 Matrix for the 20 amino acids. The matrix was extracted from the
#' \code{Biostrings} package of Bioconductor.
#'
#' @docType data
#' @name AABLOSUM62
#' @return AABLOSUM62 data
#' @aliases AABLOSUM62
#' @keywords AABLOSUM62 BLOSUM datasets
#' @examples
#' data(AABLOSUM62)
#'
NULL

#' BLOSUM80 Matrix for 20 Amino Acids
#'
#' BLOSUM80 Matrix for 20 Amino Acids
#'
#' BLOSUM80 Matrix for the 20 amino acids. The matrix was extracted from the
#' \code{Biostrings} package of Bioconductor.
#'
#' @docType data
#' @name AABLOSUM80
#' @return AABLOSUM80 data
#' @aliases AABLOSUM80
#' @keywords AABLOSUM80 BLOSUM datasets
#' @examples
#' data(AABLOSUM80)
#'
NULL

#' BLOSUM100 Matrix for 20 Amino Acids
#'
#' BLOSUM100 Matrix for 20 Amino Acids
#'
#' BLOSUM100 Matrix for the 20 amino acids. The matrix was extracted from the
#' \code{Biostrings} package of Bioconductor.
#'
#' @docType data
#' @name AABLOSUM100
#' @return AABLOSUM100 data
#' @aliases AABLOSUM100
#' @keywords AABLOSUM100 BLOSUM datasets
#' @examples
#' data(AABLOSUM100)
#'
NULL

#' PAM30 Matrix for 20 Amino Acids
#'
#' PAM30 Matrix for 20 Amino Acids
#'
#' PAM30 Matrix for the 20 amino acids. The matrix was extracted from the
#' \code{Biostrings} package of Bioconductor.
#'
#' @docType data
#' @name AAPAM30
#' @return AAPAM30 data
#' @aliases AAPAM30
#' @keywords AAPAM30 PAM datasets
#' @examples
#' data(AAPAM30)
#'
NULL

#' PAM40 Matrix for 20 Amino Acids
#'
#' PAM40 Matrix for 20 Amino Acids
#'
#' PAM40 Matrix for the 20 amino acids. The matrix was extracted from the
#' \code{Biostrings} package of Bioconductor.
#'
#' @docType data
#' @name AAPAM40
#' @return AAPAM40 data
#' @aliases AAPAM40
#' @keywords AAPAM40 PAM datasets
#' @examples
#' data(AAPAM40)
#'
NULL

#' PAM70 Matrix for 20 Amino Acids
#'
#' PAM70 Matrix for 20 Amino Acids
#'
#' PAM70 Matrix for the 20 amino acids. The matrix was extracted from the
#' \code{Biostrings} package of Bioconductor.
#'
#' @docType data
#' @name AAPAM70
#' @return AAPAM70 data
#' @aliases AAPAM70
#' @keywords AAPAM70 PAM datasets
#' @examples
#' data(AAPAM70)
#'
NULL

#' PAM120 Matrix for 20 Amino Acids
#'
#' PAM120 Matrix for 20 Amino Acids
#'
#' PAM120 Matrix for the 20 amino acids. The matrix was extracted from the
#' \code{Biostrings} package of Bioconductor.
#'
#' @docType data
#' @name AAPAM120
#' @return AAPAM120 data
#' @aliases AAPAM120
#' @keywords AAPAM120 PAM datasets
#' @examples
#' data(AAPAM120)
#'
NULL

#' PAM250 Matrix for 20 Amino Acids
#'
#' PAM250 Matrix for 20 Amino Acids
#'
#' PAM250 Matrix for the 20 amino acids. The matrix was extracted from the
#' \code{Biostrings} package of Bioconductor.
#'
#' @docType data
#' @name AAPAM250
#' @return AAPAM250 data
#' @aliases AAPAM250
#' @keywords AAPAM250 PAM datasets
#' @examples
#' data(AAPAM250)
#'
NULL
