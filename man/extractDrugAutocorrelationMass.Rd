\name{extractDrugAutocorrelationMass}
\alias{extractDrugAutocorrelationMass}
\title{Calculates the Moreau-Broto Autocorrelation Descriptors using Atomic Weight}
\usage{
  extractDrugAutocorrelationMass(molecules, silent = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

  \item{silent}{Logical. Whether the calculating process
  should be shown or not, default is \code{TRUE}.}
}
\value{
  A data frame, each row represents one of the molecules,
  each column represents one feature, This function returns
  5 columns named \code{ATSm1}, \code{ATSm2}, \code{ATSm3},
  \code{ATSm4}, \code{ATSm5}.
}
\description{
  Calculates the Moreau-Broto Autocorrelation Descriptors
  using Atomic Weight
}
\details{
  Calculates the ATS autocorrelation descriptor, where the
  weight equal to the scaled atomic mass.
}
\examples{
\dontrun{
mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
extractDrugAutocorrelationMass(mol)}
}
\author{
  Xiao Nan <\url{http://www.road2stat.com}>
}
\references{
  Moreau, Gilles, and Pierre Broto. The autocorrelation of
  a topological structure: a new molecular descriptor.
  Nouv. J. Chim 4 (1980): 359-360.
}
\keyword{Autocorrelation}
\keyword{extractDrugAutocorrelationMass}
\keyword{Mass}

