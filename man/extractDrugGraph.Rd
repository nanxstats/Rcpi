\name{extractDrugGraph}
\alias{extractDrugGraph}
\title{Calculate the Graph Molecular Fingerprints (in Compact Format)}
\usage{
extractDrugGraph(molecules, depth = 6, size = 1024, silent = TRUE)
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
A list, each component represents one of the molecules,
each element in the component represents the index of which
element in the fingerprint is 1. Each component's name is
the length of the fingerprints.
}
\description{
Calculate the Graph Molecular Fingerprints (in Compact
Format)
}
\details{
Calculate the graph molecular fingerprints. Similar to the
standard type by simply considers connectivity. This is
hashed fingerprints, with a default length of 1024.
}
\examples{
\donttest{
smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
mol = readMolFromSmi(smi, type = 'mol')
fp  = extractDrugGraph(mol)
head(fp)}
}
\author{
Nan Xiao <\url{http://www.road2stat.com}>
}
\seealso{
\link{extractDrugGraphComplete}
}
\keyword{extractDrugGraph}

