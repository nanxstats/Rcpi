\name{extractProtCTDT}
\alias{extractProtCTDT}
\title{CTD Descriptors - Transition}
\usage{
  extractProtCTDT(x)
}
\arguments{
  \item{x}{A character vector, as the input protein
  sequence.}
}
\value{
  A length 21 named vector
}
\description{
  CTD Descriptors - Transition
}
\details{
  This function calculates the Transition descriptor of the
  CTD descriptors (Dim: 21).
}
\examples{
x = readFASTA(system.file('protseq/P00750.fasta', package = 'Rcpi'))[[1]]
extractProtCTDT(x)
}
\author{
  Xiao Nan <\url{http://www.road2stat.com}>
}
\references{
  Inna Dubchak, Ilya Muchink, Stephen R. Holbrook and
  Sung-Hou Kim. Prediction of protein folding class using
  global description of amino acid sequence.
  \emph{Proceedings of the National Academy of Sciences}.
  USA, 1995, 92, 8700-8704.

  Inna Dubchak, Ilya Muchink, Christopher Mayor, Igor
  Dralyuk and Sung-Hou Kim. Recognition of a Protein Fold
  in the Context of the SCOP classification.
  \emph{Proteins: Structure, Function and Genetics}, 1999,
  35, 401-407.
}
\seealso{
  See \code{\link{extractProtCTDC}} and
  \code{\link{extractProtCTDD}} for Composition and
  Distribution of the CTD descriptors.
}
\keyword{CTD}
\keyword{CTDT}
\keyword{extract}
\keyword{extractProtCTDT}
\keyword{Transition}

