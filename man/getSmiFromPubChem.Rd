\name{getSmiFromPubChem}
\alias{getSmiFromPubChem}
\title{Retrieve Drug Molecules in SMILES Format from the PubChem Database}
\usage{
  getSmiFromPubChem(id, parallel = 5)
}
\arguments{
  \item{id}{A character vector, as the PubChem drug ID.}

  \item{parallel}{An integer, the parallel parameter,
  indicates how many process the user would like to use for
  retrieving the data (using RCurl), default is \code{5}.
  For regular cases, we recommend a number less than
  \code{20}.}
}
\value{
  A length of \code{id} character vector, each element
  containing the corresponding drug molecule.
}
\description{
  Retrieve Drug Molecules in SMILES Format from the PubChem
  Database
}
\details{
  This function retrieves drug molecules in SMILES format
  from the PubChem database.
}
\examples{
\dontrun{
id = c('7847562', '7847563')  # Penicillamine
getSmiFromPubChem(id)}
}
\author{
  Xiao Nan <\url{http://www.road2stat.com}>
}
\seealso{
  See \code{\link{getMolFromPubChem}} for retrieving drug
  molecules in MOL format from the PubChem database.
}
\keyword{getDrug}
\keyword{getSmiFromPubChem}
\keyword{PubChem}

