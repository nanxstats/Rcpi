\name{getSeqFromRCSBPDB}
\alias{getSeqFromRCSBPDB}
\title{Retrieve Protein Sequence from RCSB PDB}
\usage{
  getSeqFromRCSBPDB(id, parallel = 5)
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
  represented by amino acid sequence(s).
}
\description{
  Retrieve Protein Sequence from RCSB PDB
}
\details{
  This function retrieves protein sequences from RCSB PDB.
}
\examples{
\dontrun{
id = c('4HHB', '4FF9')
getSeqFromRCSBPDB(id)}
}
\author{
  Xiao Nan <\url{http://www.road2stat.com}>
}
\seealso{
  See \code{\link{getPDBFromRCSBPDB}} for retrieving
  protein in PDB format from the RCSB PDB database.
}
\keyword{getProt}
\keyword{getSeqFromRCSBPDB}
\keyword{PDB}

