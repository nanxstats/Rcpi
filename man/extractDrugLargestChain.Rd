\name{extractDrugLargestChain}
\alias{extractDrugLargestChain}
\title{Descriptor that Calculates the Number of Atoms in the Largest Chain}
\usage{
  extractDrugLargestChain(molecules, silent = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

  \item{silent}{Logical. Whether the calculating process
  should be shown or not, default is \code{TRUE}.}
}
\value{
  A data frame, each row represents one of the molecules,
  each column represents one feature, This function returns
  one column named \code{nAtomLC}.
}
\description{
  Descriptor that Calculates the Number of Atoms in the
  Largest Chain
}
\details{
  This descriptor calculates the number of atoms in the
  largest chain. Note that a chain exists if there are two
  or more atoms. Thus single atom molecules will return
  \code{0}.
}
\examples{
\dontrun{
mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
extractDrugLargestChain(mol)}
}
\author{
  Xiao Nan <\url{http://www.road2stat.com}>
}
\keyword{Chain}
\keyword{extractDrugLargestChain}
\keyword{Largest}

