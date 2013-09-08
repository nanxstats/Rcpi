\name{getPDBFromRCSBPDB}
\alias{getPDBFromRCSBPDB}
\title{Retrieve Protein Sequence in PDB Format from RCSB PDB}
\usage{
  getPDBFromRCSBPDB(id, parallel = 5)
}
\arguments{
  \item{id}{A character vector, as the protein ID.}

  \item{parallel}{An integer, the parallel parameter,
  indicates how many process the user would like to use for
  retrieving the data (using RCurl), default is \code{5}.
  For regular cases, we recommend a number less than
  \code{20}.}
}
\value{
  A list, each component contains one of the protein
  sequences in PDB format.
}
\description{
  Retrieve Protein Sequence in PDB Format from RCSB PDB
}
\details{
  This function retrieves protein sequences in PDB format
  from RCSB PDB.
}
\examples{
\dontrun{
id = c('4HHB', '4FF9')
getPDBFromRCSBPDB(id)}
}
\author{
  Xiao Nan <\url{http://www.road2stat.com}>
}
\seealso{
  See \code{\link{getSeqFromRCSBPDB}} for retrieving
  protein represented by amino acid sequence from the RCSB
  PDB database.
}
\keyword{getPDBFromRCSBPDB}
\keyword{getProt}
\keyword{PDB}

