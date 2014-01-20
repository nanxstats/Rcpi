\name{getCPI}
\alias{getCPI}
\title{Generating Compound-Protein Interaction Features}
\usage{
getCPI(drugmat, protmat, type = c("combine", "tensorprod"))
}
\arguments{
  \item{drugmat}{The compound feature matrix.}

  \item{protmat}{The protein feture matrix.}

  \item{type}{The interaction type, one or two of
  \code{"combine"} and \code{"tensorprod"}.}
}
\value{
A matrix containing the compound-protein interaction
features.
}
\description{
Generating Compound-Protein Interaction Features
}
\details{
This function calculates the compound-protein interaction
features by three types of interaction: \itemize{ \item
\code{combine} - combine the two feature matrix, result has
\code{(p1 + p2)} columns; \item \code{tensorprod} -
calculate column-by-column (pseudo)-tensor product type
interactions, result has \code{(p1 * p2)} columns; }
}
\examples{
x = matrix(1:10, ncol = 2)
y = matrix(1:15, ncol = 3)

getCPI(x, y, 'combine')
getCPI(x, y, 'tensorprod')
getCPI(x, y, type = c('combine', 'tensorprod'))
getCPI(x, y, type = c('tensorprod', 'combine'))
}
\author{
Nan Xiao <\url{http://www.road2stat.com}>
}
\seealso{
See \code{\link{getPPI}} for generating protein-protein
interaction features.
}
\keyword{compound-protein}
\keyword{cpi}
\keyword{getCPI}
\keyword{interaction}

