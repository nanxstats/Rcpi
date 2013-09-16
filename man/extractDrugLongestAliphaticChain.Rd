\name{extractDrugLongestAliphaticChain}
\alias{extractDrugLongestAliphaticChain}
\title{Descriptor that Calculates the Number of Atoms in the Longest Aliphatic Chain}
\usage{
  extractDrugLongestAliphaticChain(molecules,
    silent = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

  \item{silent}{Logical. Whether the calculating process
  should be shown or not, default is \code{TRUE}.}
}
\value{
  A data frame, each row represents one of the molecules,
  each column represents one feature, This function returns
  one column named \code{nAtomLAC}.
}
\description{
  Descriptor that Calculates the Number of Atoms in the
  Longest Aliphatic Chain
}
\details{
  This descriptor calculates the number of atoms in the
  longest aliphatic chain.
}
\examples{
\dontrun{
mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
extractDrugLongestAliphaticChain(mol)}
}
\author{
  Xiao Nan <\url{http://www.road2stat.com}>
}
\keyword{Aliphatic}
\keyword{Chain}
\keyword{extractDrugLongestAliphaticChain}
\keyword{Longest}

