\name{extractDrugMACCS}
\alias{extractDrugMACCS}
\title{Calculate the MACCS Molecular Fingerprints (in Compact Format)}
\usage{
extractDrugMACCS(molecules, silent = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

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
Calculate the MACCS Molecular Fingerprints (in Compact
Format)
}
\details{
The popular 166 bit MACCS keys described by MDL.
}
\examples{
\dontrun{
smiles = c('CCC', 'CCN', 'CCN(C)(C)', 'c1ccccc1Cc1ccccc1','C1CCC1CC(CN(C)(C))CC(=O)CC')
mols = parse.smiles(smiles)
extractDrugMACCS(mols)
extractDrugMACCS(mols[[1]])}
}
\author{
Nan Xiao <\url{http://www.road2stat.com}>
}
\seealso{
\link{extractDrugMACCSComplete}
}
\keyword{extractDrugMACCS}

