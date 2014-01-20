\name{extractDrugAromaticBondsCount}
\alias{extractDrugAromaticBondsCount}
\title{Calculates the Number of Aromatic Bonds Descriptor}
\usage{
extractDrugAromaticBondsCount(molecules, silent = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

  \item{silent}{Logical. Whether the calculating process
  should be shown or not, default is \code{TRUE}.}
}
\value{
A data frame, each row represents one of the molecules,
each column represents one feature, This function returns
one column named \code{nAromBond}.
}
\description{
Calculates the Number of Aromatic Bonds Descriptor
}
\details{
Calculates the number of aromatic bonds of a molecule.
}
\examples{
\dontrun{
mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
extractDrugAromaticBondsCount(mol)}
}
\author{
Nan Xiao <\url{http://www.road2stat.com}>
}
\keyword{Aromatic}
\keyword{Bond}
\keyword{Count}
\keyword{extractDrugAromaticBondsCount}

