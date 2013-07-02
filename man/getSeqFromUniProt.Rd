\name{getSeqFromUniProt}
\alias{getSeqFromUniProt}
\title{Get Protein Sequences from UniProt by Protein ID}
\usage{
  getSeqFromUniProt(id, parallel = 5)
}
\arguments{
  \item{id}{A character vector, as the protein ID(s).}

  \item{parallel}{The parallel threads, default is 5.}
}
\value{
  A list, each component contains one of the protein
  sequences.
}
\description{
  Get Protein Sequences from UniProt by Protein ID
}
\details{
  This function get protein sequences from uniprot.org by
  protein ID(s).
}
\examples{
ids = c('P00750', 'P00751', 'P00752')
\dontrun{getSeqFromUniProt(ids, parallel = 3)}
}
\author{
  Xiao Nan <\url{http://www.road2stat.com}>
}
\references{
  UniProt. \url{http://www.uniprot.org/}

  UniProt REST API Documentation.
  \url{http://www.uniprot.org/faq/28}
}
\seealso{
  See \code{\link{getFASTAFromUniProt}} for reading FASTA
  format files.
}
\keyword{getSeqFromUniProt}
\keyword{UniProt}

