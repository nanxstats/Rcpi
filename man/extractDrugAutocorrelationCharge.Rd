\name{extractDrugAutocorrelationCharge}
\alias{extractDrugAutocorrelationCharge}
\title{Calculates the Moreau-Broto Autocorrelation Descriptors using Partial Charges}
\usage{
extractDrugAutocorrelationCharge(molecules, silent = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

  \item{silent}{Logical. Whether the calculating process
  should be shown or not, default is \code{TRUE}.}
}
\value{
A data frame, each row represents one of the molecules,
each column represents one feature, This function returns 5
columns named \code{ATSc1}, \code{ATSc2}, \code{ATSc3},
\code{ATSc4}, \code{ATSc5}.
}
\description{
Calculates the Moreau-Broto Autocorrelation Descriptors
using Partial Charges
}
\details{
Calculates the ATS autocorrelation descriptor, where the
weight equal to the charges.
}
\examples{
\dontrun{
mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
extractDrugAutocorrelationCharge(mol)}
}
\author{
Nan Xiao <\url{http://www.road2stat.com}>
}
\keyword{Autocorrelation}
\keyword{Charge}
\keyword{extractDrugAutocorrelationCharge}

