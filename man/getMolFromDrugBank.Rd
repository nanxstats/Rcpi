\name{getMolFromDrugBank}
\alias{getMolFromDrugBank}
\title{Retrieve Drug Molecules in MOL Format from the DrugBank Database}
\usage{
  getMolFromDrugBank(id, parallel = 5)
}
\arguments{
  \item{id}{A character vector, as the DrugBank drug ID.}

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
  Retrieve Drug Molecules in MOL Format from the DrugBank
  Database
}
\details{
  This function retrieves drug molecules in MOL format from
  the DrugBank database.
}
\examples{
\dontrun{
id = 'DB00859'  # Penicillamine
getMolFromDrugBank(id)}
}
\author{
  Xiao Nan <\url{http://www.road2stat.com}>
}
\seealso{
  See \code{\link{getSmiFromDrugBank}} for retrieving drug
  molecules in SMILES format from the DrugBank database.
}
\keyword{DrugBank}
\keyword{getDrug}
\keyword{getMolFromDrugBank}

