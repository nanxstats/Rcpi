\name{extractDrugXLogP}
\alias{extractDrugXLogP}
\title{Descriptor that Calculates the Prediction of logP Based on the Atom-Type Method Called XLogP}
\usage{
extractDrugXLogP(molecules, silent = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

  \item{silent}{Logical. Whether the calculating process
  should be shown or not, default is \code{TRUE}.}
}
\value{
A data frame, each row represents one of the molecules,
each column represents one feature, This function returns
one column named \code{XLogP}.
}
\description{
Descriptor that Calculates the Prediction of logP Based on
the Atom-Type Method Called XLogP
}
\details{
Prediction of logP based on the atom-type method called
XLogP.
}
\examples{
\dontrun{
mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
extractDrugXLogP(mol)}
}
\author{
Nan Xiao <\url{http://www.road2stat.com}>
}
\references{
Wang, R., Fu, Y., and Lai, L., A New Atom-Additive Method
for Calculating Partition Coefficients, Journal of Chemical
Information and Computer Sciences, 1997, 37:615-621.

Wang, R., Gao, Y., and Lai, L., Calculating partition
coefficient by atom-additive method, Perspectives in Drug
Discovery and Design, 2000, 19:47-66.
}
\keyword{XLogP}
\keyword{extractDrugXLogP}

