\name{extractDrugBondCount}
\alias{extractDrugBondCount}
\title{Calculates the Descriptor Based on the Number of Bonds of a Certain Bond Order}
\usage{
extractDrugBondCount(molecules, silent = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

  \item{silent}{Logical. Whether the calculating process
  should be shown or not, default is \code{TRUE}.}
}
\value{
A data frame, each row represents one of the molecules,
each column represents one feature, This function returns
one column named \code{nB}.
}
\description{
Calculates the Descriptor Based on the Number of Bonds of a
Certain Bond Order
}
\details{
Calculates the descriptor based on the number of bonds of a
certain bond order.
}
\examples{
\dontrun{
mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
extractDrugBondCount(mol)}
}
\author{
Nan Xiao <\url{http://www.road2stat.com}>
}
\keyword{Bond}
\keyword{Count}
\keyword{extractDrugBondCount}

