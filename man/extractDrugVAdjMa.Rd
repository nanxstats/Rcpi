\name{extractDrugVAdjMa}
\alias{extractDrugVAdjMa}
\title{Descriptor that Calculates the Vertex Adjacency Information of A Molecule}
\usage{
extractDrugVAdjMa(molecules, silent = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

  \item{silent}{Logical. Whether the calculating process
  should be shown or not, default is \code{TRUE}.}
}
\value{
A data frame, each row represents one of the molecules,
each column represents one feature, This function returns
one column named \code{VAdjMat}.
}
\description{
Descriptor that Calculates the Vertex Adjacency Information
of A Molecule
}
\details{
Vertex adjacency information (magnitude): \eqn{1 +
\log_2^m} where \eqn{m} is the number of heavy-heavy bonds.
If \eqn{m} is zero, then \code{0} is returned.
}
\examples{
\dontrun{
mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
extractDrugVAdjMa(mol)}
}
\author{
Nan Xiao <\url{http://www.road2stat.com}>
}
\keyword{Adjacency}
\keyword{Magnitude}
\keyword{Vertex}
\keyword{extractDrugVAdjMa}

