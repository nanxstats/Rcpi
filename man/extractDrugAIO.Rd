\name{extractDrugAIO}
\alias{extractDrugAIO}
\title{Calculates All the Molecular Descriptors in the Rcpi Package at Once}
\usage{
extractDrugAIO(molecules, silent = TRUE, warn = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

  \item{silent}{Logical. Whether the calculating process
  should be shown or not, default is \code{TRUE}.}

  \item{warn}{Logical. Whether the warning about some
  descriptors need the 3D coordinates should be shown or
  not after the calculation, default is \code{TRUE}.}
}
\value{
A data frame, each row represents one of the molecules,
each column represents one descriptor, Currently, this
function returns total 293 descriptors composed of 48
descriptor types.
}
\description{
Calculates All the Molecular Descriptors in the Rcpi
Package at Once
}
\details{
This function calculates all the molecular descriptors in
the Rcpi package at once.
}
\note{
Note that we need 3-D coordinates of the molecules to
calculate some of the descriptors, if not provided, these
descriptors values will be \code{NA}.
}
\examples{
\dontrun{
sdf = system.file('sysdata/OptAA3d.sdf', package = 'Rcpi')
mol = readMolFromSDF(sdf)
descmat = extractDrugAIO(mol, warn = FALSE)}
}
\author{
Nan Xiao <\url{http://www.road2stat.com}>
}
\keyword{extractDrugAIO}

