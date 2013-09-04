\name{getMolFromCAS}
\alias{getMolFromCAS}
\title{Retrieve Drug Molecules in InChI Format from the CAS Database}
\usage{
  getMolFromCAS(id, parallel = 5)
}
\arguments{
  \item{id}{A character vector, as the CAS drug ID.}

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
  Retrieve Drug Molecules in InChI Format from the CAS
  Database
}
\details{
  This function retrieves drug molecules in InChI format
  from the CAS database. CAS database only provides InChI
  data, so here we return the molecule in InChI format,
  users could convert them to SMILES format using Open
  Babel (\url{http://openbabel.org/}) or other third-party
  tools.
}
\examples{
\dontrun{
id = '52-67-5'  # Penicillamine
getMolFromCAS(id)}
}
\author{
  Xiao Nan <\url{http://www.road2stat.com}>
}
\seealso{
  See \code{\link{getDrug}} for retrieving drug molecules
  in MOL and SMILES Format from other databases.
}
\keyword{CAS}
\keyword{getDrug}
\keyword{getMolFromCAS}

