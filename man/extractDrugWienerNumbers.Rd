\name{extractDrugWienerNumbers}
\alias{extractDrugWienerNumbers}
\title{Descriptor that Calculates Wiener Path Number and Wiener Polarity Number}
\usage{
  extractDrugWienerNumbers(molecules, silent = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

  \item{silent}{Logical. Whether the calculating process
  should be shown or not, default is \code{TRUE}.}
}
\value{
  A data frame, each row represents one of the molecules,
  each column represents one feature, This function returns
  two columns named \code{WPATH} (weiner path number) and
  \code{WPOL} (weiner polarity number).
}
\description{
  Descriptor that Calculates Wiener Path Number and Wiener
  Polarity Number
}
\details{
  This descriptor calculates the Wiener numbers, including
  the Wiener Path number and the Wiener Polarity Number.
  Wiener path number: half the sum of all the distance
  matrix entries; Wiener polarity number: half the sum of
  all the distance matrix entries with a value of 3.
}
\examples{
\dontrun{
mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
extractDrugWienerNumbers(mol)}
}
\author{
  Xiao Nan <\url{http://www.road2stat.com}>
}
\references{
  Wiener, H. (1947). Structural determination of paraffin
  boiling points. Journal of the American Chemical Society,
  69(1), 17-20.
}
\keyword{extractDrugWienerNumbers}
\keyword{Numbers}
\keyword{Wiener}

