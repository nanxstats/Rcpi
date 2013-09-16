\name{extractDrugZagrebIndex}
\alias{extractDrugZagrebIndex}
\title{Descriptor that Calculates the Sum of the Squared Atom Degrees of All Heavy Atoms}
\usage{
  extractDrugZagrebIndex(molecules, silent = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

  \item{silent}{Logical. Whether the calculating process
  should be shown or not, default is \code{TRUE}.}
}
\value{
  A data frame, each row represents one of the molecules,
  each column represents one feature, This function returns
  one column named \code{Zagreb}.
}
\description{
  Descriptor that Calculates the Sum of the Squared Atom
  Degrees of All Heavy Atoms
}
\details{
  Zagreb index: the sum of the squares of atom degree over
  all heavy atoms \code{i}.
}
\examples{
\dontrun{
mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
extractDrugZagrebIndex(mol)}
}
\author{
  Xiao Nan <\url{http://www.road2stat.com}>
}
\keyword{extractDrugZagrebIndex}
\keyword{Zagreb}

