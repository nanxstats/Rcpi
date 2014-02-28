\name{getPPI}
\alias{getPPI}
\title{Generating Protein-Protein Interaction Descriptors}
\usage{
getPPI(protmat1, protmat2, type = c("combine", "tensorprod", "entrywise"))
}
\arguments{
  \item{protmat1}{The first protein descriptor matrix, must
  have the same ncol with \code{protmat2}.}

  \item{protmat2}{The second protein descriptor matrix,
  must have the same ncol with \code{protmat1}.}

  \item{type}{The interaction type, one or more of
  \code{"combine"}, \code{"tensorprod"}, and
  \code{"entrywise"}.}
}
\value{
A matrix containing the protein-protein interaction
descriptors
}
\description{
Generating Protein-Protein Interaction Descriptors
}
\details{
This function calculates the protein-protein interaction
descriptors by three types of interaction: \itemize{ \item
\code{combine} - combine the two descriptor matrix, result
has \code{(p + p)} columns \item \code{tensorprod} -
calculate column-by-column (pseudo)-tensor product type
interactions, result has \code{(p * p)} columns \item
\code{entrywise} - calculate entrywise product and
entrywise sum of the two matrices, then combine them,
result has \code{(p + p)} columns }
}
\examples{
x = matrix(1:10, ncol = 2)
y = matrix(5:14, ncol = 2)

getPPI(x, y, type = 'combine')
getPPI(x, y, type = 'tensorprod')
getPPI(x, y, type = 'entrywise')
getPPI(x, y, type = c('combine', 'tensorprod'))
getPPI(x, y, type = c('combine', 'entrywise'))
getPPI(x, y, type = c('entrywise', 'tensorprod'))
getPPI(x, y, type = c('combine', 'entrywise', 'tensorprod'))
}
\author{
Nan Xiao <\url{http://www.road2stat.com}>
}
\seealso{
See \code{\link{getCPI}} for generating compound-protein
interaction descriptors.
}
\keyword{getPPI}
\keyword{interaction}
\keyword{ppi}
\keyword{protein-protein}

