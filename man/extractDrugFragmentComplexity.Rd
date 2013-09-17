\name{extractDrugFragmentComplexity}
\alias{extractDrugFragmentComplexity}
\title{Calculate Complexity of a System}
\usage{
  extractDrugFragmentComplexity(molecules, silent = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

  \item{silent}{Logical. Whether the calculating process
  should be shown or not, default is \code{TRUE}.}
}
\value{
  A data frame, each row represents one of the molecules,
  each column represents one feature, This function returns
  one column named \code{fragC}.
}
\description{
  Calculate Complexity of a System
}
\details{
  This descriptor calculates the complexity of a system.
  The complexity is defined in Nilakantan, R. et al. as:
  \deqn{C = abs(B^2 - A^2 + A) + frac{H}{100}} where C is
  complexity, A is the number of non-hydrogen atoms, B is
  the number of bonds and H is the number of heteroatoms.
}
\examples{
\dontrun{
mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
extractDrugFragmentComplexity(mol)}
}
\author{
  Xiao Nan <\url{http://www.road2stat.com}>
}
\references{
  Nilakantan, R. and Nunn, D.S. and Greenblatt, L. and
  Walker, G. and Haraki, K. and Mobilio, D., A family of
  ring system-based structural fragments for use in
  structure-activity studies: database mining and recursive
  partitioning., Journal of chemical information and
  modeling, 2006, 46:1069-1077
}
\keyword{Complexity}
\keyword{extractDrugFragmentComplexity}
\keyword{Fragment}

