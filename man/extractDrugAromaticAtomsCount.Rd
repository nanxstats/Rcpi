\name{extractDrugAromaticAtomsCount}
\alias{extractDrugAromaticAtomsCount}
\title{Calculates the Number of Aromatic Atoms Descriptor}
\usage{
  extractDrugAromaticAtomsCount(molecules, silent = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

  \item{silent}{Logical. Whether the calculating process
  should be shown or not, default is \code{TRUE}.}
}
\value{
  A data frame, each row represents one of the molecules,
  each column represents one feature, This function returns
  one column named \code{naAromAtom}.
}
\description{
  Calculates the Number of Aromatic Atoms Descriptor
}
\details{
  Calculates the number of aromatic atoms of a molecule.
}
\examples{
\dontrun{
mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
extractDrugAromaticAtomsCount(mol)}
}
\author{
  Xiao Nan <\url{http://www.road2stat.com}>
}
\keyword{Aromatic}
\keyword{Atoms}
\keyword{Count}
\keyword{extractDrugAromaticAtomsCount}

