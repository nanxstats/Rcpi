\name{extractDrugAutocorrelationPolarizability}
\alias{extractDrugAutocorrelationPolarizability}
\title{Calculates the Moreau-Broto Autocorrelation Descriptors using Polarizability}
\usage{
  extractDrugAutocorrelationPolarizability(molecules,
    silent = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

  \item{silent}{Logical. Whether the calculating process
  should be shown or not, default is \code{TRUE}.}
}
\value{
  A data frame, each row represents one of the molecules,
  each column represents one feature, This function returns
  5 columns named \code{ATSp1}, \code{ATSp2}, \code{ATSp3},
  \code{ATSp4}, \code{ATSp5}.
}
\description{
  Calculates the Moreau-Broto Autocorrelation Descriptors
  using Polarizability
}
\details{
  Calculates the ATS autocorrelation descriptor using
  polarizability.
}
\examples{
\dontrun{
mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
extractDrugAutocorrelationPolarizability(mol)}
}
\author{
  Xiao Nan <\url{http://www.road2stat.com}>
}
\keyword{Autocorrelation}
\keyword{extractDrugAutocorrelationPolarizability}
\keyword{Polarizability}

