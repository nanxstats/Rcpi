\name{extractDrugPubChem}
\alias{extractDrugPubChem}
\title{Calculate the PubChem Molecular Fingerprints (in Compact Format)}
\usage{
  extractDrugPubChem(molecules, silent = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

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
  Calculate the PubChem Molecular Fingerprints (in Compact
  Format)
}
\details{
  Calculate the 881 bit fingerprints defined by PubChem.
}
\examples{
\dontrun{
smiles = c('CCC', 'CCN', 'CCN(C)(C)', 'c1ccccc1Cc1ccccc1','C1CCC1CC(CN(C)(C))CC(=O)CC')
mols = parse.smiles(smiles)
extractDrugPubChem(mols)
extractDrugPubChem(mols[[1]])}
}
\author{
  Xiao Nan <\url{http://www.road2stat.com}>
}
\seealso{
  \link{extractDrugPubChemComplete}
}
\keyword{extractDrugPubChem}

