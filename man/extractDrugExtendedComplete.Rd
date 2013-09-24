\name{extractDrugExtendedComplete}
\alias{extractDrugExtendedComplete}
\title{Calculate the Extended Molecular Fingerprints (in Complete Format)}
\usage{
  extractDrugExtendedComplete(molecules, depth = 6,
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
  An integer vector or a matrix. Each row represents one
  molecule, the columns represent the fingerprints.
}
\description{
  Calculate the Extended Molecular Fingerprints (in
  Complete Format)
}
\details{
  Calculate the extended molecular fingerprints. Considers
  paths of a given length, similar to the standard type,
  but takes rings and atomic properties into account into
  account. This is hashed fingerprints, with a default
  length of 1024.
}
\examples{
\dontrun{
smiles = c('CCC', 'CCN', 'CCN(C)(C)', 'c1ccccc1Cc1ccccc1','C1CCC1CC(CN(C)(C))CC(=O)CC')
mols = parse.smiles(smiles)
extractDrugExtendedComplete(mols)
extractDrugExtendedComplete(mols[[1]])}
}
\author{
  Xiao Nan <\url{http://www.road2stat.com}>
}
\seealso{
  \link{extractDrugExtended}
}
\keyword{extractDrugExtendedComplete}

