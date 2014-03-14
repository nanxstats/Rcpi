\name{getFASTAFromUniProt}
\alias{getFASTAFromUniProt}
\title{Retrieve Protein Sequence in FASTA Format from the UniProt Database}
\usage{
getFASTAFromUniProt(id, parallel = 5)
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
sequences in FASTA format.
}
\description{
Retrieve Protein Sequence in FASTA Format from the UniProt
Database
}
\details{
This function retrieves protein sequences in FASTA format
from the UniProt database.
}
\examples{
\donttest{
id = c('P00750', 'P00751', 'P00752')
getFASTAFromUniProt(id)}
}
\author{
Nan Xiao <\url{http://www.road2stat.com}>
}
\references{
UniProt. \url{http://www.uniprot.org/}

UniProt REST API Documentation.
\url{http://www.uniprot.org/faq/28}
}
\seealso{
See \code{\link{getSeqFromUniProt}} for retrieving protein
represented by amino acid sequence from the UniProt
database. See \code{\link{readFASTA}} for reading FASTA
format files.
}
\keyword{UniProt}
\keyword{getFASTAFromUniProt}
\keyword{getProt}

