\name{extractDrugAtomCount}
\alias{extractDrugAtomCount}
\title{Calculates the Number of Atom Descriptor}
\usage{
  extractDrugAtomCount(molecules, silent = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

  \item{silent}{Logical. Whether the calculating process
  should be shown or not, default is \code{TRUE}.}
}
\value{
  A data frame, each row represents one of the molecules,
  each column represents one feature, This function returns
  one column named \code{nAtom}.
}
\description{
  Calculates the Number of Atom Descriptor
}
\details{
  Calculates the number of atoms of a certain element type
  in a molecule. By default it returns the count of all
  atoms.
}
\examples{
\dontrun{
mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
extractDrugAtomCount(mol)}
}
\author{
  Xiao Nan <\url{http://www.road2stat.com}>
}
\keyword{Atom}
\keyword{Count}
\keyword{extractDrugAtomCount}

