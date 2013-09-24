\name{extractDrugShortestPath}
\alias{extractDrugShortestPath}
\title{Calculate the Shortest Path Molecular Fingerprints (in Compact Format)}
\usage{
  extractDrugShortestPath(molecules, depth = 6,
    size = 1024, silent = TRUE)
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
  each element in the component represents the index of
  which element in the fingerprint is 1. Each component's
  name is the length of the fingerprints.
}
\description{
  Calculate the Shortest Path Molecular Fingerprints (in
  Compact Format)
}
\details{
  Calculate the fingerprint based on the shortest paths
  between pairs of atoms and takes into account ring
  systems, charges etc.
}
\examples{
\dontrun{
smiles = c('CCC', 'CCN', 'CCN(C)(C)', 'c1ccccc1Cc1ccccc1','C1CCC1CC(CN(C)(C))CC(=O)CC')
mols = parse.smiles(smiles)
extractDrugShortestPath(mols)
extractDrugShortestPath(mols[[1]])}
}
\author{
  Xiao Nan <\url{http://www.road2stat.com}>
}
\seealso{
  \link{extractDrugShortestPathComplete}
}
\keyword{extractDrugShortestPath}

