\name{extractDrugShortestPathComplete}
\alias{extractDrugShortestPathComplete}
\title{Calculate the Shortest Path Molecular Fingerprints (in Complete Format)}
\usage{
extractDrugShortestPathComplete(molecules, depth = 6, size = 1024,
  silent = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

  \item{depth}{The search depth. Default is \code{6}.}

  \item{size}{The length of the fingerprint bit string.
  Default is \code{1024}.}

  \item{silent}{Logical. Whether the calculating process
  should be shown or not, default is \code{TRUE}.}
}
\value{
An integer vector or a matrix. Each row represents one
molecule, the columns represent the fingerprints.
}
\description{
Calculate the Shortest Path Molecular Fingerprints (in
Complete Format)
}
\details{
Calculate the fingerprint based on the shortest paths
between pairs of atoms and takes into account ring systems,
charges etc.
}
\examples{
\donttest{
smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
mol = readMolFromSmi(smi, type = 'mol')
fp  = extractDrugShortestPathComplete(mol)
dim(fp)}
}
\author{
Nan Xiao <\url{http://www.road2stat.com}>
}
\seealso{
\link{extractDrugShortestPath}
}
\keyword{extractDrugShortestPathComplete}

