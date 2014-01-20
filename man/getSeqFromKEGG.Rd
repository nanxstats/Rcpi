\name{getSeqFromKEGG}
\alias{getSeqFromKEGG}
\title{Retrieve Protein Sequence from the KEGG Database}
\usage{
getSeqFromKEGG(id, parallel = 5)
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
Retrieve Protein Sequence from the KEGG Database
}
\details{
This function retrieves protein represented by amino acid
sequence from the KEGG database.
}
\examples{
\dontrun{
id = c('hsa:10161', 'hsa:10162')
getSeqFromKEGG(id)}
}
\author{
Nan Xiao <\url{http://www.road2stat.com}>
}
\seealso{
See \code{\link{getFASTAFromKEGG}} for retrieving protein
sequence in FASTA format from the KEGG database.
}
\keyword{KEGG}
\keyword{getProt}
\keyword{getSeqFromKEGG}

