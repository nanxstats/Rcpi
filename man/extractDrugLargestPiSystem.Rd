\name{extractDrugLargestPiSystem}
\alias{extractDrugLargestPiSystem}
\title{Descriptor that Calculates the Number of Atoms in the Largest Pi Chain}
\usage{
extractDrugLargestPiSystem(molecules, silent = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

  \item{silent}{Logical. Whether the calculating process
  should be shown or not, default is \code{TRUE}.}
}
\value{
A data frame, each row represents one of the molecules,
each column represents one feature, This function returns
one column named \code{nAtomP}.
}
\description{
Descriptor that Calculates the Number of Atoms in the
Largest Pi Chain
}
\details{
This descriptor calculates the number of atoms in the
largest pi chain.
}
\examples{
\dontrun{
mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
extractDrugLargestPiSystem(mol)}
}
\author{
Nan Xiao <\url{http://www.road2stat.com}>
}
\keyword{Chain}
\keyword{Largest}
\keyword{Pi}
\keyword{extractDrugLargestPiSystem}

