\name{extractDrugVABC}
\alias{extractDrugVABC}
\title{Descriptor that Calculates the Volume of A Molecule}
\usage{
extractDrugVABC(molecules, silent = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

  \item{silent}{Logical. Whether the calculating process
  should be shown or not, default is \code{TRUE}.}
}
\value{
A data frame, each row represents one of the molecules,
each column represents one feature, This function returns
one column named \code{VABC}.
}
\description{
Descriptor that Calculates the Volume of A Molecule
}
\details{
This descriptor calculates the volume of a molecule.
}
\examples{
\dontrun{
mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
extractDrugVABC(mol)}
}
\author{
Nan Xiao <\url{http://www.road2stat.com}>
}
\keyword{VABC}
\keyword{Volume}
\keyword{extractDrugVABC}

