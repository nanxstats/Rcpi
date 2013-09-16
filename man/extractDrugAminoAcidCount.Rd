\name{extractDrugAminoAcidCount}
\alias{extractDrugAminoAcidCount}
\title{Calculates the Number of Amino Acids Descriptor}
\usage{
  extractDrugAminoAcidCount(molecules, silent = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

  \item{silent}{Logical. Whether the calculating process
  should be shown or not, default is \code{TRUE}.}
}
\value{
  A data frame, each row represents one of the molecules,
  each column represents one feature, This function returns
  20 columns named \code{nA}, \code{nR}, \code{nN},
  \code{nD}, \code{nC}, \code{nF}, \code{nQ}, \code{nE},
  \code{nG}, \code{nH}, \code{nI}, \code{nP}, \code{nL}
  \code{nK}, \code{nM}, \code{nS}, \code{nT}, \code{nY}
  \code{nV}, \code{nW}.
}
\description{
  Calculates the Number of Amino Acids Descriptor
}
\details{
  Calculates the number of each amino acids (total 20
  types) found in the molecues.
}
\examples{
\dontrun{
mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
extractDrugAminoAcidCount(mol)}
}
\author{
  Xiao Nan <\url{http://www.road2stat.com}>
}
\keyword{Acid}
\keyword{Amino}
\keyword{Count}
\keyword{extractDrugAminoAcidCount}

