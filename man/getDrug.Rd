\name{getDrug}
\alias{getDrug}
\title{Retrieve Drug Molecules in MOL and SMILES Format from Databases}
\usage{
  getDrug(id,
    from = c("pubchem", "chembl", "cas", "kegg", "drugbank"),
    type = c("mol", "smile"), parallel = 5)
}
\arguments{
  \item{id}{A character vector, as the drug ID(s).}

  \item{from}{The database, one of \code{'pubchem'},
  \code{'chembl'}, \code{'cas'}, \code{'kegg'},
  \code{'drugbank'}.}

  \item{type}{The returned molecule format, \code{mol} or
  \code{smile}.}

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
  Retrieve Drug Molecules in MOL and SMILES Format from
  Databases
}
\details{
  This function retrieves drug molecules in MOL and SMILES
  format from the five databases.
}
\examples{
\dontrun{
id = c('DB00859', 'DB00860')
getDrug(id, 'drugbank', 'smile')}
}
\author{
  Xiao Nan <\url{http://www.road2stat.com}>
}
\seealso{
  See \code{\link{getProt}} for retrieving protein
  sequences from the databases.
}
\keyword{getDrug}

