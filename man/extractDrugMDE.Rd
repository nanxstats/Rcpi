\name{extractDrugMDE}
\alias{extractDrugMDE}
\title{Calculate Molecular Distance Edge (MDE) Descriptors for C, N and O}
\usage{
  extractDrugMDE(molecules, silent = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

  \item{silent}{Logical. Whether the calculating process
  should be shown or not, default is \code{TRUE}.}
}
\value{
  A data frame, each row represents one of the molecules,
  each column represents one feature, This function returns
  one column named \code{nAtomLAC}.
}
\description{
  Calculate Molecular Distance Edge (MDE) Descriptors for
  C, N and O
}
\details{
  This descriptor calculates the 10 molecular distance edge
  (MDE) descriptor described in Liu, S., Cao, C., & Li, Z,
  and in addition it calculates variants where O and N are
  considered.
}
\examples{
\dontrun{
mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
extractDrugMDE(mol)}
}
\author{
  Xiao Nan <\url{http://www.road2stat.com}>
}
\references{
  Liu, S., Cao, C., & Li, Z. (1998). Approach to estimation
  and prediction for normal boiling point (NBP) of alkanes
  based on a novel molecular distance-edge (MDE) vector,
  lambda. Journal of chemical information and computer
  sciences, 38(3), 387-394.
}
\keyword{Distance}
\keyword{Edge}
\keyword{extractDrugMDE}
\keyword{MDE}
\keyword{Molecular}

