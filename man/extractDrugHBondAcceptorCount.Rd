\name{extractDrugHBondAcceptorCount}
\alias{extractDrugHBondAcceptorCount}
\title{Descriptor that Calculates the Number of Hydrogen Bond Acceptors}
\usage{
  extractDrugHBondAcceptorCount(molecules, silent = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

  \item{silent}{Logical. Whether the calculating process
  should be shown or not, default is \code{TRUE}.}
}
\value{
  A data frame, each row represents one of the molecules,
  each column represents one feature, This function returns
  one column named \code{nHBAcc}.
}
\description{
  Descriptor that Calculates the Number of Hydrogen Bond
  Acceptors
}
\details{
  This descriptor calculates the number of hydrogen bond
  acceptors using a slightly simplified version of the
  PHACIR atom types. The following groups are counted as
  hydrogen bond acceptors: any oxygen where the formal
  charge of the oxygen is non-positive (i.e. formal charge
  <= 0) except \enumerate{ \item an aromatic ether oxygen
  (i.e. an ether oxygen that is adjacent to at least one
  aromatic carbon) \item an oxygen that is adjacent to a
  nitrogen } and any nitrogen where the formal charge of
  the nitrogen is non-positive (i.e. formal charge <= 0)
  except a nitrogen that is adjacent to an oxygen.
}
\examples{
\dontrun{
mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
extractDrugHBondAcceptorCount(mol)}
}
\author{
  Xiao Nan <\url{http://www.road2stat.com}>
}
\keyword{Acceptor}
\keyword{Count}
\keyword{extractDrugHBondAcceptorCount}
\keyword{HBond}

