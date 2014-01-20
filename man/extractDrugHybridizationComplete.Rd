\name{extractDrugHybridizationComplete}
\alias{extractDrugHybridizationComplete}
\title{Calculate the Hybridization Molecular Fingerprints (in Complete Format)}
\usage{
extractDrugHybridizationComplete(molecules, depth = 6, size = 1024,
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
Calculate the Hybridization Molecular Fingerprints (in
Complete Format)
}
\details{
Calculate the hybridization molecular fingerprints. Similar
to the standard type, but only consider hybridization
state. This is hashed fingerprints, with a default length
of 1024.
}
\examples{
\dontrun{
smiles = c('CCC', 'CCN', 'CCN(C)(C)', 'c1ccccc1Cc1ccccc1','C1CCC1CC(CN(C)(C))CC(=O)CC')
mols = parse.smiles(smiles)
extractDrugHybridizationComplete(mols)
extractDrugHybridizationComplete(mols[[1]])}
}
\author{
Nan Xiao <\url{http://www.road2stat.com}>
}
\seealso{
\link{extractDrugHybridization}
}
\keyword{extractDrugHybridizationComplete}

