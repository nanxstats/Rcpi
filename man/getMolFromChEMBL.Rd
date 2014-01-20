\name{getMolFromChEMBL}
\alias{getMolFromChEMBL}
\title{Retrieve Drug Molecules in MOL Format from the ChEMBL Database}
\usage{
getMolFromChEMBL(id, parallel = 5)
}
\arguments{
  \item{id}{A character vector, as the ChEMBL drug ID.}

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
Retrieve Drug Molecules in MOL Format from the ChEMBL
Database
}
\details{
This function retrieves drug molecules in MOL format from
the ChEMBL database.
}
\examples{
\dontrun{
id = 'CHEMBL1430'  # Penicillamine
getMolFromChEMBL(id)}
}
\author{
Nan Xiao <\url{http://www.road2stat.com}>
}
\seealso{
See \code{\link{getSmiFromChEMBL}} for retrieving drug
molecules in SMILES format from the ChEMBL database.
}
\keyword{ChEMBL}
\keyword{getDrug}
\keyword{getMolFromChEMBL}

